# Explorer and deliverer robot

PDDL project where a robot must deliver parcel to a destination whereas another robot is exploring Mars.

### Context 

During our academic exchange in Heriot Watt Univerity in Edinburgh, we have been assigned to design and develop a project using PDDL, a language to standardize Artificial Intelligence planning languages. 

The first part of project, which will name Part A, is about a robot who must deliver package to a specific location. The robot cannot go outside whitout an umbrelly if it is raining and cannot open doors with it have its two hands full.

The second part of project, which will name Part B, is a mission where two kind of robots must visit the planet Mars. While the first kind of robot is exploring Mars, the seconde one stay in space to establish communication between Earth and robots on Mars.

## Authors

* **Nicolas Gorrity** - *Initial work* - [GitHub](https://github.com/nicolasgorrity) [LinkedIn](https://www.linkedin.com/in/ngorrity/)
* **Fabien Roussel** - *Initial work* - [GitHub](https://github.com/FabienRoussel) [LinkedIn](https://www.linkedin.com/in/fabien-roussel/)

## Getting Started
### Prerequisites

The easiest way to start quickly is **http://editor.planning.domains/** which allow you to execute the code with ease.

I recommand using Sublime text as the IDE. Please visit https://github.com/Pold87/myPDDL if you want to use Sublime text.

### Installing

Simply clone the project on your computer :
```
git clone https://github.com/FabienRoussel/Robot-explorer-and-deliverer
```

If you use Sublime Text, drag and drop the repository into Sublime or use `Project` → `Open Project` → the files.

## Execute the code 

If you want to try some of the 8 differents scenarios, visit http://editor.planning.domains/ and click on `Session` then `load`, enter :
1. `OQrjZvuOfH` or just click [here](http://editor.planning.domains/#read_session=OQrjZvuOfH) for part A 
2. `rmJYaNwfkz` or just click [here](http://editor.planning.domains/#read_session=rmJYaNwfkz) for part B 

If **the links are not reachable**, you will need to load the files by clicking `File`, then `Load` and choose each file one by one.

To solve a problem, click on `solve` and chose DomainProjectPart_.pddl (`_` being A or B) as the domain and any problem you want to solve.


## Rules and constraints

### Part A
A delivery robot can move parcels between the Earl Mountbatten, David Brewster, and Lyell buildings. Assume that the robot can carry an unlimited number of parcels and the only relevant locations are the three buildings. When travelling between Lyell and the other two buildings, the robot must go outside. In contrast, the robot can travel indoors between Earl Mountbatten and David Brewster, provided the door in the corridor between the buildings is open. If the door is closed, the robot can open the door by using one of its parcels to keep the door propped open as it passes through. If the robot goes outside when it’s raining, it will get wet unless it has an umbrella. It can get an umbrella in the Earl Mountbatten building. Goals in this domain can specify requirements about the location of various parcels, the robot’s location, and the robot staying dry. 

#### Problem 1: 
Initial state: the robot is in Earl Mountbatten, parcel1 is in David Brewster, it’s raining, the robot is not wet, the umbrella is in Earl Mountbatten, and the robot is not carrying any parcel nor the umbrella.
Goal: parcel1 is in Lyell, the robot is not wet, and the robot is holding the umbrella.
#### Problem 2
Initial state: the robot is in Lyell, parcel1 is in Lyell, parcel2 is in David Brewster, it’s raining, the robot is not wet, the umbrella is in Earl Mountbatten, the door is closed, and the robot is not carrying any parcel nor the
umbrella.
Goal: parcel1 is in Earl Mountbatten, the robot is wet, the robot is holding the umbrella, the door is open, and the robot is in Lyell.
#### Problem 3
Initial state: the robot is in David Brewster, parcel1 is in Lyell, parcel2 is in David Brewster, parcel3 is in Earl Mountbatten, the robot is not wet, it’s not raining, the umbrella is in Earl Mountbatten, the door is closed, and the robot is not carrying any parcel nor the umbrella.
Goal: parcel1 is in Earl Mountbatten, parcel3 is in Lyell, the robot is not wet, the door is open, the robot is not holding the umbrella, and the robot is in David Brewster.

### Part B
Heriot-Watt’s Space Agency needs to plan a mission for a group of robot probes that will be sent to Mars, as a prelude to human exploration of the planet. Two types of probes will be sent, a single comsat and a group of rovers. The comsat (communications satellite) remains in orbit and establishes a communication network, relaying messages between Earth and the rovers on the planet. The comsat is fixed in one of two orientations, facing Earth or facing Mars. When facing Earth, the comsat may send test results back to mission control; when facing Mars it may send or receive messages from a rover. Rovers explore the planet, perform tests, and send test results back to the comsat. Rovers may move between test sites on the planet—locations that have been identified as areas of scientific importance. At a test site, a rover may perform a soil composition test. A rover will only perform a test if it receives a message from a comsat instructing it to do so. Rovers are always monitoring comsat signals and immediately receive any messages that the comsat might send it. However, rovers must explicitly send messages back to the comsat. Due to memory limitations in the rovers, if a rover has performed a test it cannot perform another test until it has sent the results to the comsat. Goals in this domain will typically require that the results of tests at particular sites be sent back to mission control. 

#### Problem 1: 
Initial state: rover1 is at site1, comsat is facing earth, rover1 has no test results in its memory.
Goal: mission control has received the results of a soil composition test at site2.
#### Problem 2
Initial state: rover1 is at site1, rover2 is at site2, comsat is facing mars, rover1 has no test results in its memory, rover2 has no test results in its memory.
Goal: mission control has received the results of soil composition tests at site1, site2, and site3, comsat is facing mars, rover1 is at site2, rover2 is at site1.
#### Problem 3
Initial state: rover1 is at site1, rover2 is at site1, comsat is facing earth, rover1 has no test results in its memory, rover2 has no test results in its memory.
Goal: mission control has received the results of soil composition tests at site1, site2, site3, and site4, comsat is facing earth, rover2 has the results of a soil composition test at site5 in its memory.