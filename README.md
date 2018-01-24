# which-tech-test

Technical exercise for interview at Which? The task is a grid-based problem solving exercise: given starting coordinates of 0,0, the program
must parse a series of 5 sets of json input that constitute directions, and arrive at the correct finishing coordinate.

The task is completed in Ruby, and is test-driven with Rspec.

## Approach
The task instructions suggest making a start on this solo, in preparation for pairing in person on the interview day.
Therefore, my priority has been to make the code as readable and malleable as possible, in order that (1) my pairing partner can easily understand the code as it stands and (2) ensure that any design changes, or refactoring choices made in concert with my pair partner are easily implemented.

There are two main parts to this technical challenge: an appropriate IO to deal with json, and an algorithm to correctly alter the grid coordinates to 'arrive' at the destination.

I have chosen to begin focussing on writing the 'path charting' code alone, and to pair on both refactoring this, and connecting the json input to the program.

### Path Finding
There are two central problems to solve in finding the correct path to the final coordinates: that the size of the grid is unknown (or, more accurately, that there is no 'grid'), and that the correct interpretation of eg. 'turn right' changes in context according to the cardinal direction that we face - ie. 'turn left' if I am facing north requires movement in a different direction to if I am facing south.

Therefore, the 'path' is calculated by GridCounter, an object that allows for the coordinates x and y, stored as an array [x,y] to be incremented or decremented according to the direction taken. The GridCounter object holds two pieces of information in state: the direction faced, and the coordinates of the current position. Methods within the class can therefore check for the direction faced and make appropriate direction choices (north, south, east, or west) depending upon the the direction given (right, left, forward).

#### Self Review
In preparation for the pairing challenge, I have made some critical 'self review' notes of the code as it stands.
- The program relies heavily on case switches. Although these are readable, and constitute a greater 'tell don't ask' approach than eg. if.. else statements, they make for long methods that I would prefer to keep to less than 5 lines. A potential refactoring approach might be to replace these with hashes that return the required method as a value depending on the argument key it receives as a parameter.

- There are two 'if... else' statements. Although these work well for producing code quickly and to get tests passing, these should be removed and replaced with more assertive expressions.

- GridCounter, the class that finds the 'path' through coordinates to give the final coordinates is long: however, most of its methods are very short, allowing for a high degree of single responsibility.
