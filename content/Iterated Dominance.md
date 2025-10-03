Here is an example of the iterated dominance:

![[截屏2024-08-27 10.17.50.png|400]]

Step 1: It can be verified that for player 2, $L$ strictly dominates $M$, so we delete $M$

Step 2: Then, we could recognize that for player 1, $D$ strictly dominates $U$, so we delete $U$.

Step 3: Now, for player 2, $L$ strictly dominates $R$, so we delete $R$.

### Another Example

|     | L   | C   | R   |
| --- | --- | --- | --- |
| U   | 4,3 | 5,1 | 6,2 |
| M   | 2,1 | 8,4 | 3,6 |
| D   | 3,0 | 9,6 | 2,8 |

The method is the same, At first, we could find for player 2, $R$ strictly dominates $C$, so we delete column $C$:

|     | L   | R   |
| --- | --- | --- |
| U   | 4,3 | 6,2 |
| M   | 2,1 | 3,6 |
| D   | 3,0 | 2,8 |

Now, we could find $U$ strictly dominates $M$ and $D$, we delete them:

|     | L   | R   |
| --- | --- | --- |
| U   | 4,3 | 6,2 |
$L$ dominates $R$,

|     | L   |
| --- | --- |
| U   | 4,3 |

The final strategy pair is $(U,L)$

The payoff is $(4,3)$.


The *intuition* here is that the outcome of the [[Iterated Dominance]] is irrelevant to the order of deletion. That means, no matter how we delete the rows or the columns (only if we are correct), the dominated strategy won't be into an undominated ones.

The key idea is **Delete all strictly dominated strategies**


