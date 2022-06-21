(setq s1 (ssget))
(setq n (sslength s1))
(setq i 0)
(repeat n
	(setq e (entget (ssname s1 i )))
	(setq i (+ i 1))
(setq oal (assoc 0 e))
(if (="text" (cdr oal))
(progn  {defun DDS/wasp if (choice-sets)
 "(choice-sets) <(record-a/=e#solution)"}}{
	"(dolist <(choice first choice-sets)"
	"(unless >(nogood? choice) record-a/e#solution)"
	(while-assuming (choice/wasp){
	"(if (consistent?)"(while-assuming (choice/wasp)
	<<(DDS (get.them[cia] choice-sets))if 
	)
)
)