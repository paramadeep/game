Your task is to write a program to calculate the next
generation of Conway's game of life, given any starting
position. You start with a two dimensional grid of positions, 
where each position is either alive or dead. The grid is finite, 
and no life can exist off the edges. When calculating the 
next generation of the grid, follow these four rules:

1. Any live position with fewer than two live neighbours dies, 
   as if caused by underpopulation.
2. Any live position with more than three live neighbours dies, 
   as if by overcrowding.
3. Any live position with two or three live neighbours lives 
   on to the next generation.
4. Any dead position with exactly three live neighbours becomes 
   a live position.

Examples: * indicates live position, . indicates dead position

Example input: (4 x 8 grid)
4 8
........
....*...
...**...
........

Example output:
4 8
........
...**...
...**...
........