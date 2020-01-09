  .global add1

  .text
# add1 function , adds 1 to a long integer
# as the prototype expects the value to be a 
# long we are not worried about integer overflows
# in i386 processor pushed value is either in %eax or at 8 offset
# of ebp register . Using eax is quite risky as any non related function 
# call before can modify it;s value thereby serving the function with garbage
# thus using 8(%ebp) which as first local variable is worth it 
add1:
  enter $0 , $0
  mov 8(%ebp) ,  %eax
  inc %eax
  leave
  ret

  
