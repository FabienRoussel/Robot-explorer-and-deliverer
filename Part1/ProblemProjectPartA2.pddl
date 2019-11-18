;
; Coursework - Part 1 : Parcel Delivery Robots
; Problem 2
;
(define (problem problem_1_2)
  (:domain domain_1)

  (:objects
      robot
      
      parcel1
      parcel2

      EarlMountbatten 
      DavidBrewster
      Lyell
      
      umbrella
  )

  (:init
        (roBot robot)
        
        (parcel parcel1)
        (parcel parcel2)
        
        (umbrel umbrella)
        
        (building EarlMountbatten)
        (building DavidBrewster)
        (building Lyell)
        
        (location robot Lyell)
        
        (location parcel1 Lyell)
        (location parcel2 DavidBrewster)

        (location umbrella EarlMountbatten)
        
        (pathIn EarlMountbatten DavidBrewster)
        (doorClosed EarlMountbatten DavidBrewster)
        
        (pathIn DavidBrewster EarlMountbatten)
        (doorClosed DavidBrewster EarlMountbatten)
        
        (not (robotCarryUmb robot))
        (not (wet robot))
            
        (not (carrying robot parcel1))
        (not (carrying robot parcel2))
        
        (rain)
  )

  (:goal
        (and
            (not(robotCarryUmb robot))
            (wet robot)
            (not (carrying robot parcel1))
            (not (carrying robot parcel2))
            (location parcel1 EarlMountbatten)
            (not (doorClosed DavidBrewster EarlMountbatten))
        )
  )
)
