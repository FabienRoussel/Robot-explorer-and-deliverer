;
; Coursework - Part 2 : Mars Exploration
; Domain
;
(define (domain domain_2)
    (:requirements
         :adl ;:strips :equality :conditional-effects
    )

    (:predicates
        (mission_control ?mc)
        (rover ?r)
        (location ?x ?l)
        (planet ?p)
        (site ?s)
        (tested ?m)
        (rov_empty ?r)
        (rov_carrying_message ?r ?m)
        (comsat_carry_message ?m)
        (mission_control_has_result ?m)
        (is_facing ?p)
    )

(:action move_rover_between_sites
    :parameters
        (?r ?s1 ?s2)
    :precondition
        (and
            (rover ?r)
            (site ?s1)
            (site ?s2)
            (rov_carrying_message ?r ?s2)
            (not (location ?r ?s2))
            (location ?r ?s1)
        )

    :effect
        (and
            (not (location ?r ?s1))
            (location ?r ?s2)
        )
)

(:action comsat_change_facing
    :parameters
    (?p1 ?p2)
    :precondition
        (and
            (planet ?p1)
            (planet ?p2)
            (is_facing ?p1)
        )
    :effect
        (and
            (not (is_facing ?p1))
            (is_facing ?p2)
        )
)

(:action rover_send_result_to_comsat
    :parameters
        (?r ?p ?m)
    :precondition
        (and
            (rover ?r)
            (tested ?m)
            (not (rov_empty ?r))
            (rov_carrying_message ?r ?m)
            (not (comsat_carry_message ?m))
            (planet ?p)
            (is_facing ?p)
            (location ?r ?p)
        )
    :effect
        (and
            (rov_empty ?r)
            (not (rov_carrying_message ?r ?m))
            (comsat_carry_message ?m)
        )
)

(:action comsat_send_message_to_rover
    :parameters
        (?r ?p ?m)
    :precondition
        (and
            (rover ?r)
            (rov_empty ?r)
            (comsat_carry_message ?m)
            (not (rov_carrying_message ?r ?m))
            (not (tested ?m))
            (planet ?p)
            (is_facing ?p)
            (location ?r ?p)
        )
    :effect
        (and
            (not (comsat_carry_message ?m))
            (not (rov_empty ?r))
            (rov_carrying_message ?r ?m)
        )
)

(:action comsat_send_result_to_mission_control
    :parameters
        (?mc ?p ?m)
    :precondition
        (and
            (mission_control ?mc)
            (tested ?m)
            (comsat_carry_message ?m)
            (not (mission_control_has_result ?m))
            (is_facing ?p)
            (planet ?p)
            (location ?mc ?p)
        )
    :effect
        (and
            (mission_control_has_result ?m)
            (not (comsat_carry_message ?m))
        )
)

(:action rover_test
    :parameters
        (?r ?s)
    :precondition
        (and
            (rover ?r)
            (site ?s)
            (not (tested ?s))
            (location ?r ?s)
            (not (rov_empty ?r))
            (rov_carrying_message ?r ?s)
        )
    :effect
        (and
            (tested ?s)
        )
)

)
