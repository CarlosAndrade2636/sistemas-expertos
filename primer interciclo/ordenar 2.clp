

( deftemplate  pos
    ( índice de ranura ( tipo INTEGER))
    ( valor de ranura ( tipo INTEGER))
 )
( defrule  vectAux
(vector $ ? x )
=>
( afirmar (vector-aux ? x )))

( defrule  sortVector
? f  <- (vector-aux $ ? b  ? m1  ? m2 &: (< ? m2  ? m1 ) $ ? e )
=>
( retraer  ? f )
( afirmar (vector-aux $ ? b  ? m2  ? m1 $ ? e )))

( Defrule  definitiva
( no (vector-aux $ ? b  ? m1  ? m2 &: (< ? m2  ? m1 ) $ ? e ))
(vector $ ? x )
(vector-aux $ ? y )
=>
( impresión t "Lista ordenados =" ? y   ": Lista Anterior" ? x crlf))