stepsize 1000
w SB0 SB1 sign start
| Set up vectors
h reset
s
l reset
s

| An initial clock pulse to get things going
| as in the specification (verilog) test bench
l sign
s
h clk
s
l clk
s

| Start the process by asserting Start and waiting one clock cycle

h start
s
h clk
s
l clk
s

| Now, lower start, and set the divisor and dividend.  For your
| own tests, you should change these numbers here.  In this example,
| we are dividing 16 by 3.

l start


| Now, wait 17 cycles

s
h clk
s
l clk
s
s
h clk
s
l clk
s
s
h clk
s
l clk
s
s
h clk
s
l clk
s
h sign
s
h clk
s
l clk
s
s
h clk
s
l clk
s
s
h clk
s
l clk
s
s
h clk
s
l clk
s
l sign
s
h clk
s
l clk
s
s
h clk
s
l clk
s
s
h clk
s
l clk
s
s
h clk
s
l clk
s
l sign
s
h clk
s
l clk
s
s
h clk
s
l clk
s
s
h clk
s
l clk
s
s
h clk
s
l clk
s
h sign
s
h clk
s
l clk
s

| Print out results
analyzer clk SB0 SB1 sign start

s
exit
