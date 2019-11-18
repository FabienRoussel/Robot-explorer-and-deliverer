;
; Coursework - Part 1 : Parcel Delivery Robots
; Problem 4
;
(define (problem problem_1_4)
  (:domain domain_1)
  
    (:objects
      robot1
      robot2
      
      parcel1
      parcel2

      EarlMountbatten 
      DavidBrewster
      Lyell
      
      umbrella
  )

  (:init
        (roBot robot1)
        (roBot robot2)
        
        (parcel parcel1)
        (parcel parcel2)
        
        (umbrel umbrella)
        
        (building EarlMountbatten)
        (building DavidBrewster)
        (building Lyell)
        
        (location robot1 DavidBrewster)
        (location robot2 Lyell)
        
        (location parcel1 DavidBrewster)
        (location parcel2 Lyell)

        (location umbrella EarlMountbatten)
        
        (pathIn DavidBrewster EarlMountbatten)
        (doorClosed EarlMountbatten DavidBrewster)
        
        (not (robotCarryUmb robot1))
        (not (robotCarryUmb robot2))
        (not (wet robot1))
        (not (wet robot2))
            
        (not (carrying robot1 parcel1))
        (not (carrying robot1 parcel2))
        (not (carrying robot2 parcel1))
        (not (carrying robot2 parcel2))
            
        (rain)
  )

  (:goal
        (and
            (not (robotCarryUmb robot1))
            (not (robotCarryUmb robot2))
            (not (wet robot1))
            (not (wet robot2))
            (not (carrying robot1 parcel1))
            (not (carrying robot1 parcel2))
            (not (carrying robot2 parcel1))
            (not (carrying robot2 parcel2))
            (location robot1 Lyell)
            (location parcel1 Lyell)
            (location parcel2 EarlMountbatten)
            (location robot2 EarlMountbatten)
        )
  )
)
