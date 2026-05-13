EC484 Econometrics

Wi nter Term , 2025 /26

Va ss i l i s H aj i va ss i l i o u

De pa rt m e nt of Eco n o m i cs , LS E

Bασ ´ιληςXατ ζηβασιλε ´ιoυ

BAΣIΛHΣ XAT ZHBAΣIΛEIOY

# EC484 Econometrics Winter Term, 2025/26

Dr Vassilis Hajivassiliou Department of Economics, LSE

Lecture Slides (and Extended Notes) (This version: March 19, 2026 )

D a ta a re u s u a l l y d raw n i n o n e of t h e fo l l owi n g sett i n gs ( a t l ea st i n i n t ro d u ctory eco n o m et ri cs) :

 c ross sectio n : o bse rvat i o n s o n $n$ e n t i t i es d raw n a t a give n p o i n t i n t i m e ,

$$
\{(y _ {i}, x _ {i}): i = 1, \dots , N \}
$$

 ti m e se ries : o bse rva t i o n s o n a n e n t ity d rawn a t $T$ p o i n ts i n t i m e ,

$$
\{(y _ {t}, x _ {t}): t = 1, \dots , T \}
$$

 pa nel : o bse rvat i o n s o n $N$ e n t i t i es d raw n a t $T$ p o i n ts i n t i m e ,

$$
\{(y _ {i t}, x _ {i t}): i = 1, \dots , N; t = 1, \dots , T \}
$$

N ote t h a t t h ese sets of d a ta ( i . e . d a ta sets ! ) ca n a l l b e i n d exed u s i n g t h e sa m e ge n e ra l n ota t i o n ,

$$
\{(y _ {s}, x _ {s}): s = 1, \dots , S \}
$$

# Regression Esti mators - Li near M odels

Est i m a tors for L i n ea r Reg ress i o n   

<table><tr><td>Estimator</td><td>Notation</td></tr><tr><td>1.</td><td>βOLS</td></tr><tr><td>2.</td><td>βLAD</td></tr><tr><td>3.</td><td>βLstar</td></tr><tr><td>4.</td><td>βGMM</td></tr><tr><td>5a.</td><td>βIGLS</td></tr><tr><td>5b.</td><td>βFGLS</td></tr><tr><td>6.</td><td>βMLE</td></tr><tr><td>7.</td><td>βIVE</td></tr></table>

# Regression Esti mators - N on l i near M odels

Est i m a tors for N o n l i n ea r Reg ress i o n   

<table><tr><td>Estimator</td><td>Notation</td></tr><tr><td>1.</td><td>βNLLS</td></tr><tr><td>2.</td><td>βNLLAD</td></tr><tr><td>3.</td><td>·</td></tr><tr><td>4.</td><td>βGMM</td></tr><tr><td>5a.</td><td>·</td></tr><tr><td>5b.</td><td>βWNLLS</td></tr><tr><td>6.</td><td>βMLE</td></tr><tr><td>7.</td><td>βNLIVE</td></tr></table>

# An Axiomatic Approach A 1–A5

A n Axi o m at i c A p proa c h : A 1-A5   

<table><tr><td>Assumption</td><td>Key Concepts</td></tr><tr><td>A1.</td><td>No perfect multicollinearity among regressors X [rank(X) = k &lt; S]</td></tr><tr><td>A2.</td><td>“True” model linking (y, X, ε) [linear, additively nonlinear, nonadditively nonlinear]</td></tr><tr><td>A3.</td><td>Regressors “exogenous” w.r.t. ε [experimental data vs. observational data]</td></tr><tr><td>A4.</td><td>Properties of VCoV(ε|X) = E(ε - E(ε|X)) (ε - E(ε|X))′|X)</td></tr><tr><td></td><td>[hoskedasticity/heteroskedasticity, (no) autocorrelation, i.i.d., undefined second moments]</td></tr><tr><td>A5.</td><td>Distribution of εi|X</td></tr></table>

# Th ree I m porta nt Acronyms: D G P, M A F E , M A F E+

 T h ree fu n d a m e nta l co n ce pts : D G P, M A F E , M A F E+

– Ac ro nym # 1 . “Tru e” d a ta-ge n e ra t i n g process ( D G P )   
– Ac ro nym $\# 2$ . Ass u m ed m i n i m a l set of co n d i t i o n s for fea s i b i l i ty of est i m a t i o n m et h o d ( M A F E)   
– Ac ro nym # 3 . Ass u m ed m i n i m a l set of co n d it i o n s for fea s i b i l ity of est i m a t i o n m et h od a n d De rivi ng S EV Expressio n ( M A F E+ )

 T h e re i s a d i st i n ct i o n betwee n t h e t ru e D G P a n d t h e a ss u m ed , poss i b ly wro n g , set of m i n i m a l a ss u m pt i o n s n ecessa ry to d efi n e a n est i m a tor for pra ct i ca l u se . We refe r to t h i s M i n i m u m set/s p ec i fi ca t i o n of Ass u m pt i o n s for Fea s i b i l i ty of Est i m a t i o n u s i n g t h e a c ro n y m “ M A F E” .   
 T h e t ru e D G P (or j u st “ D G P” ) co m pri ses a s pec i fi c c h o i ce u n d e r a l l five a ss u m pt i o n s . Wh i l e we a re n ot a lways ta l ki n g a bo u t expe ri m e n ts i n t h e l a bora tory or M o nte Ca rl o se n se , we co u l d t h i n k of t h e D G P a s co m pri s i n g a set of a ss u m pt i o n s t h a t wo u l d a l l ow t h e resea rc h e r to n ot i o n a l l y ge n e ra te t h e give n d a ta fro m a co m p u te r s i m u l a t i o n ( a t l ea st i n pri n c i p l e) .   
 P l ea se n ote t h a t t h e D G P n eed n ot co i n c i d e wit h t h e M A F E a n d we wo u l d refe r to s u c h a d i sc re pa n cy a s a “ m od e l m i s-s pec i fi ca t i o n ” .   
 We fu rt h e r d i st i n gu i s h M A F E fro m M A F E $+$ — t h e m i n i m a l set of a ss u m pt i o n s for fea s i b l e est i m a t i o n and for d e rivi n g t h e S EV express i o n for t h i s est i m a tor M A F E + .

Co n s i d e r a n ava i l a b l e d a ta ext ra ct d e n oted by $\{ y , X \}$ wh e re $y$ i s a n $S \times 1$ vector to be exp l a i n ed a n d $X$ i s a n $S \times k$ m a t rix of exp l a n a tory va ri a b l es .

$$
\text {A s s u m p t i o n} A 1. \quad X \text {i s a n} S \times k \text {m a t r i x w i t h r a n k} k <   S.
$$

 T h e i n t u i t i o n i s t h a t $A 1$ r u l es o u t p e rfect l i n ea r re l a t i o n s h i ps a m o n g exp l a n a tory va ri a b l es .   
 T h e co n seq u e n ce i s t h a t $( X ^ { \prime } X )$ i s p os i t ive d efi n i te a n d t h e refore t h a t $( X ^ { \prime } X ) ^ { - 1 }$ exi sts .   
 T h e res u l t i s t h a t t h e O LS so l u t i o n ( i . e . , to fi tt i n g $y$ ba sed o n a l i n ea r co m b i n a t i o n of t h e co l u m n s of $X$ ) exi sts a n d i s u n i q u e .   
 I n s h ort , $A 1$ i s a n ecessa ry a n d s u ffi c i e n t co n d i t i o n for exi ste n ce a n d u n i q u e n ess of $b _ { O L S } ^ { * }$ wh e re $b _ { O L S } ^ { * } \equiv \arg \ \operatorname* { m i n } _ { b } ( y - X b ) ^ { \prime } ( y - X b )$ for so m e $b$ , a $k \times 1$ vector of coeffi c i e n ts . As we h a ve see n , t h e so l u t i o n of t h i s m i n i m i sa t i o n pro b l e m i s :

$$
b _ {O L S} ^ {*} = (X ^ {\prime} X) ^ {- 1} X ^ {\prime} y
$$

 S u p pose $k = 1$ a n d $x _ { s 1 } = 1$ fo r $s = 1 , . . . , S$ . I n ot h e r word s , co n s i d e r t h e “s i m p l est” ca se of

$$
X = \left[ \begin{array}{l} 1 \\ 1 \\ \vdots \\ 1 \end{array} \right].
$$

 N ote t h a t $A 1$ i m p l i es $S \geq 2$ i n t h i s ca se . F u rt h e r , we h a ve

$$
b _ {O L S} ^ {*} = b _ {1 O L S} ^ {*} = (\iota_ {S} ^ {\prime} \iota_ {S}) ^ {- 1} \iota_ {S} ^ {\prime} y = \frac {1}{S} \sum_ {s = 1} ^ {S} y _ {s} = m e a n _ {s} (y _ {s}) = \bar {y},
$$

w h e re ιS re prese n ts a n $S \times 1$ vector of o n es .

 I t fu rt h e r t u r n s o u t i n t h i s ca se t h a t

$$
b _ {L A D} ^ {*} = b _ {1 L A D} ^ {*} = \arg \min _ {b} \sum_ {s = 1} ^ {S} | y _ {s} - b | = m e d i a n _ {s} (y _ {s}).
$$

