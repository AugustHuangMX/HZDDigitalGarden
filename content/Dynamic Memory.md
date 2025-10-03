[[Programming Science MOC]]
#permanent #C_language 
```C
int *P;

N=15;

P = malloc(N * sizeof(int));

if ( P==NULL )

    printf("Memory not allocated.\n");

for ( i=0; i<N; i++ )

      P[i]=3*i;

free(P);
```
