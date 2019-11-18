;
; Coursework - Part 1 : Parcel Delivery Robots
; Domain
;
(define (domain domain_1)
    (:requirements
         :adl ;:strips :equality :conditional-effects
    )

    (:predicates
        (roBot ?r)
        (umbrel ?u)
        (wet ?r)
        (rain)
        (robotCarryUmb ?r)
        (building ?l)
        (carrying ?r ?p)
        (parcel ?p)
        (location ?x ?l)
        (pathIn ?l ?l)
        (doorOpen ?l ?l ?p)
        (doorClosed ?l ?l)
    )

(:action move_robot
    :parameters
        (?r ?l1 ?l2)
    :precondition
        (and
            (building ?l1)
            (building ?l2)
            (roBot ?r)
            (not (location ?r ?l2))
            (or
                (and 
                    (not (pathIn ?l1 ?l2))
                    (not (pathIn ?l2 ?l1))
                )
                (and
                    (not (doorClosed ?l1 ?l2))
                    (not (doorClosed ?l2 ?l1))
                )
            )
            (location ?r ?l1)
        )

    :effect
        (and
            (location ?r ?l2)
            (not (location ?r ?l1))
            (when 
                (and 
                    (rain)
                    (not (or 
                            (robotCarryUmb ?r)
                            (pathIn ?l1 ?l2)
                            (pathIn ?l2 ?l1)
                         ) 
                    )
                )
                (wet ?r)
            )
        )
)

(:action open_door
    :parameters
        (?r ?l1 ?l2 ?p)
    :precondition
        (and
            (roBot ?r)
            (parcel ?p)
            (building ?l1)
            (building ?l2)
            (location ?r ?l1)
            (carrying ?r ?p)
            (or
                (doorClosed ?l1 ?l2)
                (doorClosed ?l2 ?l1)
            )
        )
    
    :effect
        (and
            (doorOpen ?l1 ?l2 ?p)
            (not (doorClosed ?l1 ?l2))
            (not (doorClosed ?l2 ?l1))
            (not (carrying ?r ?p))
            (doorOpen ?l2 ?l1 ?p)
        )
)

(:action close_door
    :parameters
        (?r ?l1 ?l2 ?p)
    :precondition
        (and
            (roBot ?r)
            (parcel ?p)
            (building ?l1)
            (building ?l2)
            (location ?r ?l1)
            (or
                (not (doorClosed ?l1 ?l2))
                (not (doorClosed ?l2 ?l1))
            )
            (or
                (doorOpen ?l1 ?l2 ?p)
                (doorOpen ?l2 ?l1 ?p)
            )
        )
    
    :effect
        (and
            (doorClosed ?l1 ?l2)
            (doorClosed ?l2 ?l1)
            (not (doorOpen ?l1 ?l2 ?p))
            (not (doorOpen ?l2 ?l1 ?p))
            (carrying ?r ?p)
        )
)

(:action pickup_parcel
    :parameters
        (?r ?p ?l)
    :precondition
        (and
            (roBot ?r)
            (parcel ?p)
            (building ?l)
            (location ?r ?l)
            (location ?p ?l)
        )
    :effect
        (and
           (not (location ?p ?l))
           (carrying ?r ?p)
        )
)


(:action putdown_parcel
    :parameters
        (?r ?p ?l)
    :precondition
        (and
            (roBot ?r)
            (parcel ?p)
            (building ?l)
            (carrying ?r ?p)
            (location ?r ?l)
        )
    :effect
        (and
            (not (carrying ?r ?p))
            (location ?p ?l)
        )
)

(:action pickup_umbrella
    :parameters
        (?r ?u ?l)
    :precondition
        (and
            (roBot ?r)
            (umbrel ?u)
            (building ?l)
            (location ?r ?l)
            (location ?u ?l)
        )
    :effect
        (and
            (not (location ?u ?l))
            (robotCarryUmb ?r)
        )
)


(:action putdown_umbrella
    :parameters
        (?r ?u ?l)
    :precondition
        (and
            (roBot ?r)
            (building ?l)
            (umbrel ?u)
            (location ?r ?l)
            (robotCarryUmb ?r)
        )
    :effect
        (and
            (not (robotCarryUmb ?r))
            (location ?u ?l)
        )
)

)
