(define (domain hello-world)

    (:requirements :negative-preconditions :typing)

    (:types
        something
    )

    (:predicates
        (said-hello ?s - something)
        (have-breath)
    )

    (:action breath-in
        :parameters ()
        :precondition (and )
        :effect (and 
            (have-breath)
        )
    )
    

    (:action say-hello
        :parameters (?s - something)
        :precondition (and 
            (have-breath)
            (not (said-hello ?s)) ;; Ensure we haven't said hello yet
        )
        :effect (and 
            (said-hello ?s)
        )
    )

)

