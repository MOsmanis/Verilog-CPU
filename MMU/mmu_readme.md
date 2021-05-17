If something doesn't compile, please send the console output to me, maybe your entire project.

## How to use

### Init

1. Instantiate mmu in top module
2. Connect the memory registers with the corresponding ports on mmu
3. Use parameters to adjust: memory size, initialization file

NOTE! Initialization file must be the same size as the memory block or smaller! Use the same formatting style as examples provided.

### Reading memory

1. Set address
2. After 1 clock cycle, the output will be the contents of that memory address

### Writing to memory

1. Set address 
2. Set [module]_wenable = HIGH
3. Hold for at least 1 complete clock cycle
4. Set [module]_wenable = LOW

Note: Reading only works correctly after wenable is set low again. You can read back the data on the next rising clock edge.
