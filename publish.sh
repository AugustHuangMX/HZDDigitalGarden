#!/bin/bash

# 加载系统路径，确保 cron 能找到所有命令
export PATH=/opt/homebrew/bin:/usr/local/bin:$PATH

# --- 配置区 ---
# 定义日志文件路径
LOG_FILE="/Users/huangminxing/Developer/quartz/publish.log"
# 定义项目根目录
PROJECT_DIR="/Users/huangminxing/Developer/quartz"
# --- 配置结束 ---

# --- 函数：记录日志并打印 ---
log() {
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $1" | tee -a "$LOG_FILE"
}

log "====== 开始执行自动发布任务 ======"

# 进入项目目录
cd "$PROJECT_DIR" || { log "错误：无法进入项目目录 $PROJECT_DIR"; exit 1; }

log "✅ 步骤 1/3: 开始同步笔记文件..."
rsync -avh --delete \
--exclude '.obsidian' \
--exclude '.smart-env' \
--exclude '.DS_Store' \
--exclude '.sync' \
--exclude 'copilot' \
--exclude 'templates' \
/Users/huangminxing/Documents/MyNotes/ \
/Users/huangminxing/Developer/quartz/content/ >> "$LOG_FILE" 2>&1
log "笔记同步完成。"

log "✅ 步骤 2/3: 开始处理和索引内容..."
npx quartz sync >> "$LOG_FILE" 2>&1
log "内容处理完成。"

log "✅ 步骤 3/3: 开始上传到 GitHub..."
git add . >> "$LOG_FILE" 2>&1
COMMIT_MESSAGE="Automated site update: $(date +'%Y-%m-%d %H:%M:%S')"
git commit -m "$COMMIT_MESSAGE" >> "$LOG_FILE" 2>&1
git push >> "$LOG_FILE" 2>&1
log "🚀 成功推送到 GitHub！"

log "====== 自动发布任务执行完毕 ======"
