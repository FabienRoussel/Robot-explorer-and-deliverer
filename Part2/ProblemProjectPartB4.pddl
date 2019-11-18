;
; Coursework - Part 2 : Mars Exploration
; Problem 4
;
(define (problem problem_2_4)
  (:domain domain_2)

  (:objects
      rover1
      rover2
      rover3
     
      earth
      mars
      
      site1
      site2
      site3
      site4
      site5
      
      mControl
  )

  (:init
        (rover rover1)
        (rover rover2)
        (rover rover3)

        (mission_control mControl)
        
        (planet earth)
        (planet mars)
        
        (is_facing earth)
        
        (site site1)
        (site site2)
        (site site3)
        (site site4)
        (site site5)
        
        (location rover1 site1)
        (location rover1 mars)
        (location rover3 site1)
        (location rover3 mars)
        (location rover2 site2)
        (location rover2 mars)
        
        (location mControl earth)

        (comsat_carry_message site1)
        (comsat_carry_message site2)
        (comsat_carry_message site3)
        (comsat_carry_message site4)
        (comsat_carry_message site5)
        
        (rov_empty rover1)
        (rov_empty rover2)
        (rov_empty rover3)
  )

  (:goal
        (and
            (mission_control_has_result site1)
            (mission_control_has_result site2)
            (mission_control_has_result site3)
            (rov_carrying_message rover3 site4)
            (tested site4)
            (is_facing mars)
            (rov_carrying_message rover2 site5)
            (tested site5)
        )
  )
)

