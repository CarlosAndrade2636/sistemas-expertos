(deffunction primo (?x)
	(bind ?senal 0)
	(bind ?aux (- ?x 1))
	(loop-for-count(?i 2 ?aux) 
		(printout t (mod ?x ?i) crlf)
		(if (= (mod ?x ?i) 0)
		then
			(if (neq ?x 2)
			then
				(bind ?senal 1)
			)
		)
	)
	(if (= ?senal 1)
	then 
		(printout t "El numero no es primo" crlf)
	else
		(printout t "El numero es primo" crlf)
	)
)

(deffunction fibo (?a)
    (if (or (= ?a 0) (= ?a 1)) then
        ?a
    else 
        (+ (fibo(- ?a 1)) (fibo(- ?a 2)))))