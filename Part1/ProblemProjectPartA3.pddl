;
; Coursework - Part 1 : Parcel Delivery Robots
; Problem 3
;
(define (problem problem_1_3)
  (:domain domain_1)

  (:objects
      robot
      
      parcel1
      parcel2
      parcel3

      EarlMountbatten 
      DavidBrewster
      Lyell
      
      umbrella
  )

  (:init
        (roBot robot)
        
        (parcel parcel1)
        (parcel parcel2)
        (parcel parcel3)
        
        (umbrel umbrella)
        
        (building EarlMountbatten)
        (building DavidBrewster)
        (building Lyell)
        
        (location robot DavidBrewster)
        
        (location parcel1 Lyell)
        (location parcel2 DavidBrewster)
        (location parcel3 EarlMountbatten)

        
        (pathIn EarlMountbatten DavidBrewster)
        (doorClosed EarlMountbatten DavidBrewster)
    
        (not (robotCarryUmb robot))
        (not (wet robot))
            
        (not (carrying robot parcel1))
        (not (carrying robot parcel2))
        (not (carrying robot parcel3))
        
        (not (rain))
        
        (location umbrella EarlMountbatten)
  )

  (:goal
        (and
            (not (robotCarryUmb robot))
            (not (wet robot))
            (not (carrying robot parcel1))
            (not (carrying robot parcel3)) 
            (not (doorClosed DavidBrewster EarlMountbatten))
            (location robot DavidBrewster)
            (location parcel1 EarlMountbatten)
            (location parcel3 Lyell)
        )
  )
)
