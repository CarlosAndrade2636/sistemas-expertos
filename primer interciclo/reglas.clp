(deffacts hechos-iniciales
(H)
(K)
)

(defrule H
(H)
=>
(assert (A))
)  

(defrule A
(A)
=>
(assert (E))
)

(defrule EYK
(E)
(K)
=>
(assert (B))
)

(defrule B
(B)
=>
(assert (D))
) 
   
(defrule EYG
(E)
(G)
=>
(assert(C))
)

(defrule DYZYKYC
(D)
(Z)
(K)
=>
(assert(C))
)

(defrule GYKYF
(G)
(K)
(F)
=>
(assert(A))
)