Ass u m pt i o n A2linear. $y _ { s } = x _ { s } ^ { \prime } \beta ^ { t r u e } + \varepsilon _ { s } ^ { t r u e }$ + εtrue w i t h $\ ` ( \varepsilon ^ { t r u e } ) = 0 ,$ , fo r $s = 1 , . . . , S$ , wh e re

$\bullet y _ { s }$ i s a sca l a r d e p e n d e n t va ri a b l e ,   
 $x _ { s }$ i s a $k \times 1$ vector of regressors ,   
$\bullet \beta ^ { t r u e }$ i s a $k \times 1$ vector of fixed u n kn own pa ra m ete rs , a n d   
 $\varepsilon ^ { t r u e }$ i s a sto c h a st i c e r ror te r m (w h ose fi rst m o m e n t i s rest ri cted to ze ro) .

 T h e i n t u i t i o n i s t h a t A2 linear se rves a s t h e eco n o m et ri c i a n ’ s a ss u m pt i o n o n t h e n a t u re of t h e “t r u e” d a ta-ge n e ra t i n g pro cess . I n pa rt i c u l a r , A2 linear provi d es a parametric l i n ea r reg ress i o n fra m ewor k l i n k i n g d e p e n d e n t a n d exp l a n a tory va ri a b l es . N o n- l i n ea r va ri a n ts a re :   
 Ass u m pt i o n A2 . additiv ely . nonlinear. general .

$$
y _ {s} = f \left(x _ {s}, \beta^ {\text {t r u e}}\right) + \varepsilon_ {s} ^ {\text {t r u e}}, \text {w i t h} \mathbb {E} \left(\varepsilon^ {\text {t r u e}}\right) = 0; \quad \text {w h e r e} f: \mathbb {R} ^ {2 k} \mapsto \mathbb {R}
$$

fo r $s = 1 , . . . , S$ .

 Ass u m pt i o n A2 . additiv ely . nonlinear. index .

$$
y _ {s} = f \left(x _ {s} ^ {\prime} \beta^ {t r u e}\right) + \varepsilon_ {s} ^ {t r u e}, \text {w i t h} \mathbb {E} \left(\varepsilon^ {t r u e}\right) = 0; \quad \text {w h e r e} f: \mathbb {R} \mapsto \mathbb {R}
$$

fo r $s = 1 , . . . , S$ .

La te r t h i s te rm , we wi l l a l so co n s i d e r t h e m ore co m p l i ca ted ve rs i o n s :

 Ass u m pt i o n A2 . nonadditiv ely . nonlinear. general .

$$
y _ {s} = h \left(x _ {s}, \beta^ {\text {t r u e}}, \varepsilon_ {s} ^ {\text {t r u e}}\right), \text {w i t h} \mathbb {E} \left(\varepsilon^ {\text {t r u e}}\right) = 0; \quad \text {w h e r e} h: \mathbb {R} ^ {2 k} \mapsto \mathbb {R}
$$

fo r $s = 1 , . . . , S$ .

 Ass u m pt i o n A2 . nonadditiv ely . nonlinear. index .

$$
y _ {s} = h (x _ {s} ^ {\prime} \beta^ {t r u e}, \varepsilon_ {s} ^ {t r u e}), \mathrm {w i t h} \mathbb {E} (\varepsilon^ {t r u e}) = 0; \quad \mathrm {w h e r e} h: \mathbb {R} \mapsto \mathbb {R}
$$

fo r $s = 1 , . . . , S$ .

 T h e i m p l i ca t i o n of $A 2$ i s t h a t we o bta i n a m u c h ri c h e r i n te r preta t i o n for t h e va ri o u s so l u t i o n s for b est-fi tt i n g a s u rfa ce i n sofa r a s t h ese so l u t i o n s m ay b e p e rce ived u n d e r $A 2$ a s est i m a tors of t h e u n kn own pa ra m ete rs of t h e m od e l . Wh a t wa s , i n t h e a bse n ce of $A 2$ , a p u re l y i n -sa m p l e fitt i n g exe rc i se , n ow i n t h e prese n ce of $A 2$ , i s a n exe rc i se of m u c h wi d e r a p p l i ca b i l ity (s i n ce t h e hypot h es i sed m od e l ca n a lways be u sed i n co nj u n ct i o n wit h sa m p l e- ba sed pa ra m ete r est i m a tes by t h e m od e l l e r to m a ke o u t-of-sa m p l e pred i ct i o n s) .

 So m e i m porta n t n otes of i n te rest :

– O bvi o u s l y, y m u st b e sto c h a st i c s i n ce $\varepsilon ^ { t r u e }$ i s m o d e l l ed a s sto c h a st i c .   
– I t i s l ess o bvi o u s w h et h e r $X$ s h o u l d b e m o d e l l ed a s sto c h a st i c or n ot , a n d i f it i s to be m od e l l ed a s stoc h a st i c , t h e ra n d o m n ess n eed s to be h a n d l ed a p pro pri a te ly. We wi l l ret u r n to t h i s d i sc u ss i o n u n d e r $A 3$ (co m i n g u p i n To p i c 5 ) .   
– T h e a d d i t ive sto c h a st i c e r ror i n a sta t i st i ca l m o d e l $\left( \varepsilon ^ { t r u e } \right)$ i s n ot t h e sa m e a s t h e O LS res i d u a l i n a n a l ge bra i c fi tt i n g exe rc i se $( \hat { e } _ { O L S } )$ . N eve r co n fu se t h e two co n ce pts !   
– $\varepsilon _ { s }$ i s o u r vi rt u a l ca r p et . Wh a t m a kes a goo d ca r p et? $\mathbb { E } ( \varepsilon _ { s } ) = 0$ fo r $s = 1 , . . . , S$

 As we h a ve previ o u s l y sta ted , we o bta i n a m u c h ri c h e r i n te r preta t i o n for o u r m i n i m u md i sta n ce d a ta -fi tt i n g so l u t i o n s (e . g . $b _ { O L S } ^ { * }$ or $b _ { L A D } ^ { * } )$ a s est i m a tors ( e . g . $\hat { \beta } _ { O L S }$ or $\hat { \beta } _ { L A D } )$ for pa ra m ete rs of i n te rest $( \beta ^ { t r u e } )$ .   
 T h e i m p l i ca t i o n i s t h a t we a re a b l e to d efi n e o n e of o u r m ost i m porta n t t h eoret i ca l co n st ru cts for t h e rest of t h i s te r m . T h a t i s , t h e sa m p l i n g e r ror vector ( S EV) of a n est i m a tor . ( e . g . $S E V ( \hat { \beta } _ { O L S } ) \equiv \hat { \beta } _ { O L S } - \beta ^ { t r u e } )$   
 As ca n be see n fro m t h e d efi n it i o n , t h e sa m p l i n g e rror i s s i m p ly t h e d i ffe re n ce betwee n t h e (vector-va l u ed ) est i m a tor a n d t h e (vector-va l u ed ) pa ra m ete r . I n ot h e r word s , i t i s t h e i n - sa m p l e d i sc re pa n cy betwee n o u r est i m a te a n d t h a t wh i c h we we re t ryi n g to est i m a te .   
 S i n ce a ny est i m a tor d e pe n d s , i n ge n e ra l , o n $\{ y , X \}$ a n d $y$ i s sto c h a st i c , t h e n eve ry est i m a tor i s sto c h a st i c a n d so i s i ts S EV .   
 We wi l l n eve r be a b l e to o bse rve t h e S EV i n pra ct i ce (s i n ce we wi l l n eve r kn ow t h e t ru e pa ra m ete r va l u e) . I t i s a t h eoret i ca l co n st r u ct , j u st a n ot h e r ra n d o m va ri a b l e , w h ose sta t i st i ca l pro pe rt i es we a n a lyse ( m o m e n t- by- m o m e n t) e it h e r ove r hypot h et i ca l re pea ted sa m p l es or a s t h e sa m p l e s i ze g rows wi t h o u t b o u n d . I n so d o i n g , we eva l u a te t h e q u a l i t i es of o u r est i m a tors .

( T i p : Pay ve ry c l ose a tte n t i o n to t h i s s l i d e ! M a n y of yo u r proofs t h i s te r m wi l l sta rt l i ke t h i s . )

Let u s a ss u m e $A 1 : r a n k ( X ) = k < S$ a n d $A 2 l i n e a r : y = X \beta ^ { t r u e } + \varepsilon ^ { t r u e }$ , w i t h $\mathbb { E } ( \varepsilon ) = 0$ T h e n ,

 T h e O LS est i m a tor i s ${ \hat { \beta } } _ { O L S } = ( X ^ { \prime } X ) ^ { - 1 } X ^ { \prime } y$ .   
 T h e S EV of t h e O LS esti m ator is give n by

$$
\begin{array}{l} S E V (\hat {\beta} _ {O L S}) = \hat {\beta} _ {O L S} - \beta^ {t r u e} \\ = (X ^ {\prime} X) ^ {- 1} X ^ {\prime} y - \beta^ {t r u e} \\ = (X ^ {\prime} X) ^ {- 1} X ^ {\prime} (X \beta^ {t r u e} + \varepsilon^ {t r u e}) - \beta^ {t r u e} \\ = \left(X ^ {\prime} X\right) ^ {- 1} X ^ {\prime} \varepsilon^ {t r u e}, \text {a n e x p l i c i t s o l u t i o n}. \\ \end{array}
$$

 T h e S EV of t h e LA D esti m ator is give n by

$$
\begin{array}{l} S E V (\hat {\beta} _ {L A D}) = \hat {\beta} _ {L A D} - \beta^ {t r u e} \\ = N L F (y, X, \beta^ {t r u e}), \text {a n i m p l i c i t s o l u t i o n}, \\ \end{array}
$$

wh e re $N L F ( \cdot )$ d e n otes so m e co m p l i ca ted n o n- l i n ea r fu n ct i o n .

 I t i s so m et i m es a ss u m ed t h a t $X$ i s n o n -sto c h a st i c , a s i n a va l i d exp e ri m e n ta l s i t u a t i o n .   
 I n a va l i d exp e ri m e n t , t h e a n a l yst c h ooses t h e va l u es of t h e reg ressors a n d t h e n o bse rves y . T h i s pro cess m i g h t a p p l y, for exa m p l e , i n a n a g ri c u l t u ra l exp e ri m e n t i n w h i c h $y$ i s yi e l d a n d $X$ co n ta i n s fe rt i l i se r co n ce n t ra t i o n a n d wa te r a p p l i ed . T h e a ss u m pt i o n of n o n -sto c h a st i c regressors wo u l d be a m a t h e m a t i ca l co nve n i e n ce . (Wit h it , we co u l d u se t h e s i m p l e too l s of e l e m e n ta ry sta t i st i cs to co n d u ct t h eoret i ca l eva l u a t i o n s of o u r est i m a tors by t rea t i n g $X$ s i m p l y a s a k n ow n co n sta n t i n t h e pro ba b i l i ty d i st ri b u t i o n of $y$ . )   
 Eco n o m i c exa m p l es of n o n-sto c h a st i c reg ressors i n c l u d e co n sta n ts , l i n ea r t i m e t re n d s , etc .   
 I t i s o u r d ec i s i o n a s m od e l l e rs wh et h e r we wi s h to t rea t $X$ a s n o n -sto c h a st i c ( i . e . , fixed i n re p ea ted sa m p l es) or sto c h a st i c ( i . e . , ra n d o m ove r re p ea ted sa m p l es) .   
 Ass u m pt i o n $A 3$ st i p u l a tes t h a t $X$ m ay b e n o n -sto c h a st i c or sto c h a st i c b u t i t i s ge n e ra ted by a m ec h a n i s m t h a t i s (sta t i st i ca l l y a n d eco n o m i ca l l y) “ u n re l a ted ” to $\varepsilon ^ { t r u e }$ .   
 T h e sta te m e n t a bove i s c l ea rly too va gu e to be m a t h e m a t i ca l ly u sefu l . We m a ke t h e form u l a t i o n of $A 3$ m ore prec i se i n a va ri ety of ways be l ow .

# Ass u m pt i o n $A 3 F$ . Regressor m a t rix $X$ i s n o n-sto c h a st i c ( i . e . , fixed i n re p ea ted sa m p l es) .

 H ow does $A 3 F$ h e l p d i se n ta n g l e $X$ fro m $\varepsilon ^ { t r u e }$ ? We l l , t r i v i a l l y so , s i n ce i f $X$ ca n n ot va ry, t h e n o bvi o u s l y i t ca n n ot co-va ry wi t h $\varepsilon ^ { t r u e }$ e i t h e r (or i n d eed wi t h a n y ot h e r sto c h a st i c te r m ) !   
 To u n d e rsta n d why $A 3 F$ i s m a t h e m a t i ca l l y co n ve n i e n t for u s , l et u s a ss u m e we h a ve o u r u s u a l d a ta ext ra ct a n d t h a t $A 1$ a n d A2linear h o l d . N ow reca l l

$$
S E V (\hat {\beta} _ {O L S}) = (X ^ {\prime} X) ^ {- 1} X ^ {\prime} \varepsilon^ {t r u e}
$$

fro m To p i c 4 . We kn ow t h at $S E V ( \hat { \beta } _ { O L S } )$ wi l l n ot be ze ro i n ge n e ra l for a give n sa m p l e . H oweve r , s u p pose we wi s h to fi n d o ut wh et h e r o u r est i m a tor h its its ta rget o n ave ra ge ove r re pea ted sa m p l es . I n ot h e r word s , we wi s h to work o ut wh et h e r $\mathbb { E } ( S E V ( \hat { \beta } _ { O L S } ) )$ i s ze ro .

 T h i s exe rc i se i s ea s i ly d o n e u n d e r $A 3 F$ beca u se $X$ i s s i m p l y t rea ted a s a co n sta n t i n t h e d i st ri b u t i o n of y a n d t h e refore of $\hat { \beta } _ { O L S }$ a n d t h e refore of $S E V ( \hat { \beta } _ { O L S } )$ . So we o bta i n

$$
\begin{array}{l} \mathbb {E} (S E V (\hat {\beta} _ {O L S})) = \mathbb {E} ((X ^ {\prime} X) ^ {- 1} X ^ {\prime} \varepsilon^ {t r u e}), \mathrm {d u e t o A 1}, A 2 l i n e a r a n d t h e d e f i n i t i o n o f \hat {\beta} _ {O L S}) \\ = (X ^ {\prime} X) ^ {- 1} X ^ {\prime} \mathbb {E} (\varepsilon^ {t r u e}), \mathrm {d u e t o} A 3 F \\ = 0, \text {d u e t o} A 2 l i n e a r. \\ \end{array}
$$

 Ca n yo u a p prec i a te t h a t t h i s d e riva t i o n wo u l d be m ore co m p l i ca ted i f $X$ we re sto c h a st i c?

# Ass u m pt i o n A3R . Regressor m a t rix $X$ i s sto c h a st i c b u t “ u n re l a ted ” to $\varepsilon ^ { t r u e }$ .

 So c i a l sc i e n t i sts a re a l m ost n eve r a b l e to a n a l yse va l i d exp e ri m e n ta l d a ta , a n d re l a t ive l y few so c i a l sc i e n ce m o d e l s a re b u i l t a ro u n d n o n-sto c h a st i c reg ressors . T h i s i s b eca u se m ost of t h e t i m e t h ey a re d ea l i n g wi t h o bse rva t i o n a l d a ta .   
 For exa m p l e , i n a ny m a c roeco n o m i c m od e l , it wo u l d be d i ffi c u l t to d efe n d s u c h a n a sym m et ri c t rea t m e n t of a gg rega te d a ta . Rea l i st i ca l l y, we h a ve to a l l ow t h e d a ta o n $X$ to be ra n d o m t h e sa m e a s $y$ . So a n a l te r n a t ive for m u l a t i o n to $A 3 F$ i s to a ss u m e t h a t $X$ i s sto c h a st i c a n d t h e n a d d s pec i fi c form a l sta te m e n ts , c l a ss i fi ed u n d e r d i ffe re n t ve rs i o n s $A 3 R$ , co n ce r n i n g t h e exa ct n a t u re of t h e j o i n t d a ta -ge n e ra t i n g pro cess gove r n i n g $X$ a n d $\varepsilon ^ { t r u e }$ .   
 To s u m m a ri se , t h e $A 3 R$ c l a ss of a ss u m pt i o n s (to be d i sc u ssed i n d eta i l be l ow) wi l l b e m ore s u ited to o bse rva t i o n a l or n o n-expe ri m e n ta l d a ta co m m o n ly e n co u n te red i n eco n o m i cs .   
 Loo ki n g a h ea d , i n ord e r to form a l i se o u r $A 3 R$ c l a ss of a ss u m pt i o n s , we n eed to co n s i d e r two d i m e n s i o n s a l o n g w h i c h $X$ m ay b e “ re l a ted / u n re l a ted ” to $\varepsilon ^ { t r u e }$ . ( See Ta s ks 1 a n d 2 be l ow . )

Reca l l t h a t u n d e r $A 3 R$ , t h e co l u m n s of $X$ a n d $\varepsilon ^ { t r u e }$ a re $S \times 1$ vector-va l u ed ra n d o m va ri a b l es . T h e refore , i n ord e r to for m u l a te prec i se ve rs i o n s of o u r $A 3 R$ a ss u m pt i o n ,

Ta s k 1 . We m u st ca refu l l y c h a ra cte ri se prese n ce/ a bse n ce of re l a t i o n s h i ps b etwee n $x _ { s }$ a n d $\varepsilon _ { q } ^ { t r u e }$ εq fo r $s = q$ a s we l l a s for $s \neq q$ fo r $s , q = 1 , . . . , S$ , a n d   
Ta s k 2 . We m u st ca refu l l y c h a ra cte ri se t h e st re n gt h /wea k n ess of sta t i st i ca l d e p e n d e n ce exh i b i ted betwee n ra n d o m va ri a b l es $X$ a n d $\varepsilon ^ { t r u e }$ .

 As rega rd s Ta s k 1 , i n p l a i n e n g l i s h , we n eed to c l a ri fy w h et h e r a l a c k of re l a t i o n refe rs to t h e sa m e row of t h e $X$ m a t rix a n d t h e $\varepsilon ^ { t r u e }$ vector (for $s = q$ ) , or w h et h e r i t a p p l i es a c ross a l l rows (for a n y $s , q )$ . T h a t i s , we m u st . . .

co n s i d e r l i n ks betwee n a l l e l e m e n ts of

![](images/21bc3db3b1e8fdd254c02a6b2146b45f4d73e796699fa03a1a9c51dced266606.jpg)  
S × k

ve rs u s a l l e l e m e n ts of

![](images/5d0bab23916dd7cdd3c2b514b89b956c5c2bfc8f986d28021fc0ca25fa00adb2.jpg)  
S × 1

 As rega rd s Ta s k 2 , we n eed to form a l i se t h e m ea n i n g of u n re l a ted n ess betwee n e l e m e n ts of t h e pa i r of ra n d o m va ri a b l es $( x _ { s j } , \varepsilon _ { q } ^ { t r u e } )$ , fo r $s , q = 1 , . . . , S$ a n d $j = 1 , . . . , k$ . We d o t h i s u s i n g d i ffe re n t n ot i o n s of sta t i st i ca l d e p e n d e n ce .

We a re n ow i n a pos it i o n to form u l a te a few m ore prec i se va ri a n ts of $A 3 R$ .

Ass u m pt i o n A3Rf i . $X$ a n d $\varepsilon ^ { t r u e }$ a re fu l l y sta t i st i ca l l y i n d e p e n d e n t .

A3Rf i re m a i n s a rest ri ct ive a ss u m pt i o n i n eco n o m i cs . I f a ra n d o m va ri a b l e i s fu l l y sta t i st i ca l l y i n d e p e n d e n t of ot h e rs u n d e r co n s i d e ra t i o n , t h i s m ea n s t h a t i t i s u n cor re l a ted wi t h eve ry p oss i b l e l i n ea r or n o n - l i n ea r fu n ct i o n of t h e l a tte r . We t h u s co n s i d e r “ m ea n i n d e p e n d e n ce” ,

$$
\mathrm {A s s u m p t i o n} A 3 R m i. \quad \mathbb {E} (\varepsilon^ {\mathrm {t r u e}} | X) = \mathbb {E} (\varepsilon^ {\mathrm {t r u e}})
$$

w h i c h i s a wea ke r a ss u m pt i o n t h a n $A 3 R f i$ . N eve rt h e l ess , p e r h a ps co n fu s i n g l y, A3Rmi i s refe r red to a s “st ro n g exoge n e i ty” i n eco n o m i cs b eca u se i t i s st i l l q u i te st ro n g . I n d eed , t h e d i rect i m p l i ca t i o n of A3Rmi (d u e to t h e L I E – see roa d m a p i n t h e exte n d ed n otes for To p i c 1 ) i s t h a t $\varepsilon ^ { t r u e }$ i s u n cor re l a ted wi t h a n y l i n ea r or n o n- l i n ea r fu n ct i o n of ( a n y row of) t h e reg ressor m a t rix .

(As a previ ew of to p i cs to co m e , it t u rn s o u t t h a t A 1 , A2linear, a n d A3Rmi wi l l be t h e m i n i m u m req u i re m e n ts to s h ow u n b i a sed n ess of o u r O LS est i m a tor i n t h e l i n ea r reg ress i o n m o d e l . )

We n ow co n s i d e r t h e “sa m e row u n cor re l a ted n ess” a ss u m pt i o n .

$$
\mathrm {A s s u m p t i o n} A 3 R s r u. \quad \operatorname {c o v} (x _ {s j}, \varepsilon_ {s} ^ {\mathrm {t r u e}}) = 0 \mathrm {f o r a l l} s = 1, \ldots , S \mathrm {a n d} j = 1, \ldots , k.
$$

A3Rsru s i m p ly m ea n s t h a t t h e re i s n o l i n ea r d e pe n d e n ce ( i . e . , n o corre l a t i o n ) betwee n a ny of t h e $k$ regressors a n d t h e e rror te rm i n t h e sa m e row . N ote t h a t A3Rsru d oes n ot ru l e o u t n o nl i n ea r d e p e n d e n ce eve n i n t h e sa m e row a n d it d oes n ot ru l e o u t l i n ea r/ n o n- l i n ea r d e pe n d e n ce b etwee n reg ressors a n d e r rors a c ross d i ffe re n t rows . I n t h i s se n se , eco n o m i sts ty p i ca l l y refe r to t h i s a ss u m pt i o n a s “wea k exoge n e i ty” .

N ote t h a t

$$
A 3 F \Rightarrow A 3 R f i \Rightarrow A 3 R m i \Rightarrow A 3 R s r u,
$$

b u t n ot t h e ot h e r way ro u n d . N ote a l so t h a t t h e fi rst t h ree i n vo l ve all rows , w h e rea s t h e l a st o n l y t h e same rows of t h e reg ressors a n d t h e t r u e e r ror . ( P rove t h ese res u l ts yo u rse l f ! )

(As a previ ew of to p i cs to co m e , A 1 , A2linear, a n d A3Rsru wi l l N OT be s u ffi c i e nt to esta b l i s h u n b i a sed n ess of o u r O LS est i m a tor i n t h e l i n ea r reg ress i o n m o d e l . N eve rt h e l ess , t h ese a ss u m pt i o n s wi l l b e s u ffi c i e n t to esta b l i s h co n s i ste n cy of t h e O LS est i m a tor a s $S \to \infty$ . )

Let u s n ow co n s i d e r a d i ffe re n t a p proa c h , LA D . Wh a t co n c l u s i o n s ca n we d raw a bo u t it?

 G ive n d a ta ext ra ct $\{ y , X \}$ s u c h t h a t A 1 i s sa t i sfi ed , we ca n d efi n e

$$
b _ {L A D} ^ {*} = \underbrace {N L F (X , y)} _ {\mathrm {n o n - l i n e a r f u n c t i o n}}
$$

a s o u r so l u t i o n to t h e s u rfa ce-fi tt i n g exe rc i se . Reca l l t h a t t h e n o n- l i n ea r fu n ct i o n a b ove d o es n ot h a ve co n t i n u o u s fi rst or seco n d d e riva t ives , a n d t h e LA D so l u t i o n i s n o n - a n a l yt i c .

 U n d e r A 1 a n d A2linear we fu rt h e r h ave ,

$$
b _ {L A D} ^ {*} = N L F (X, y) = \hat {\beta} _ {L A D} = N L F (X, X \beta^ {t r u e} + \varepsilon^ {t r u e}) = N L F (X, \beta^ {t r u e}, \varepsilon^ {t r u e}).
$$

T h e refore ,

$$
S E V (\hat {\beta} _ {L A D}) \equiv \hat {\beta} _ {L A D} - \beta^ {t r u e} = N L F (X, \beta^ {t r u e}, \varepsilon^ {t r u e}) - \beta^ {t r u e}.
$$

G e n e ra l l y, u n d e r $A 1$ , a n y $A 2$ , a n d a n y $A 3$ , $\hat { \beta } _ { L A D }$ ca n n ot be s h own to be u n b i a sed beca u se $S E V ( \hat { \beta } _ { L A D } ) = N L F ( X , \beta ^ { t r u e } , \varepsilon ^ { t r u e } )$ i s n o n - l i n ea r , n o n - d i ffe re n t i a b l e , a n d n o n - a n a l yt i c . ( T h e pres u m pt i o n i s t h u s t h a t i t wi l l b e b i a sed . )

To s u m m a ri se , we we re a b l e to s h ow u n b i a sed n ess of $\hat { \beta } _ { O L S }$ b u t n ot of $\hat { \beta } _ { L A D }$ .

T h i s l ea d s to t h e q u est i o n of w h et h e r we ca n esta b l i s h a ge n e ra l c l a ss of est i m a tors for w h i c h u n b i a sed n ess ca n b e s h ow n u n d e r t h e set of a ss u m pt i o n s , A 1 , A2 linear a n d A3Rmi .

We wi l l d e n ote o u r ge n e ri c $k \times 1$ est i m a tor a s $\hat { \beta } _ { L s t a r }$ a n d d efi n e it a s fo l l ows . Let

$$
\hat {\beta} _ {L s t a r} \equiv B _ {X} y
$$

for a n y $k \times S$ m a t r ix $B _ { X }$ s u c h t h a t $B _ { X } X = I _ { k }$ . ( N ote t h a t $A _ { X } \equiv ( X ^ { \prime } X ) ^ { - 1 } X ^ { \prime }$ i s o n e s p ec i a l ca se of $B _ { X }$ . ) T h e n , we h ave

$$
\begin{array}{l} S E V (\hat {\beta} _ {L s t a r}) = \hat {\beta} _ {L s t a r} - \beta^ {t r u e} \\ = B _ {X} (X \beta^ {t r u e} + \varepsilon^ {t r u e}) - \beta^ {t r u e} \\ = B _ {X} \varepsilon^ {t r u e}, \\ \end{array}
$$

so t h a t we ca n esta b l i s h u n b i a sed n ess u n d e r $A 1$ , A2linear a n d A3Rmi u s i n g t h e exa ct sa m e ste ps a s i n t h e u n b i a sed n ess proof for $\hat { \beta } _ { O L S }$ .

We refe r to $\hat { \beta } _ { L s t a r }$ a s a ge n e ri c l i n ea r u n b i a sed est i m a tor ( L U E ) for $\beta ^ { t r u e }$ .

To co n c l u d e t h i s to p i c , we a s k w h et h e r t h e re , i n fa ct , exi sts a n est i m a tor t h a t exh i b i ts d es i ra b l e sta t i st i ca l pro pe rt i es eve n u n d e r t h e wea ke r a ss u m pt i o n s A 1 , A2linear a n d A3Rsru .

To a n swe r t h i s , we co n s i d e r t h e ge n e ra l i sed m et h od of m o m e n ts ( G M M ) est i m a tor wh i c h i s ba sed o n t h e fo l l owi n g i n t u i t i o n :

Ste p 1 . We recogn i se t h a t po p u l a t i o n m o m e n ts a re fu n ct i o n s of t h e pa ra m ete rs gove rn i n g t h e t r u e d a ta -ge n e ra t i n g pro cess . T h ese re l a t i o n s h i ps a re ca l l ed m o m e n t eq u a t i o n s .   
Ste p 2 . We k n ow t h a t l aws of l a rge n u m be rs i m p ly t h a t sa m p l e m o m e n ts a re co n s i ste n t est i m a tors of t h e i r p o p u l a t i o n co u n te r pa rts .   
Ste p 3 . We t h u s est i m a te po p u l a t i o n m o m e n ts wit h sa m p l e m o m e n ts a n d t h e re by “ ba c k o u t” est i m a tors of t h e u n k n ow n pa ra m ete rs u s i n g t h e a fore- m e n t i o n ed m o m e n t eq u a t i o n s .

We exa m i n e t h e m ec h a n i cs of t h e G M M a p proa c h o n t h e n ext s l i d e . T h e rea so n we co n s i d e r t h i s s pec i fi c est i m a tor n ow i s t h a t ( a s yo u wi l l o bse rve o n t h e n ext s l i d e) t h e co n d it i o n s a ccord ed to t h e m od e l l e r u n d e r A3Rsru se rve exa ct ly a s t h e m o m e n t eq u a t i o n s req u i red to o pe ra t i o n a l i se t h e G M M proced u re . I n t h i s se n se , G M M i s a ve ry n a t u ra l ca n d i d a te to co n s i d e r u n d e r A3Rsru .

 G ive n d a ta ext ra ct $\{ y , X \}$ , u n d e r A 1 , we h ave $r a n k ( X ) = k$ .   
 U n d e r A2linear , we h ave t h at

$$
y _ {s} = x _ {s} ^ {\prime} \beta^ {t r u e} + \varepsilon_ {s} ^ {t r u e} \mathrm {w i t h} \mathbb {E} (\varepsilon_ {s} ^ {t r u e}) = 0 \mathrm {f o r a l l} s = 1, \ldots , S.
$$

 U n d e r A3Rsru , we h ave t h e fo l l owi n g syste m of $k$ co n d i t i o n s :

$$
\mathbb {E} \big (x _ {s 1} \varepsilon_ {s} ^ {t r u e} \big) = 0
$$

$$
\mathbb {E} (x _ {s 2} \varepsilon_ {s} ^ {t r u e}) = 0
$$

$$
\mathbb {E} (x _ {s k} \varepsilon_ {s} ^ {t r u e}) = 0,
$$

wh i c h a re exa ct ly $k$ m o m e n t eq u a t i o n s i n o u r $k$ u n k n ow n pa ra m ete rs . To see t h i s , n ot i ce t h a t t h e syste m a bove ca n b e eq u iva l e n t l y rew ritte n a s

$$
\mathbb {E} \big (x _ {s 1} (y _ {s} - x _ {s} ^ {\prime} \beta^ {t r u e}) \big) = 0
$$

$$
\mathbb {E} (x _ {s 2} (y _ {s} - x _ {s} ^ {\prime} \beta^ {t r u e})) = 0
$$

$$
\mathbb {E} (x _ {s k} (y _ {s} - x _ {s} ^ {\prime} \beta^ {t r u e})) = 0.
$$

 Fo l l owi n g t h e ste ps of t h e ge n e ra l i sed m et h od of m o m e n ts d esc ri bed previ o u s ly, we o bta i n o u r $k \times 1$ vector of coeffi c i e n ts , $\hat { \beta } _ { G M M }$ , a s d efi n ed by t h e fo l l owi n g syste m of eq u a t i o n s :

$$
\begin{array}{l} \frac {1}{S} \sum_ {s = 1} ^ {S} (x _ {s 1} (y _ {s} - x _ {s} ^ {\prime} \hat {\beta} _ {G M M})) = 0 \\ \frac {1}{S} \sum_ {s = 1} ^ {S} (x _ {s 2} (y _ {s} - x _ {s} ^ {\prime} \hat {\beta} _ {G M M})) = 0 \\ \end{array}
$$

![](images/2f08663cadd1633ebe8fc3fc7058d6a89f36ee86b94a63dcb3c3a810577c2ea8.jpg)

$$
\frac {1}{S} \sum_ {s = 1} ^ {S} (x _ {s k} (y _ {s} - x _ {s} ^ {\prime} \hat {\beta} _ {G M M})) = 0.
$$

 We wi l l st u dy t h e G M M est i m a tor i n fu rt h e r d eta i l i n l a te r wee ks . For n ow , we n ote t h a t $\hat { \beta } _ { G M M }$ wi l l n ot be u n b i a sed u n d e r A 1 , A2linear a n d A3Rsru b u t it i s st i l l a “good ” est i m a tor i n t h e se n se t h a t i t i s co n s i ste n t a n d u n i for m l y a sy m ptot i ca l l y n or m a l ( C U A N ) u n d e r t h e give n set of a ss u m pt i o n s . (Aga i n , we wi l l d i sc u ss t h ese pro p e rt i es i n fu rt h e r d eta i l o n ce we sta rt to ta l k a b o u t a sy m ptot i cs . )

M ec h a n i ca l l y, u n d e r t h ese t h ree a ss u m pt i o n s t h e GMM est i m a tor ( Est i m a tor 4) wi l l b e iden tical to t h e O LS est i m a tor ( Est i m a tor 1 ) . Co n seq u e n t ly, it wi l l be L U E u n d e r t h e exa ct sa m e co n d it i o n s t h a t O LS req u i res to be L U E . T h i s eq u iva l e n ce of GMM a n d O LS wi l l n ot h o l d i n n o n l i n ea r m o d e l s .

# M oment- related caveats to bear i n m i nd before we proceed

We wi l l soo n d i sc u ss $\mathbb { E } ( \varepsilon ^ { t r u e } \varepsilon ^ { t r u e ^ { \prime } } | X )$ , t h e seco n d co n d i t i o n a l m o m e n t of t h e sto c h a st i c e r ror give n $X$ . N ot i ce t h a t u n d e r $A 1$ , A2linear , a n d A3Rmi , it h o l d s t h at $\mathbb { E } ( \varepsilon ^ { t r u e } \varepsilon ^ { t r u e ^ { \prime } } | X )$ i s t h e sym m et ri c pos it ive d efi n ite $S \times S$ co n d i t i o n a l va ri a n ce- cova ri a n ce of $\varepsilon ^ { t r u e }$ give n $X$ .

 Cavea t $\# 1$ . By exp l i c it ly ru l i n g o u t t h e pos it ive semi-d efi n ite ca se ( i . e . , by prec l u d i n g t h e poss i b i l ity of ze ro e i ge nva l u es a n d t h e refore a ra n k-d efi c i e n cy i n t h e $S \times S$ va ri a n cecova ri a n ce st r u ct u re) , we a re e n s u ri n g t h a t t h e re a re n o p e rfect l i n ea r re l a t i o n s h i ps b etwee n t h e sto c h a st i c e r rors . Ot h e rwi se , t h e e r rors m ay n ot b e “t r u l y ra n d o m ” . ( I f t h i s p o i n t i s n ot c l ea r , see exp l a n a t i o n i n “ B a c kgro u n d m a te ri a l for revi ew” of t h e exte n d ed n otes . )

 Cavea t $\# 2$ . M o m e n ts m ay n ot exi st .

– So m e d i st ri b u t i o n s a re s u c h t h a t a l l m o m e n ts of a n y ord e r a re fi n i te (e . g . , N or m a l ) .   
– Ot h e rs a re s u c h t h a t m o m e n ts a bove a ce rta i n ord e r a re u n d efi n ed (e . g . , Pa reto wit h s h a p e pa ra m ete r , say $\alpha \in [ 1 , 2 )$ , for w h i c h o n l y t h e m ea n i s fi n ite b u t h i g h e r-ord e r m o m e n ts a re u n d efi n ed ) .   
– St i l l ot h e rs a re s u c h t h a t n o m o m e n ts exi st a t a l l (e . g . , C a u c h y a . k . a . t h e St u d e n t ’ s t wit h 1 d egree of freed o m , Pa reto wit h $\alpha \in [ 0 , 1 )$ ) .

# M oment- related caveats to bear i n m i nd before we proceed

 Cavea t $\# 3$ . Reca l l t h a t a p o p u l a t i o n m ea n , $\mathbb { E } ( \cdot )$ , i s t h e fi rst raw m o m e n t a n d t h e va ri a n ce , $\mathbb { V } ( \cdot )$ , i s t h e seco n d ce n t ra l m o m e n t of a ra n d o m va ri a b l e . Let u s n ow a c kn owl ed ge so m e l ogi ca l re l a t i o n s betwee n t h e two m o m e n ts . Be l ow , l et $g ( \cdot )$ re prese n t a n a r b i t ra ry fu n ct i o n .   
– S u p pose $\mathbb { V } ( \cdot | X ) = g ( X )$ . T h i s d oes N OT i m p ly t h at $\mathbb { E } ( \cdot | X )$ d e pe n d s o n $X$ .   
– S u p pose $\mathbb { E } ( \cdot | X ) = g ( X )$ . T h i s d oes N OT i m p ly t h at $\mathbb { V } ( \cdot | X )$ d e pe n d s o n $X$ .   
– S u p pose $\mathbb { V } ( \cdot | X )$ i s i n fi n ite/ u n d efi n ed . T h i s d oes N OT i m p ly t h a t $\mathbb { E } ( \cdot | X )$ i s i n fi n i te/ u n - d efi n ed ( beca u se it i s a l owe r-ord e r m o m e n t) .   
– S u p pose $\mathbb { E } ( \cdot | X )$ i s i n fi n ite/ u n d efi n ed . T h i s D O ES i m p ly t h a t t h a t $\mathbb { V } ( \cdot | X )$ i s i n fi n i te/ u n - d efi n ed ( beca u se it i s a h i gh e r-ord e r m o m e n t) .

 Cavea t $\# 4$ . Eve n i f m o m e n ts exi st , t h ey m ay n ot be sta b l e ove r t h e d i m e n s i o n a l o n g wh i c h d a ta po i n ts a re d rawn . S u p pose o bse rva t i o n s a re d rawn ove r t i m e (j u st to fix i d ea s) .

– I n t h i s (t i m e se ri es) co n text , we wo u l d say t h a t “st ri ct sta t i o n a ri ty” h o l d s so l o n g a s t h e e n t i re j o i n t pro ba b i l i st i c st r u ct u re of a n y a r b i t ra ry co l l ect i o n of ra n d o m va ri a b l es wi t h i n t h e sto c h a st i c pro cess u n d e r co n s i d e ra t i o n i s t i m e- i n va ri a n t .   
– P rovi d ed ( a t l ea st) seco n d-ord e r m o m e n ts exi st , t h e co n ce pt of “wea k/cova ri a n ce stat i o n a ri ty” e n forces t h a t t h i s seco n d -ord e r m o m e n t st r u ct u re i s t i m e- i n va ri a n t .

# M oment- related caveats to bear i n m i nd before we proceed

 Cavea t $\# 5$ . Eve n i f a process i s s u c h t h a t a l l m o m e n ts a n d c ross- m o m e n ts of a ny ord e r exi st , a n d a re sta b l e ove r t i m e , t h e process m ay st i l l be n o n-e rgod i c ( i n d efi a n ce of “ Laws of La rge N u m be rs” ( L L N s) ) .

– T h e form a l d efi n it i o n of e rgod i c ity i s ra t h e r tec h n i ca l . To give yo u a fl avo u r , i n a sta t i o n a ry t i m e se ri es co n text , a process i s sa i d to b e “e rgod i c for t h e m ea n ” wh e n t h e pro ba b i l ity l i m it ( a s t h e sa m p l e s i ze g rows wit h o u t bo u n d ) of t h e so-ca l l ed “e n se m b l e m ea n ” of t h e pro cess i s i d e n t i ca l to t h e pro ba b i l i ty l i m i t of i ts “te m p ora l m ea n ” .   
– I f yo u d i d n ot u n d e rsta n d t h e previ o u s b u l l et , p l ea se d o n ot worry ! T h e key i n t u it i o n be h i n d e rgod i c ity i s s i m p ly a bo u t wh et h e r a process yi e l d s to a n L L N . I f n ot , ave ra gi n g d a ta ove r t h e d i m e n s i o n a l o n g w h i c h d a ta a re d raw n wo u l d b e po i n t l ess for est i m a t i n g p o p u l a t i o n m o m e n ts c h a ra cte ri s i n g ra n d o m va ri a b l es i n t h e sto c h a st i c pro cess u n d e r i n vest i ga t i o n .

(T h e d i sc u ss i o n a ro u n d sta t i o n a rity a n d e rgod i c ity a bove i s a previ ew of to p i cs t h a t we wi l l bri efly e n co u n te r a ga i n l a te r t h i s te r m . For i n sta n ce , t h ey wi l l po p u p w h e n we st u d y a sy m ptot i c t h eory. T h ese to p i cs a re q u i te tec h n i ca l a n d i t i s n ot n ecessa ry for u s to get i n to m u c h fu rt h e r d eta i l a t t h i s ea r l y sta ge . I n-d e pt h exp l a n a t i o n s wi l l b e provi d ed by D r RS d u ri n g h i s t i m e se ri es l ect u res a t t h e e n d of WT . For n ow , we a re j u st i n t ro d u c i n g u sefu l vo ca b u l a ry i n to yo u r awa re n ess ! )

Co n s i d e r t h e va ri a n ce- cova ri a n ce st r u ct u re of $\varepsilon ^ { t r u e } | X$ , say

$$
\begin{array}{l} \mathbb {V} (\varepsilon^ {t r u e} | X) = \mathbb {E} ((\varepsilon^ {t r u e} - \mathbb {E} (\varepsilon^ {t r u e} | X)) (\varepsilon^ {t r u e} - \mathbb {E} (\varepsilon^ {t r u e} | X)) ^ {\prime} | X) = \\ \left[ \begin{array}{c c c c} \mathbb {E} \left((\varepsilon_ {1} - \mathbb {E} (\varepsilon_ {1} | X)) ^ {2} | X\right) & \mathbb {E} \left((\varepsilon_ {1} - \mathbb {E} (\varepsilon_ {1} | X)) (\varepsilon_ {2} - \mathbb {E} (\varepsilon_ {2} | X)) | X\right) & \ldots & \mathbb {E} \left((\varepsilon_ {1} - \mathbb {E} (\varepsilon_ {1} | X)) (\varepsilon_ {s} - \mathbb {E} (\varepsilon_ {s} | X)) | X\right) \\ \mathbb {E} \left((\varepsilon_ {2} - \mathbb {E} (\varepsilon_ {2} | X)) (\varepsilon_ {1} - \mathbb {E} (\varepsilon_ {1} | X)) | X\right) & \mathbb {E} \left((\varepsilon_ {2} - \mathbb {E} (\varepsilon_ {2} | X)) ^ {2} | X\right) & \ldots & \mathbb {E} \left((\varepsilon_ {2} - \mathbb {E} (\varepsilon_ {2} | X)) (\varepsilon_ {s} - \mathbb {E} (\varepsilon_ {s} | X)) | X\right) \\ \vdots & \vdots & \ddots & \vdots \\ \mathbb {E} \left((\varepsilon_ {S} - \mathbb {E} (\varepsilon_ {S} | X)) (\varepsilon_ {1} - \mathbb {E} (\varepsilon_ {1} | X)) | X\right) & \mathbb {E} \left((\varepsilon_ {S} - \mathbb {E} (\varepsilon_ {S} | X)) (\varepsilon_ {2} - \mathbb {E} (\varepsilon_ {2} | X)) | X\right) & \ldots & \mathbb {E} \left((\varepsilon_ {S} - \mathbb {E} (\varepsilon_ {S} | X)) ^ {2} | X\right) \end{array} \right], \\ \end{array}
$$

wh e re we te m pora ri ly s u p press t h e “true” n ota t i o n o n ε . T h e a bove i s a sym m et ri c pos it ive semi-d efi n ite $S \times S$ m a t rix i n w h i c h t h e l ea d i n g d i a go n a l co n ta i n s t h e co n d i t i o n a l va ri a n ces of t h e sto c h a st i c e r rors , a n d t h e off- d i a go n a l s co n ta i n t h e co n d i t i o n a l cova ri a n ces .

Ass u m pt i o n A4Ω . E l e m e n ts of $\mathbb { V } ( \varepsilon ^ { t r u e } | X )$ a re fi n i te a n d rea l ; a n d t h e re exi sts a fi n i te co n sta n t $c ^ { 2 } > 0$ a n d a n $S \times S$ sym m et ri c pos it ive d efi n ite m a t rix $\Omega$ s . t . $\mathbb { V } ( \varepsilon ^ { t r u e } | X ) = c ^ { 2 } \Omega$

 $A 4 \Omega$ e n s u res t h a t t h e e r rors a re t r u l y ra n d o m a n d t h e i r seco n d m o m e n t st r u ct u re i s we l l - d efi n ed , b u t n o fu rt h e r rest ri ct i o n s a re i m posed o n t h e e l e m e n ts i n s i d e $\mathbb { V } ( \varepsilon ^ { t r u e } | X )$ .   
 I n ot h e r word s , n o n-s p h e ri c ity i s pe rm itted u n d e r A4Ω . So t h e re m ay be h ete ros ked a st i c ity ( n o n- co n sta n t l ea d i n g d i a go n a l ) a n d /or a u to cor re l a t i o n ( n o n-ze ro off- d i a go n a l s) .

Ass u m pt i o n A4GM . T h e re exi sts a fi n ite co n sta n t $\sigma ^ { 2 } > 0$ s . t . $\mathbb { V } ( \varepsilon ^ { t r u e } | X ) = \sigma ^ { 2 } I _ { S } ,$ , wh e re $I _ { S }$ i s t h e i d e n t i ty m a t rix of ord e r $S$ .

 A4GM e n s u res t h a t t h e e r rors a re h o m os ked a st i c a n d n ot a u to cor re l a ted . I n ot h e r word s , e r rors a re s p h e ri ca l u n d e r A4GM . We ca n a l so fu rt h e r st re n gt h e n A4GM a s fo l l ows :

Ass u m pt i o n A4GM ii d . $\varepsilon _ { s } ^ { t r u e } | X$ fo r $s = 1 , . . . , S$ a re i n d e p e n d e n t a n d i d e n t i ca l l y d i st ri b u ted ra n d o m va ri a b l es ea c h wi t h va ri a n ce give n by fi n i te co n sta n t $\sigma ^ { 2 } > 0$ .

 N ote t h a t $A 4 G M i i d \implies A 4 G M \implies A 4 \Omega ,$ i n ge n e ra l .

N ote t h a t A4GM ii d $\Longleftrightarrow$ $\implies A 4 G M \implies A 4 \Omega$ , wh e n $\varepsilon ^ { t r u e } | X$ i s m u l t iva ri a te G a u ss i a n .

T h e G a u ss- M a rkov ( G M ) t h eore m . U n d e r A 1 , A2linear , ≥ A3Rmi , a n d $A 4 G M ( i i d )$

$$
\hat {\beta} _ {O L S} = (X ^ {\prime} X) ^ {- 1} X ^ {\prime} y
$$

i s “ b est” a m o n g t h e c l a ss of l i n ea r u n b i a sed est i m a tors , w h e re i n a ty p i ca l est i m a tor i s d efi n ed a s

$$
\hat {\beta} _ {L s t a r} = B _ {X} y,
$$

a n d t h e c ri te ri o n “ b est” refe rs to p os i t ive se m i- d efi n i te n ess of

$$
\mathbb {V} (\hat {\beta} _ {L s t a r} | X) - \mathbb {V} (\hat {\beta} _ {O L S} | X)
$$

for a n y $B _ { X }$ s . t . $B _ { X } X = I _ { k }$ .

( I n form a l ly, we say “O LS i s B L U E u n d e r A 1 , A2linear , ≥ A3Rmi , a n d A4GM (iid) ” . )

T h e A it ke n ( G M 2 ) t h eore m . U n d e r A 1 , A2linear , ≥ A3Rmi , a n d A4Ω ,

$$
\hat {\beta} _ {I G L S} = (X ^ {\prime} \Omega^ {- 1} X) ^ {- 1} X ^ {\prime} \Omega^ {- 1} y
$$

i s “ b est” a m o n g t h e c l a ss of l i n ea r u n b i a sed est i m a tors , w h e re i n a ty p i ca l est i m a tor i s d efi n ed a s

$$
\hat {\beta} _ {L s t a r} = B _ {X} y,
$$

a n d t h e c ri te ri o n “ b est” refe rs to p os i t ive se m i- d efi n i te n ess of

$$
\mathbb {V} (\hat {\beta} _ {L s t a r} | X) - \mathbb {V} (\hat {\beta} _ {I G L S} | X)
$$

for a n y $B _ { X }$ s . t . $B _ { X } X = I _ { k }$ .

( I n form a l ly, we say “ I G LS i s B L U E u n d e r A 1 , A2linear , ≥ A3Rmi , a n d A4Ω” . )

 A ve ry i m porta n t coro l l a ry of t h e G M 2 t h eore m i s t h a t O LS d es p ite be i n g a L U E i s n ot B L U E u n d e r $A 1$ , A2linear , ≥ A3Rmi , a n d $A 4 \Omega$ . I n d eed , $\hat { \beta } _ { O L S } = ( X ^ { \prime } X ) ^ { - 1 } X ^ { \prime } y$ wi l l be s u c h t h a t $\mathbb { V } ( \hat { \beta } _ { O L S } | X ) = \mathbb { E } ( S E V ( \hat { \beta } _ { O L S } ) S E V ( \hat { \beta } _ { O L S } ) ^ { \prime } | X ) = c ^ { 2 } ( X ^ { \prime } X )$ − 1 X ′ Ω X ( X ′ X ) − 1 .

Let u s co n si d e r a ga i n o u r I G LS est i m ator u n d e r A 1 A2linear ≥ A3Rmi a n d A4Ω :

$$
\hat {\beta} _ {I G L S} = (X ^ {\prime} \Omega^ {- 1} X) ^ {- 1} X ^ {\prime} \Omega^ {- 1} y
$$

is a L U E wit h

$$
S E V (\hat {\beta} _ {I G L S}) = (X ^ {\prime} \Omega^ {- 1} X) ^ {- 1} X ^ {\prime} \Omega^ {- 1} \varepsilon^ {t r u e}
$$

a n d

$$
\begin{array}{l} \mathbb {V} (\hat {\beta} _ {I G L S} | X) = \mathbb {E} (S E V (\hat {\beta} _ {I G L S}) S E V (\hat {\beta} _ {I G L S}) ^ {\prime} | X) \\ = (X ^ {\prime} \Omega^ {- 1} X) ^ {- 1} X ^ {\prime} \Omega^ {- 1} \mathbb {E} (\varepsilon^ {t r u e} \varepsilon^ {t r u e ^ {\prime}} | X) \Omega^ {- 1} X (X ^ {\prime} \Omega^ {- 1} X) ^ {- 1} \\ = (X ^ {\prime} \Omega^ {- 1} X) ^ {- 1} X ^ {\prime} \Omega^ {- 1} c ^ {2} \Omega \Omega^ {- 1} X (X ^ {\prime} \Omega^ {- 1} X) ^ {- 1} \\ = c ^ {2} (X ^ {\prime} \Omega^ {- 1} X) ^ {- 1}. \\ \end{array}
$$

 I ss u e 1 . M i s-s p ec i fi ca t i o n of $\Omega$ res u l ts i n i m m ed i a te l oss of o pt i m a l ity. S u p pose we h ave

$$
\hat {\beta} _ {I G L S} ^ {m i s} \equiv (X ^ {\prime} \Omega_ {m i s} ^ {- 1} X) ^ {- 1} X ^ {\prime} \Omega_ {m i s} ^ {- 1} y
$$

for a fi n ite rea l sym m et ri c pos it ive d efi n ite $S \times S$ m a t r ix $\Omega _ { m i s } \neq \Omega$ . T h e n , c l ea r l y

$$
\begin{array}{l} \mathbb {V} (\hat {\beta} _ {I G L S} ^ {m i s} | X) = c ^ {2} (X ^ {\prime} \Omega_ {m i s} ^ {- 1} X) ^ {- 1} X ^ {\prime} \Omega_ {m i s} ^ {- 1} \Omega_ {t r u e} \Omega_ {m i s} ^ {- 1} X (X ^ {\prime} \Omega_ {m i s} ^ {- 1} X) ^ {- 1} \\ \neq c ^ {2} (X ^ {\prime} \Omega_ {t r u e} ^ {- 1} X) ^ {- 1} \neq c ^ {2} (X ^ {\prime} \Omega_ {m i s} ^ {- 1} X) ^ {- 1}. \\ \end{array}
$$

 I ss u e 2 . $\Omega = \Omega ( \lambda )$ typ i ca l ly d e pe n d s o n u n kn own pa ra m ete rs $\lambda$ , wh e re $\lambda$ i s a $p \ll S$ d i m e n s i o n a l vector .

– To u n d e rsta n d t h i s , co n s i d e r t h e exa m p l e of a n $A R ( 1 )$ m od e l gove rn i n g t h e dyn a m i cs of $\varepsilon ^ { t r u e }$ a s give n by t h e eq u a t i o n

$$
\varepsilon_ {s} ^ {t r u e} = \gamma \varepsilon_ {s - 1} ^ {t r u e} + \nu_ {s},
$$

for so m e sca l a r pa ra m ete r $\gamma \in ( 0 , 1 )$ , wh e re $\nu _ { s }$ i s a n i n n ova t i o n s u c h t h a t $\mathbb { E } ( \nu _ { s } \vert \varepsilon _ { s - 1 } ^ { t r u e } , \varepsilon _ { s - 2 } ^ { t r u e } , \ldots ) = 0$ , s a t i s fy i n g $A 4 G M ( i i d )$ wi t h fi n i te va ri a n ce eq u a l to $\sigma _ { \nu } ^ { 2 } > 0$ .

– T h e m od e l a bove i m p l i es (see exte n d ed n otes) t h a t t h e $S \times S$ va ri a n ce- cova ri a n ce st r u ct u re of sto c h a st i c e r ror $\varepsilon ^ { t r u e }$ i s give n by t h e fo l l owi n g Toe p l i tz m a t rix :

$$
\underbrace {\sigma_ {\nu} ^ {2}} _ {\text {t r e a t a s} c ^ {2}} \underbrace {\left[ \begin{array}{c c c c c} 1 & \gamma & \gamma^ {2} & \ldots & \gamma^ {S - 1} \\ \gamma & 1 & \gamma & \ldots & \gamma^ {S - 2} \\ \gamma^ {2} & \gamma & 1 & \ldots & \gamma^ {S - 3} \\ \vdots & \vdots & \vdots & \ddots & \vdots \\ \gamma_ {S - 1} & \gamma_ {S - 2} & \gamma_ {S - 3} & \ldots & 1 \end{array} \right]} _ {\text {t r e a t a s} \Omega = \Omega (\gamma)}.
$$

– Co n s i d e r a seco n d exa m p l e . T h a t i s , a n $M A ( 1 )$ m od e l gove rn i n g t h e dyn a m i cs of $\varepsilon ^ { t r u e }$ a s give n by t h e eq u a t i o n

$$
\varepsilon_ {s} ^ {t r u e} = \nu_ {s} + \delta \nu_ {s - 1},
$$

for so m e fi n i te rea l sca l a r pa ra m ete r $\delta \ > \ 0$ , wh e re $\nu _ { s }$ i s a n i n n ova t i o n , s u c h t h a t $\mathbb { E } ( \nu _ { s } \vert \varepsilon _ { s - 1 } ^ { t r u e } , \varepsilon _ { s - 2 } ^ { t r u e } , \ldots ) = 0$ , sa t i sfy i n g $A 4 G M ( i i d )$ wi t h fi n i te va ri a n ce eq u a l to $\sigma _ { \nu } ^ { 2 } > 0$ .

– T h e m od e l a bove i m p l i es (see exte n d ed n otes) t h a t t h e $S \times S$ va ri a n ce- cova ri a n ce st r u ct u re of t h e sto c h a st i c e r ror $\varepsilon ^ { t r u e }$ i s give n by t h e fo l l owi n g m a t rix :

$$
\underbrace {\sigma_ {\nu} ^ {2} (1 + \delta^ {2})} _ {\text {t r e a t a s} c ^ {2}} \underbrace {\left[ \begin{array}{c c c c c c} 1 & \frac {\delta}{1 + \delta^ {2}} & 0 & \ldots & 0 & 0 \\ \frac {\delta}{1 + \delta^ {2}} & 1 & \frac {\delta}{1 + \delta^ {2}} & \ldots & 0 & 0 \\ 0 & \frac {\delta}{1 + \delta^ {2}} & 1 & \ldots & 0 & 0 \\ \vdots & \vdots & \vdots & \ddots & \vdots & \vdots \\ 0 & 0 & 0 & \ldots & 1 & \frac {\delta}{1 + \delta^ {2}} \\ 0 & 0 & 0 & \ldots & \frac {\delta}{1 + \delta^ {2}} & 1 \end{array} \right]} _ {\text {t r e a t a s} \Omega = \Omega (\delta)}.
$$

– Co n s i d e r a t h i rd exa m p l e . T h a t i s , a ‘ M a ry l e bo n e co n d it i o n a l h ete ros ked a st i c ity m o d e l ’ wh e re by t h e s ked a st i c eq u a t i o n i s give n by

$$
w _ {s s} \equiv \mathbb {V} (\varepsilon_ {s} ^ {t r u e} | X) = \delta_ {1} ^ {2} + \delta_ {2} i n c o m e _ {s} ^ {2} + \delta_ {3} a s s e t s _ {s} ^ {4},
$$

a ss u m i n g a co n sta n t , income a n d as s ets a re a m o n g t h e co l u m n s i n t h e $X$ m a t rix , a n d t h a t a u to cor re l a t i o n i s e n t i re l y r u l ed o u t .

– T h e m od e l a bove i m p l i es t h a t t h e $S \times S$ co n d i t i o n a l va ri a n ce- cova ri a n ce st r u ct u re of t h e sto c h a st i c e r ror $\varepsilon ^ { t r u e }$ i s give n by t h e fo l l owi n g m a t rix :

$$
\underbrace {\left[ \begin{array}{c c c c c} w _ {1 1} & 0 & 0 & \ldots & 0 \\ 0 & w _ {2 2} & 0 & \ldots & 0 \\ 0 & 0 & w _ {3 3} & \ldots & 0 \\ \vdots & \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & 0 & \ldots & w _ {S S} \end{array} \right] .}
$$

t rea t $c ^ { 2 } = 1$ , a n d t h e a b ove m a t rix a s $\Omega { = } \Omega ( \delta _ { 1 } , \delta _ { 2 } , \delta _ { 3 } )$

 C l ea rly we ca n o n ly co m p u te $\hat { \beta } _ { I G L S }$ wh e n $\Omega$ i s k n ow n .   
 T h e FG LS est i m ator i s give n by

$$
\hat {\beta} _ {F G L S} \equiv (X ^ {\prime} \hat {\Omega} ^ {- 1} X) ^ {- 1} X ^ {\prime} \hat {\Omega} ^ {- 1} y,
$$

wh e re $\hat { \Omega }$ refe rs to a n est i m a te of $\Omega$ .

 T h e re a re ( broa d ly s pea ki n g) two a p proa c h es we ca n u se to h a n d l e t h e pro b l e m of est i m a t i n g $\Omega$ , d e pe n d i n g o n h ow m u c h we kn ow (or a re pre pa red to a ss u m e) a bo u t t h e form of $\Omega$ .   
 S u p pose we d o n ot kn ow a nyt h i n g a bo ut $\Omega$ . T h e fi rst a p proa c h i s to est i m a te a l l $S ( S { + } 1 ) / 2$ u n i q u e e l e m e n ts i n t h e m a t rix . H oweve r , a n yo n e fo l l owi n g t h i s st ra tegy m u st w rest l e wi t h t h e i n evi ta b l e ‘ c u rse of d i m e n s i o n a l i ty ’ t h a t e n s u es - i . e . , a s $S$ i n c rea ses , t h e n u m b e r of te r m s to be est i m a ted i s c l ea rly growi n g $O ( S ^ { 2 } )$ . F u rt h e r st r u ct u re a n d /or reg u l a ri sa t i o n m et h o d s a n d /or n o n - pa ra m et ri c b ootst ra p tec h n i q u es , etc . m ay b e req u i red i n t h i s ca se .   
 T h e seco n d a p proa c h i s to a sse rt t h a t we kn ow t h e form of $\Omega = \Omega ( \lambda )$ (or recog n i se t h a t we ca n d ed u ce t h e form of $\Omega$ fro m m ore pri m it ive a sse rt i o n s we h ave m a d e) . To t h e exte n t t h a t t h e $\lambda$ pa ra m ete r i s of d i m e n s i o n $p \ll S$ , we grea t ly red u ce t h e d i m e n s i o n a l ity of t h e pro b l e m fro m g rowi n g q u a d ra t i ca l l y i n $S$ to be i n g fixed at $p$ eve n a s $S$ pa sses to i n fi n i ty.

 S u p pose we ta ke t h e seco n d a p proa c h m e n t i o n ed o n t h e previ o u s s l i d e . T h a t i s , we kn ow $\Omega = \Omega ( \lambda )$ b ut we d o n ot kn ow $\lambda$ . T h a t i s , we est i m a te $\lambda$ u s i n g sta t i st i c $\hat { \lambda } = \lambda ( X , y )$ .   
 I n t h i s ca se , t h e FG LS est i m a tor i s give n by

$$
\begin{array}{l} \hat {\beta} _ {F G L S} \equiv (X ^ {\prime} \hat {\Omega} ^ {- 1} X) ^ {- 1} X ^ {\prime} \hat {\Omega} ^ {- 1} y \\ = (X ^ {\prime} \Omega^ {- 1} (\hat {\lambda}) X) ^ {- 1} X ^ {\prime} \Omega^ {- 1} (\hat {\lambda}) y \\ = N L F (X, y) \\ \end{array}
$$

a n d a ccord i n g l y,

$$
S E V (\hat {\beta} _ {F G L S}) = N L F (X, \varepsilon^ {t r u e}, \beta^ {t r u e}).
$$

As a co n seq u e n ce , t h e FG LS est i m a tor wi l l be b i a sed i n ge n e ra l , eve n i n ca ses wh e re t h e I G LS est i m a tor wo u l d h ave bee n u n b i a sed .

(To previ ew a n u p co m i n g res u l t , we wi l l see t h a t t h e FG LS est i m a tor wi l l be a sym ptot i ca l ly u n b i a sed ; i n fa ct , i t wi l l b e co n s i ste n t a n d u n i for m l y a sy m ptot i ca l l y n or m a l ( C U A N ) a n d a sy m ptot i ca l l y eq u iva l e n t to t h e I G LS est i m a tor , i f $\hat { \lambda }$ i s a co n s i ste n t est i m a tor of $\lambda$ . )

# To p i c 7 . U n i fi ed t h eoret i ca l a p proa c h to l i n ea r/ n o n- l i n ea r reg ress i o n

 I ss u e # 5 . Co n d i t i o n a l p o p u l a t i o n d i st ri b u t i o n of “t r u e” reg ress i o n d i st u r ba n ce ( A5)   
* Est i m a tor 6 . M axi m u m L i ke l i h ood Est i m a t i o n ( M L E )

Let u s bri efl y reca p t h e est i m a tors i n o u r too l kit so fa r :

<table><tr><td>Estimator</td><td>Notation</td></tr><tr><td>1.</td><td>βOLS</td></tr><tr><td>2.</td><td>βLAD</td></tr><tr><td>3.</td><td>βLstar</td></tr><tr><td>4.</td><td>βGMM</td></tr><tr><td>5a.</td><td>βIGLS</td></tr><tr><td>5b.</td><td>βFGLS</td></tr></table>

 Co n s i d e r t h e pa ra m et ri c est i m a t i o n pro b l e m give n a d a ta set , $\{ y , X \}$ , fro m a n a ss u m ed d a ta - ge n e ra t i n g pro cess gove r n ed by a n u n k n ow n p-d i m e n s i o n a l pa ra m ete r vector θtrue . $p$   
 S u p pose we ca n c h a ra cte ri se

$$
f (y | X; \theta^ {t r u e})
$$

a s t h e j o i n t d e n s i ty fu n ct i o n of $y | X$ give n $\theta ^ { t r u e }$ .

– T h e n , for i n sta n ce , i n t h e N L R M wi t h $A 4 G M ( i i d )$ , we wo u l d h ave

$$
\theta^ {t r u e} \equiv (\beta^ {t r u e ^ {\prime}}, \sigma^ {2}) ^ {\prime}.
$$

– A n a l ogo u s ly, i n t h e N L R M wit h $A 4 \Omega$ wh e re $\Omega = \Omega ( \lambda )$ , we wo u l d h ave

$$
\theta^ {t r u e} \equiv (\beta^ {t r u e ^ {\prime}}, c ^ {2}, \lambda) ^ {\prime}.
$$

– N ote t h a t $\theta ^ { t r u e }$ i s a ca tc h - a l l vector of pa ra m ete rs , a n d i t i s p oss i b l e for $\theta ^ { t r u e }$ to co n ta i n a d d it i o n a l e l e m e n ts d e pe n d i n g o n t h e s pec i fi c fa m i ly a ss u m ed u n d e r A5 speci f i c .

 We ca n refoc u s o u r co n ce pt i o n of $f ( \boldsymbol { y } | \boldsymbol { X } ; \boldsymbol { \theta } )$ a s a fu n ct i o n of $\theta$ give n t h e d a ta . Co n s i d e red a s a fu n ct i o n of $\theta$ , it i s n o l o n ge r a va l i d d e n s ity (wit h res p ect to t h e va l u es of $\theta$ i n t h e pa ra m ete r s pa ce , $\Theta$ ) . T h a t i s , i t i s n e i t h e r g u a ra n teed to b e n o n- n ega t ive for a l l va l u es of $\theta \in \Theta$ , n or d oes it i n tegra te to 1 wit h res pect to $\theta \in \Theta$ . We ca l l i t a l i ke l i h oo d fu n ct i o n .

 S u p pose we h ave A 1 , A2linear, ≥ A3Rmi , so m e A4 a n d so m e A5speci f ic .   
 T h e n , t h e m et h od of M L E sta rts by d efi n i n g t h e l i ke l i h ood a s

$$
\mathcal {L} (\theta ; y | X) \equiv f (y | X; \theta),
$$

u n d e rstood to be co n s i d e red a fu n ct i o n of $\theta \in \Theta$ , wh e re $\Theta$ i s t h e pa ra m ete r s pa ce .

 P i o n ee ri n g sta t i st i c i a n , S i r Ro n a l d F i s h e r ’ s i d ea wa s to est i m a te $\theta ^ { t r u e }$ by

$$
\hat {\theta} _ {M L E} \equiv \arg \max _ {\theta} \mathcal {L} (\theta ; y | X) = \arg \max _ {\theta} \ln \mathcal {L} (\theta ; y | X),
$$

give n t h a t t h e n a t u ra l l oga ri t h m fu n ct i o n , $\ln ( \cdot )$ , i s st ri ct l y i n c rea s i n g i n i ts a rg u m e n t . ( See be l ow S i r Ro n a l d F i s h e r ’ s p l a q u e i n H a m pstea d , Lo n d o n Boro u gh of Ca m d e n . )

![](images/78d3ef218c19f76dd69951a86b258f876efff859ed987c20a3747a4042c09295.jpg)

 To p i c 1 1 . Asym ptot i c a n d l a rge sa m p l e res u l ts

Asym ptoti c resu lts : refe r to t h eoret i ca l res u l ts ( a bo u t t h e pro ba b i l i st i c b e h avi o u r of o u r est i m a tor) t h a t h o l d o n l y i n t h e l i m i t a s $S$ pa sses to $\infty$ .

La rge sa m p l e resu lts : refe r to a sym ptot i c res u l ts t h a t a re t h o u gh t to h o l d a p proxi m a te ly for s u ffi c i e n t l y l a rge ( a l b e i t fi n i te) $S$ .

<table><tr><td>Estimator</td><td>Notation</td></tr><tr><td>1.</td><td>βOLS</td></tr><tr><td>2.</td><td>βLAD</td></tr><tr><td>3.</td><td>βLstar</td></tr><tr><td>4.</td><td>βGMM</td></tr><tr><td>5a.</td><td>βIGLS</td></tr><tr><td>5b.</td><td>βFGLS</td></tr><tr><td>6.</td><td>βMLE</td></tr></table>

For a ny m et h od , ge n e ri ca l ly d e n oted $\hat { \theta } _ { m e t h o d }$ , we d efi n e

$$
S E V (\hat {\theta} _ {m e t h o d}) = \hat {\theta} _ {m e t h o d} - \theta^ {t r u e}.
$$

Co n s i d e r a n a l yt i c m et h o d s for est i m a t i o n ( i . e . , w h e re by t h e o bj ect ive fu n ct i o n i s twi ce co n t i n u - o u s l y d i ffe re n t i a b l e) . We s u m m a ri se t h e co m m o n st r u ct u re/for m of t h e S EV for s u c h est i m a tors :

 S u m m a ry 1 . For a n a l yt i c m et h o d s t h a t a re l i n ea r i n y a n d $\varepsilon ^ { t r u e }$ , t h e re exi sts a $k \times k$ m a t r ix , $B _ { s }$ , a n d a $k \times 1$ vector , $a _ { s }$ , s u c h t h a t

$$
S E V (\hat {\beta} _ {m e t h o d}) = \hat {\beta} _ {m e t h o d} - \beta^ {t r u e} = \left(\sum_ {s = 1} ^ {S} B _ {s}\right) ^ {- 1} \sum_ {s = 1} ^ {S} a _ {s}.
$$

Exa m p le : We saw , for O LS , t h e d efi n it i o n s : $B _ { s } = x _ { s } x _ { s } ^ { \prime }$ , a n d $a _ { s } = x _ { s } \varepsilon ^ { t r u e }$

 S u m m a ry 2 . For a n a l yt i c m et h o d s t h a t a re n o n- l i n ea r , t h e re exi sts a $k \times k$ m a t r ix , $B _ { s }$ , a n d a $k \times 1$ vector , $a _ { s }$ , s u c h t h a t

$$
S E V (\hat {\beta} _ {m e t h o d}) = \hat {\beta} _ {m e t h o d} - \beta^ {t r u e} \approx \left(\sum_ {s = 1} ^ {S} B _ {s}\right) ^ {- 1} \sum_ {s = 1} ^ {S} a _ {s},
$$

wh e re t h e a p proxi m a t i o n $( \ " \approx \ " )$ i s rea so n a b l e for s u ffi c i e n t l y l a rge $S$ , a n d t h e a p proxi m a t i o n i n fa ct beco m es exa ct i n t h e l i m it a s $S$ pa sses to $\infty$ .

Exa m p l e : We wi l l see , for M L E i n t h e ge n e ra l l i n ea r/ n o n- l i n ea r ca se , t h e d efi n i t i o n s :

$B _ { s } = - \ell _ { s } ^ { \beta \beta ^ { \prime } } ( \beta ^ { t r u e } )$ , a n d $a _ { s } = \ell _ { s } ^ { \beta } ( \beta ^ { t r u e } )$ , wh e re $\ell _ { s } ^ { \beta }$ d e n otes t h e score co n t ri b u t i o n (vector) by t h e s- t h o bse rva t i o n a n d ℓββ ′s $s$ $\ell _ { s } ^ { \beta \beta ^ { \prime } }$ d e n otes t h e cor res p o n d i n g seco n d -ord e r d e riva t ive ( m a t rix) .

# Sa m ple averages a nd norma l ised sa m ple averages ( 1 of 2 )

I n ea c h ca se a b ove ( l i n ea r/ n o n - l i n ea r) , we co n s i d e r a l ge bra i c st r u ct u res i n vo l vi n g sa m p l e a ve ra ges :

 S u m m a ry 1 . For a n a l yt i c m et h o d s t h a t a re l i n ea r i n y a n d $\varepsilon ^ { t r u e }$ , t h e re exi sts a $k \times k$ m a t r ix , $B _ { s }$ , a n d a $k \times 1$ vector , $a _ { s }$ , s u c h t h a t

$$
S E V (\hat {\beta} _ {m e t h o d}) = \hat {\beta} _ {m e t h o d} - \beta^ {t r u e} = \left(\frac {1}{S} \sum_ {s = 1} ^ {S} B _ {s}\right) ^ {- 1} \frac {1}{S} \sum_ {s = 1} ^ {S} a _ {s}.
$$

Exa m p le : We saw , for O LS , t h e d efi n it i o n s : $B _ { s } = x _ { s } x _ { s } ^ { \prime }$ , a n d $a _ { s } = x _ { s } \varepsilon ^ { t r u e }$ .

A bove , by sca l i n g t h ro u gh o ut by $( 1 / S )$ , we co m p u te sa m p l e ave ra ges i n bot h t h e i nve rse a n d n o n- i nve rse te rm of t h e S EV . T h i s form u l a t i o n of t h e S EV wi l l be ext re m e ly u sefu l to u s for co n s i ste n cy proofs (co nve rge n ce i n pro ba b i l ity) .

I n co n t ra st , for a sy m ptot i c n or m a l i ty proofs ( co n ve rge n ce i n d i st ri b u t i o n ) , i t i s u sefu l to co n s i d e r t h e S EV i n te r m s of n or m a l i sed sa m p l e ave ra ges a s fo l l ows :

$$
\sqrt {S} S E V (\hat {\beta} _ {m e t h o d}) = \sqrt {S} (\hat {\beta} _ {m e t h o d} - \beta^ {t r u e}) = \left(\frac {1}{S} \sum_ {s = 1} ^ {S} B _ {s}\right) ^ {- 1} \frac {1}{\sqrt {S}} \sum_ {s = 1} ^ {S} a _ {s}.
$$

# Sa m ple averages a nd norma l ised sa m ple averages (2 of 2 )

 S u m m a ry 2 . For a n a l yt i c m et h o d s t h a t a re n o n- l i n ea r , t h e re exi sts a $k \times k$ m a t r ix , $B _ { s }$ , a n d a $k \times 1$ vector , $a _ { s }$ , s u c h t h a t

$$
S E V (\hat {\beta} _ {m e t h o d}) = \hat {\beta} _ {m e t h o d} - \beta^ {t r u e} \approx \left(\frac {1}{S} \sum_ {s = 1} ^ {S} B _ {s}\right) ^ {- 1} \frac {1}{S} \sum_ {s = 1} ^ {S} a _ {s},
$$

wh e re t h e a p proxi m a t i o n $( \ " \approx \ " )$ i s rea so n a b l e for s u ffi c i e n t l y l a rge $S$ , a n d t h e a p proxi m a t i o n i n fa ct beco m es exa ct i n t h e l i m it a s $S$ pa sses to $\infty$ .

Exa m p l e : We wi l l see , for M L E i n t h e ge n e ra l l i n ea r/ n o n- l i n ea r ca se , t h e d efi n i t i o n s :

$B _ { s } = - \ell _ { s } ^ { \beta \beta ^ { \prime } } ( \beta ^ { t r u e } )$ , a n d $a _ { s } = \ell _ { s } ^ { \beta } ( \beta ^ { t r u e } )$ , wh e re $\ell _ { s } ^ { \beta }$ d e n otes t h e score co n t ri b u t i o n (vector) by t h e $s$ -t h o bse rva t i o n a n d $\ell _ { s } ^ { \beta \beta ^ { \prime } }$ d e n otes t h e cor res p o n d i n g seco n d -ord e r d e riva t ive ( m a t rix) .

A bove , by sca l i n g t h ro u gh o ut by $( 1 / S )$ , we co m p u te sa m p l e ave ra ges i n bot h t h e i nve rse a n d n o n- i nve rse te r m of t h e a p proxi m a te S EV . T h i s for m u l a t i o n of t h e a p proxi m a te S EV wi l l b e ext re m e l y u sefu l to u s for co n s i ste n cy proofs (co n ve rge n ce i n pro ba b i l ity) .

I n co n t ra st , for a sy m ptot i c n or m a l i ty proofs ( co n ve rge n ce i n d i st ri b u t i o n ) , i t i s u sefu l to co n s i d e r t h e a p proxi m a te S EV i n te r m s of n or m a l i sed sa m p l e ave ra ges a s fo l l ows :

$$
\sqrt {S} (S E V (\hat {\beta} _ {m e t h o d})) = \sqrt {S} (\hat {\beta} _ {m e t h o d} - \beta^ {t r u e}) \approx \left(\frac {1}{S} \sum_ {s = 1} ^ {S} B _ {s}\right) ^ {- 1} \frac {1}{\sqrt {S}} \sum_ {s = 1} ^ {S} a _ {s}.
$$

 For m et h od 1 ( O LS ) a n d m et h od 4 ( G M M wit h A2linear ) , we h ave

$$
S E V (\hat {\beta} _ {O L S}) = \hat {\beta} _ {O L S} - \beta^ {t r u e} = (X ^ {\prime} X) ^ {- 1} X ^ {\prime} \varepsilon^ {t r u e} = \left(\sum_ {s = 1} ^ {S} x _ {s} x _ {s} ^ {\prime}\right) ^ {- 1} \sum_ {s = 1} ^ {S} x _ {s} \varepsilon_ {s} ^ {t r u e}.
$$

 M et h od 2 ( LA D ) i s n ot a n a lyt i c ; a n d t h e S EV for m et h od 3 ( Lsta r) i s n ot u sefu l to co n s i d e r .   
 For m et h od 5a ( I G LS ) , s u p pose (for co nve n i e n ce) t h a t we h ave $A 4 \Omega$ wi t h a d i a go n a l Ω . T h e n , we h ave

$$
\begin{array}{l} S E V (\hat {\beta} _ {I G L S}) = \hat {\beta} _ {I G L S} - \beta^ {t r u e} = (X ^ {\prime} \Omega^ {- 1} X) ^ {- 1} X ^ {\prime} \Omega^ {- 1} \varepsilon^ {t r u e} \\ = \left(\sum_ {s = 1} ^ {S} x _ {s} \omega_ {s s} x _ {s} ^ {\prime}\right) ^ {- 1} \sum_ {s = 1} ^ {S} x _ {s} \omega_ {s s} \varepsilon_ {s} ^ {t r u e}, \\ \end{array}
$$

wh e re we i gh t $\omega _ { s t } = \left[ \Omega ^ { - 1 } \right] _ { s t }$ i s t h e $( s , t )$ -t h e l e m e n t of $\Omega ^ { - 1 }$ , fo r $s , t = 1 , . . . , S$

T h e exa ct we i gh ts , $\omega _ { s t }$ , a re u n i m p orta n t ; w h a t i s i m p orta n t i s t h a t t h e S EV of t h e I G LS est i m a tor ca n be expressed i n t h e sa m e co m m o n form a s ot h e r a n a lyt i c est i m a tors .

 We co n s i d e r m et h od 6 ( M L E ) i n a l ot of d eta i l i n t h e n ext s l i d es .

# S pecific S EV for M L E (whether l i near/ non- l i near i n y)

Reca l l t h a t for a pa ra m et ri c est i m a t i o n pro b l e m for $p$ - d i m e n s i o n a l pa ra m ete r vector $\theta ^ { t r u e }$ , i n t h e ge n e ra l i sed L R M , vi a m axi m u m l i ke l i h ood est i m a t i o n , we i m pose t h e a ss u m pt i o n s A 1 , A2linear, ≥ A3Rmi , A4Ω . independent , a n d so m e A5speci f ic.

I n t h e previ o u s se n te n ce , A4Ω . independent refe rs to t h e $A 4 \Omega$ a ss u m pt i o n wi t h t h e a d d i t i o n of i n d e pe n d e n ce i m posed a c ross t h e $s$ d i m e n s i o n (so t h a t $\Omega$ i s n ecessa ri l y d i a go n a l ) . Reca l l t h a t t h i s a ss u m pt i o n m a kes M L E m ore m a n a gea b l e s i n ce we ca n t h e re by o bta i n t h e ove ra l l l i ke l i h ood a s t h e pro d u ct of t h e m a rgi n a l co n t ri b u t i o n s to t h e ove ra l l l i ke l i h oo d by ea c h o bse rva t i o n .

U n d e r t h e give n s pec i fi ca t i o n , a n d d e n ot i n g $\{ y , X \}$ a s data , we h ave

$$
\hat {\theta} _ {M L E} = \arg \max \ell (\theta ; d a t a) = \arg \max \sum_ {s = 1} ^ {S} \ell_ {s} (\theta ; d a t a),
$$

wh e re $\ell _ { s } ( \theta ; d a t a ) = \log f _ { s } ( y _ { s } | X ; \theta )$ fo r $s = 1 , . . . , S$ , a re t h e m a rgi n a l co n t ri b u t i o n s of ea c h o bse rva t i o n to t h e ove ra l l l og l i ke l i h ood .

We n eed to m axi m i se a n o bj ect ive fu n ct i o n b u t FO Cs/ S O Cs ca n o n ly be d efi n ed i f t h e l i ke l i h ood fu n ct i o n i s twi ce co n t i n u o u s l y d i ffe re n t i a b l e . I n t h e a bse n ce of twi ce co n t i n u o u s d i ffe re n t i a b i l i ty – e . g . , u n d e r $A 5 L A D$ or A5LD E – n o a n a lyt i c so l u t i o n to t h e m axi m i sa t i o n pro b l e m exi sts .

Let u s s u p pose , for t h e m o m e n t , t h a t t h e l i ke l i h ood d oes a d m it a co n t i n u o u s seco n d d e riva t ive .

N ow co n s i d e r t h e m axi m i sa t i o n pro ced u re a s o u t l i n ed i n t h e fo l l owi n g s l i d es .

# FO C a nd S O C for M L E (whether l i near/ non- l i near i n y)

U n d e r twi ce co n t i n u o u s d i ffe re n t i a b i l ity of t h e l i ke l i h ood fu n ct i o n , a n d u n d e r t h e give n m od e l s pec i fi ca t i o n (o n t h e previ o u s s l i d e) , t h e M L est i m a tor i s ( a t l ea st i m p l i c it ly) d efi n ed by t h e fo l l owi n g fi rst a n d seco n d ord e r co n d it i o n s ( FO Cs/ S O Cs) :

FO C :

$$
\frac {\partial \ell (\theta ; d a t a)}{\partial \theta} \Big | _ {\theta = \hat {\theta} _ {M L E}} = \sum_ {s = 1} ^ {S} \left. \ell_ {s} ^ {\theta} (\theta ; d a t a) \right| _ {\theta = \hat {\theta} _ {M L E}} = \sum_ {s = 1} ^ {S} \frac {\partial \log f _ {s} (y _ {s} | X ; \theta)}{\partial \theta} \Big | _ {\theta = \hat {\theta} _ {M L E}} = 0.
$$

SOC :

$$
\frac {\partial^ {2} \ell (\theta ; d a t a)}{\partial \theta \partial \theta^ {\prime}} \Big | _ {\theta = \hat {\theta} _ {M L E}} = \sum_ {s = 1} ^ {S} \ell_ {s} ^ {\theta \theta^ {\prime}} (\theta ; d a t a) \Big | _ {\theta = \hat {\theta} _ {M L E}} = \sum_ {s = 1} ^ {S} \frac {\partial \log f _ {s} (y _ {s} | X ; \theta)}{\partial \theta} \Big | _ {\theta = \hat {\theta} _ {M L E}}
$$

i s n ega t ive d efi n ite .

N ote a bove t h a t fi rst ord e r d e riva t ive of t h e l og of t h e l i ke l i h ood ( a l so ca l l ed t h e “score fu n ct i o n ” ) i s a $p \times 1$ vector ; a n d t h e seco n d ord e r d e riva t ive of t h e l og of t h e l i ke l i h ood i s a $p \times p$ m a t r ix .

# Approxi mate S EV for M L E (whether l i near/ non- l i near i n y)

Foc u ss i n g o n t h e FO Cs for a m o m e n t , we h a d u n d e r twi ce co n t i n u o u s d i ffe re n t i a b i l ity of t h e l i ke l i h ood fu n ct i o n a n d t h e give n m od e l s pec i fi ca t i o n , t h a t t h e M L est i m a tor i s d efi n ed by t h e fo l l owi n g syste m of $p$ eq u a t i o n s i n $p$ u n k n ow n s :

FO C :

$$
\sum_ {s = 1} ^ {S} \ell_ {s} ^ {\theta} (\theta ; d a t a) \Big | _ {\theta = \hat {\theta} _ {M L E}} = 0.
$$

N ow , u n d e r A5 Gaus si an for exa m p l e , we ca n so lve exp l i c it ly for $\hat { \theta } _ { M L E }$ . B u t wh a t i f we h ave a d i ffe re n t A5 speci f i c , wh i c h a l t h o u gh twi ce co n t i n u o u s ly d i ffe re n t i a b l e , d oes n ot a d m it a c l osedfor m express i o n for t h e M L est i m a tor? I n ot h e r word s , w h a t i f t h e score fu n ct i o n i s n o n - l i n ea r i n $\theta ?$ (A n s : We fi n d a l i n ea r a p proxi m a t i o n to t h e score fu n ct i o n a t $\theta ^ { t r u e }$ a n d set t h a t to ze ro ! )

Co n s i d e r t h e fi rst ord e r Tayl or expa n s i o n of $\textstyle \sum _ { s = 1 } ^ { S } \ell _ { s } ^ { \theta } ( \theta ; d a t a )$ a t $\theta ^ { t r u e }$ give n by

$$
L H S = \sum_ {s = 1} ^ {S} \ell_ {s} ^ {\theta} (\hat {\theta} _ {M L E}; d a t a) \approx \sum_ {s = 1} ^ {S} \ell_ {s} ^ {\theta} (\theta^ {t r u e}; d a t a) + \sum_ {s = 1} ^ {S} \ell_ {s} ^ {\theta \theta^ {\prime}} (\theta^ {t r u e}; d a t a) (\hat {\theta} _ {M L E} - \theta^ {t r u e}) = R H S
$$

T h e s i m p l e i n t u it i o n i s t h a t s i n ce we ca n n ot d i rect ly set L H S to ze ro a n d so lve , we set a fi rst ord e r a p proxi m a t i o n of t h e L H S – i . e . , t h e R H S – to ze ro a n d so lve t h a t i n stea d .

# Approxi mate S EV for M L E (whether l i near/ non- l i near i n y)

Co n t i n u i n g t h e a n a l ys i s o n t h e previ o u s s l i d e , we h a ve t h a t

$$
\sum_ {s = 1} ^ {S} \ell_ {s} ^ {\theta} (\theta^ {t r u e}; d a t a) + \sum_ {s = 1} ^ {S} \ell_ {s} ^ {\theta \theta^ {\prime}} (\theta^ {t r u e}; d a t a) (\hat {\theta} _ {M L E} - \theta^ {t r u e}) \approx 0,
$$

so t h a t by rea r ra n gi n g , we o bta i n

$$
\left(\hat {\theta} _ {M L E} - \theta^ {t r u e}\right) \approx - \left(\sum_ {s = 1} ^ {S} \ell_ {s} ^ {\theta \theta^ {\prime}} (\theta^ {t r u e}; d a t a)\right) ^ {- 1} \sum_ {s = 1} ^ {S} \ell_ {s} ^ {\theta} (\theta^ {t r u e}; d a t a),
$$

a s t h e a p proxi m a te S EV for M L est i m a tor wh e re t h e a p proxi m a t i o n i s co n s i d e red rea so n a b l e for s u ffi c i e n t ly l a rge sa m p l e s i ze , $S$ .

Co n s i d e r A2linear wit h two sets of regressors , $X ^ { G }$ a n d $X ^ { B }$ :

$$
y = X ^ {G} \beta^ {G} + X ^ {B} \beta^ {B} + \epsilon^ {t r u e}
$$

or , i n o bse rva t i o n- by-o bse rva t i o n for m :

$$
y _ {s} = x _ {s} ^ {G ^ {\prime}} \beta^ {G} + x _ {s} ^ {B ^ {\prime}} \beta^ {B} + x _ {s} ^ {B ^ {\prime}} \beta^ {B} + \epsilon_ {s} ^ {t r u e} = x _ {s} ^ {\prime} \beta + \epsilon_ {s} ^ {t r u e}
$$

G ive n A 1 a n d $A 2$ , t h e S a m p l i n g E rror Vector of O LS i s :

$$
S E V (\hat {\beta} _ {o l s}) = \left(\sum_ {s} B _ {s}\right) ^ {- 1} \cdot \sum_ {s} a _ {s} ^ {o l s} = \left(\sum_ {s} x _ {s} x _ {s} ^ {\prime}\right) ^ {- 1} \cdot \sum_ {s} x _ {s} \epsilon_ {s}
$$

B u t :

$$
E a _ {s} ^ {o l s} = E \left[ \begin{array}{c} x _ {s} ^ {G} \epsilon_ {s} \\ x _ {s} ^ {B} \epsilon_ {s} \end{array} \right] = \left[ \begin{array}{c} E x _ {s} ^ {G} \epsilon_ {s} \\ E x _ {s} ^ {B} \epsilon_ {s} \end{array} \right] = \left[ \begin{array}{c} = 0 \\ \neq 0 \end{array} \right]
$$

beca u se we a re to l d t h a t t h e ‘ good ’ va ri a b l es sa t i sfy t h e wea k exoge n e ity co n d it i o n $E x ^ { G } \epsilon _ { s } = 0$ , wh i l e t h e ‘ ba d ’ va ri a b l es d o n ot (s i n ce t h ey a re endogenous w . r . t . to t h e e rror) .

T h e refore , O LS wi l l b e i n co n s i ste n t for a l l t h e $\beta \mathsf { s }$ s i n ce i n ge n e ra l $X ^ { G }$ a n d $X ^ { B }$ a re cor re l a ted .

S u p pose we ca n fi n d a d ata m at rix $W$ of t h e sa m e d i m e n s i o n a s t h e ori gi n a l $X$ a n d of fu l l ra n k $k$ . We t h e n d efi n e :

$$
W ^ {\prime} \epsilon^ {t r u e} = \sum_ {s} w _ {s} \epsilon_ {s} ^ {t r u e} = \sum_ {s} a _ {s} ^ {i v e}
$$

s u c h t h a t :

$$
E a _ {s} ^ {i v e} = 0
$$

a t t h e t r u e pa ra m ete r va l u es .

We n ow u se t h e G M M i d ea a n d re ly o n t h e t ru e * po p u l a t i o n * ort h ogo n a l ity co n d it i o n s i m p l i ed by t h e t ru e m od e l : $A 2 : y = X \beta + \epsilon ^ { t r u e }$ a n d

$$
A 3 R s r u: W, X ^ {G} E w _ {s} \epsilon^ {t r u e} = 0, E x _ {s} ^ {G ^ {\prime}} = 0
$$

T h e refore , we d efi n e t h e G M M = I V E by u s i n g t h e *sa m p l e* ort h ogo n a l ity co n d it i o n s :

$$
W ^ {\prime} \hat {\epsilon} ^ {i v e} = W ^ {\prime} (y - X \hat {\beta} _ {i v e}) = 0
$$

to m i m i c t h e p o p u l a t i o n O Cs . F i n a l l y, so l vi n g for $\hat { \beta } ^ { i v e }$ we o bta i n :

$$
\hat {\beta} _ {i v e} = (W ^ {\prime} X) ^ {- 1} W ^ {\prime} y
$$

beca u se $W ^ { \prime } X$ i s sq u a re a n d i n ve rt i b l e give n t h a t $r a n k ( X ) = r a n k ( W ) = k .$

I n co n c l u s i o n , t h e I V E wi l l be co n s i ste n t provi d ed eve ry co l u m n u sed to co n st ru ct $W$ i s a wea k ly exoge n o u s va ri a b l e w . r . t . t h e t r u e e r ror ( i . e . , sa t i sfi es A3 Rs r u ) .

# Overview/ D iscussion poi nt # 1 .

#  D i sc u ss i o n p o i n t $\# 1$ . I dentification

– I d e n t i fi ca t i o n refe rs to t h e ma thema tical a b i l i ty to so l ve u n i q u e l y for a l l pa ra m ete rs . T h i s i s d i st i n ct fro m est i m a t i o n , w h i c h a i m s to u se sta tistical m et h o d s to l ea r n a b o u t u n k n own pa ra m ete rs give n a sa m p l e .   
– Pa ra m ete r i d e n t i fi ca t i o n i s a ste p i n t h e t h eoret i ca l a n a l ys i s of t h e m o d e l give n a s p ec ifi ca t i o n ; pa ra m ete r est i m a t i o n i s a ste p i n e m p i ri ca l a n a l ys i s of t h e m o d e l give n d a ta .   
– We m u st a ssess wh et h e r o u r m od e l i s i d e n t i fi ed (so a s to s u bseq u e n t ly pe rm it co n s i ste n t est i m a t i o n ) i n t h e prese n ce of a n exoge n o u s-e n d oge n o u s regressor d i c h oto my .

#  D i sc u ss i o n p o i n t $\# 2$ . I nstru ment va l id ity a nd releva nce (a nd feasi bi l ity)

– Va l i d ity a n d re l eva n ce a re t h e n a m es give n to o u r i d e n t i fi ca t i o n co n d it i o n s . T h ese co nd i t i o n s p e r m i t u s to u se I V E m et h o d s to co n s i ste n t l y est i m a te pa ra m ete rs of i n te rest .

#  D i sc u ss i o n p o i n t $\# 3$ . Statistica l properties of i nstru menta l varia ble esti mators

– T h e I V E m et h o d ty p i ca l l y yi e l d s a n a l yt i c est i m a tors . T h i s p e r m i ts u s to u se t h e sta n d a rd form of o u r ( previ o u s ly-see n ) S EV i n ord e r to i nvest i ga te exa ct a n d a sym ptot i c pro pe rt i es .

T h e key res u l ts i n t h e I V E ca se , give n $S \times k$ i n st r u m e n t m a t rix $W$ a re a s fo l l ows :

( i ) U n d e r re l eva n ce , a n L L N e n s u res t h a t $p l i m \left( W ^ { \prime } X / S \right)$ $\left( W ^ { \prime } X / S \right)$ i s a fi n i te n o n -s i n g u l a r $k \times k$ m a t r ix . $S {  } { \infty }$   
( i i ) U n d e r va l i d i ty , a n L L N e n s u res t h a t $p | _ { \stackrel { \cdot } { S  \infty } } ( W ^ { \prime } \varepsilon / S )$ i s t h e $k$ -d i m e n s i o n a l ze ro vector . $S {  } { \infty }$   
( i i i ) U n d e r t h e fea s i b i l i ty co n d i t i o n , t h e S EV of t h e est i m a tor , $( W ^ { \prime } X ) ^ { - 1 } W ^ { \prime } \varepsilon$ , i s we l l-d efi n ed .   
( iv) We wi l l a l so req u i re a ‘ we l l- b e h a ved ’ p o p u l a t i o n seco n d m o m e n t m a t rix for i n st r u m e n ts W a s ca pt u red by exi ste n ce a n d n o n -s i n g u l a ri ty of $p l i m \left( W ^ { \prime } W / S \right)$ $S {  } { \infty }$ .   
$( \nu )$ U n d e r t h ese co n d i t i o n s , a C LT e n s u res t h a t $W ^ { \prime } \varepsilon / \sqrt { S } \stackrel { d } { \to } \mathcal { N } ( 0 , \Sigma )$ a s $S$ pa sses to i n fi n i ty, wh e re $\Sigma = p \mathrm { l i m } \ ( W ^ { \prime } W / S )$ u n d e r $A 4 G M ( i i d )$ a n d $\Sigma = \operatorname* { p l i m } _ { S \to \infty } \left( W ^ { \prime } \Omega W / S \right)$ u n d e r $A 4 \Omega$ . $S {  } { \infty }$   
(v i ) I t fo l l ows fro m ( i )–( i i i ) a n d S l u ts ky ’ s t h eore m t h a t $S E V ( \hat { \beta } _ { I V E } ) \stackrel { p } {  } 0$ a s $S \to \infty$ ; a n d i t fo l l ows fro m $( \mathfrak { i } ) \mathfrak { - } ( \mathfrak { v } )$ a n d C ra m ´e r ’ s t h eore m t h a t ${ \sqrt { S } } \cdot S E V ( { \hat { \beta } } _ { I V E } ) \ { \xrightarrow { d } } \ Z _ { 0 }$ a s $S \to \infty$ , fo r $k \times 1$ vector $Z _ { 0 }$ , w h e re $Z _ { 0 } \sim { \mathcal { N } } ( 0 , \Sigma _ { Z } )$ wi t h t h e d efi n i t i o n of $\Sigma _ { Z }$ a s p e r :

$$
c ^ {2} \left(\operatorname * {p l i m} _ {S \to \infty} (W ^ {\prime} X / S)\right) ^ {- 1} \operatorname * {p l i m} _ {S \to \infty} (W ^ {\prime} \Omega W / S) \left(\operatorname * {p l i m} _ {S \to \infty} (X ^ {\prime} W / S)\right) ^ {- 1}
$$

u n d e r $A 4 \Omega$ .

S u p pose t h e t ru e D G P i s give n by $A 1 , A 2 l i n e a r , \geq A 3 R m i , A 4 G M i i d ,$ a n d A5LD E , wh e re $A 5 L D E$ re prese n ts t h e La p l a ce Do u b l e Exp o n e n t i a l d i st ri b u t i o n a l a ss u m pt i o n .

Let u s co n s i d e r a l te r n a t ive m i n i m a l s p ec i fi ca t i o n s d efi n i n g pa rt i c u l a r est i m a tors :

 M i n i m a l a ss u m pt i o n s for t h e O LS est i m a tor ,

$$
\hat {\beta} _ {O L S} = (X ^ {\prime} X) ^ {- 1} X ^ {\prime} y,
$$

wo u l d be M A F E- O LS : A 1 .

 M i n i m a l a ss u m pt i o n s for t h e I G LS est i m a tor a ss u m i n g , say $\Omega _ { A R ( 1 ) }$

$$
\hat {\beta} _ {I G L S. A R (1)} = (X ^ {\prime} \Omega_ {A R (1)} ^ {- 1} X) ^ {- 1} X ^ {\prime} \Omega_ {A R (1)} ^ {- 1} y
$$

wo u l d be M A F E- I G LS . AR ( 1 ) : A 1 , A2linear, ≥ A3Rmi , A4ΩAR( 1) .

 Let u s a l so co n s i d e r exa m p l es of m i n i m a l a ss u m pt i o n s for t h e M L est i m a tor (see n ext s l i d e) . N ote t h a t M L E i s t h e m ost d e m a n d i n g est i m a t i o n m et h o d o n o u r l i st i n te r m s of t h e i n te n s i ty of u n d e rlyi n g a ss u m pt i o n s n eed ed for it to be m a d e o pe ra t i o n a l i n pra ct i ce . Reca l l t h a t M L E req u i res a l l five a ss u m pt i o n s for it to eve n j u st be d efi n ed .

Co nt i n u e to s u p pose t h at D G P : A 1 , A2linear, ≥ A3Rmi , A4GM iid, a n d A5LD E .

 Co n s i d e r M L E u n d e r t h e La p l a ce Do u b l e Expo n e n t i a l d i st ri b u t i o n . We h ave :

$$
\hat {\beta} _ {M L E. i i d. L D E} = \hat {\beta} _ {L A D},
$$

wh e re by t h e m i n i m a l set of a ss u m pt i o n s wo u l d be

M A F E- LA D : A 1 , A2linear, ≥ A3Rmi , A4GM iid a nd A5LDE .

 Co n s i d e r M L E a ss u m i n g t h e Logi st i c d i st ri b u t i o n . We h a ve :

M A F E- M L E . i i d . Logi st i c : A 1 , A2linear, ≥ A3Rmi , A4GM iid a n d A5Logi stic .

 Co n s i d e r M L E a ss u m i n g t h e Logi st i c d i st ri b u t i o n wh e re we a ss u m e i n d e pe n d e n ce b u t a l l ow for n o n - i d e n t i ca l d i st ri b u t i o n s a c ross e r ror te r m s . We h a ve :

M A F E- M L E . i n i d . Logi st i c : A 1 , A2linear, ≥ A3Rmi , A4Ωdiagonal a n d A5Logi stic .

T h e re i s a d i st i n ct i o n betwee n be i n g a b l e to d efi n e a n est i m a tor a n d be i n g a b l e n ot o n ly to d efi n e a n est i m a tor b u t a l so its S EV . We refe r to t h e m i n i m u m set of co n d it i o n s for t h e form e r a s M A F E a n d for t h e l a tte r a s “ M A F E +” .

As a n exa m p l e , co n s i d e r t h e O LS est i m a tor . We h ave $\hat { \beta } _ { O L S }$ d efi n ed a s

$$
\hat {\beta} _ {O L S} = (X ^ {\prime} X) ^ {- 1} X ^ {\prime} y
$$

u n d e r M A F E : A 1 , b u t t h e sa m p l i n g e rror d efi n ed , give n $y = X \beta + \varepsilon$ , a s

$$
S E V (\hat {\beta} _ {O L S}) = (X ^ {\prime} X) ^ {- 1} X ^ {\prime} \varepsilon
$$

u n d e r M A F E $+$ : A 1 , A2linear .

N ote t h a t t h e S EV ca n be d efi n ed u n d e r fa l se a ss u m pt i o n s ( i . e . , u n d e r m od e l m i s-s pec i fi ca t i o n ) ; b u t pro pe rt i es of t h e S EV m u st be a n a lysed u n d e r t h e t ru e D G P . Co n s i d e r t h e exa m p l e be l ow .

 S u p pose t h e t ru e D G P i s $A 1$ , A2correct , ≥ A3Rmi , so m e A4 a n d A5speci f ic , wh e re A2correct i m poses $y = X \beta + Z \gamma + \varepsilon$ .   
 Say we m is-specify vi a M A F E+ : A 1 , A2wrong , wh e re A2wrong a ssu m es $y = X \beta + u$ . U n d e r m i s-s p ec i fi ca t i o n , we ca n d efi n e bot h t h e est i m a tor ,

$$
\hat {\beta} _ {O L S. w r o n g} = (X ^ {\prime} X) ^ {- 1} X ^ {\prime} y
$$

a n d i ts sa m p l i n g e r ror ,

$$
S E V (\hat {\beta} _ {O L S. w r o n g}) = (X ^ {\prime} X) ^ {- 1} X ^ {\prime} u.
$$

 H oweve r , we m u st a n a lyse its pro pe rt i es u n d e r A2correct wh e re by $u = Z \gamma + \varepsilon$ , so

$$
\mathbb {E} (S E V (\hat {\beta} _ {O L S. w r o n g}) | X, Z) = (X ^ {\prime} X) ^ {- 1} X ^ {\prime} Z \gamma ,
$$

u n d e r A3Rmi w h i c h sta tes t h a t $\mathbb { E } ( \varepsilon | X , Z ) = 0$ . ( N ote t h a t $\mathbb { E } ( u | X ) \neq 0 .$ )