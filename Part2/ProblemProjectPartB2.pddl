;
; Coursework - Part 2 : Mars Exploration
; Problem 2
;
(define (problem problem_2_2)
  (:domain domain_2)

  (:objects
      rover1
      rover2
     
      earth
      mars
      
      site1
      site2
      site3
      
      mControl
  )

  (:init
        (rover rover1)
        (rover rover2)

        (mission_control mControl)
        
        (planet earth)
        (planet mars)
        
        (is_facing mars)
        
        (site site1)
        (site site2)
        (site site3)
        
        (location rover1 site1)
        (location rover1 mars)
        (location rover2 site2)
        (location rover2 mars)
        
        (location mControl earth)
        (rov_empty rover1)
        (rov_empty rover2)
        (comsat_carry_message site1)
        (comsat_carry_message site2)
        (comsat_carry_message site3)
    )

  (:goal
        (and
            (mission_control_has_result site1)
            (mission_control_has_result site2)
            (mission_control_has_result site3)
            (is_facing mars)
            (location rover2 site1)
            (location rover1 site2)
        )
  )
)
