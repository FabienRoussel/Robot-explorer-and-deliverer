;
; Coursework - Part 2 : Mars Exploration
; Problem 1
;
(define (problem problem_2_1)
  (:domain domain_2)

  (:objects
      rover1
     
      earth
      mars
      
      site1
      site2
      
      mControl
  )

  (:init
        (rover rover1)

        (mission_control mControl)
        
        (planet earth)
        (planet mars)
        
        (is_facing earth)
        
        (site site1)
        (site site2)
        
        (location rover1 site1)
        (location rover1 mars)
        (location mControl earth)
        
        ;To be tested:
        ;(rov_empty rover1) ;only if it has not already received any other message
        (comsat_carry_message site2)
        (comsat_carry_message site1)
        (rov_empty rover1)
        ;Rover already received message but still has to do the test
        ;(rov_carrying_message rover1 site1)
        
        ;Already tested but rover still has to send results:
        ;(rov_carrying_message rover1 site1)
        ;(tested site1)
        
        ;;Already tested and sent to comsat but still needs to send results to Mission Control:
        ;(comsat_carry_message site2)
        ;(tested site2)
  )

  (:goal
        (and
            (mission_control_has_result site1)
            (mission_control_has_result site2)
        )
  )
)
