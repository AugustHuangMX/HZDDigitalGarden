import { QuartzComponent, QuartzComponentConstructor } from "./types"

export default (() => {
  const VercelAnalytics: QuartzComponent = () => {
    return (
      <>
        <script
          dangerouslySetInnerHTML={{
            __html: `
              window.va = window.va || function () { (window.vaq = window.vaq || []).push(arguments); };
            `,
          }}
        />
        <script defer src="https://cdn.vercel-insights.com/v1/script.js" />
      </>
    )
  }

  VercelAnalytics.displayName = "VercelAnalytics"
  return VercelAnalytics
}) satisfies QuartzComponentConstructor