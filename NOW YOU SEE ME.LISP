///now u see me///
to use: Load LISP126.LSP.
	LIST126 <RETURN> 
	(COMMAND "INSERT"CCTV" PART PT1 "" "" "0")
///PICK MESH TO MAKE INVISIBLE:
//RESPONSE: SELECT MESH AREA TO MAKE INVISIBLE:
//SELECT OBJECTS:	



(defun c:lisp126(/pt1 a n index b1 b c b2)
(setq pt1 (getpoint "\pick mesh to make invisible "))
(command "explode" pt1)
(prompt "n\the mesh is now a seires of 3d faces.")
(prompt "n\select entire mesh area to make invisble")
(setq a (ssget ))
(setq n (sslenght a))
(setq index 0)
(repeat n 
(setq b1 (entget ( ssname a index)))
(setq index (1+ index))
(setq b assoc 0 b1))
(if (="3dface" (cdr b))
(progn 
	(setq c (assoc 70 b1))
	(setq b2 (subst '(70.15 ) c b1)
	(entmod b2)
	)
)
)