(if 
(= a b)
(Prompt "this is true "
(Prompt"this is false")
)
(if
(and (= a b )(>a c))
(prompt "both are true")
(prompt"one is fasle")
)
(if (= a b)
(progn
(prompt "a is equal to b")
(prompt" b is equal to a ")
(prompt "they are both equal to each other")
)
(prompt" a is not equal to b")
) 
