;
; Coursework - Part 1 : Parcel Delivery Robots
; Problem 1
;
(define (problem problem_1_1)
  (:domain domain_1)

  (:objects
      robot
      
      parcel1

      EarlMountbatten 
      DavidBrewster
      Lyell
      
      umbrella
  )

  (:init
        (roBot robot)
        
        (parcel parcel1)
        (umbrel umbrella)
        
        (building EarlMountbatten)
        (building DavidBrewster)
        (building Lyell)
        
        (location robot EarlMountbatten)
        
        (location parcel1 DavidBrewster)

        (location umbrella EarlMountbatten)
        
        (pathIn EarlMountbatten DavidBrewster)
        (doorClosed EarlMountbatten DavidBrewster)
        
        (pathIn DavidBrewster EarlMountbatten)
        (doorClosed DavidBrewster EarlMountbatten)
        
        (not (robotCarryUmb robot))
        (not (wet robot))
            
        (not (carrying robot parcel1))
            
        (rain)
  )

  (:goal
        (and
            (robotCarryUmb robot)
            (not (wet robot))
            (not (carrying robot parcel1))
            (location parcel1 Lyell)
        )
  )
)
