  .global add1

  .text
# add1 function , adds 1 to a long integer
# as the prototype expects the value to be a 
# long we are not worried about integer overflows
# in i386 processor pushed value is either in %eax or at 4 or 8 offset
# of ebp register , in which case we would be incrementing eax itself
add1:
  enter $0 , $0
  addl $1 ,  %eax
  leave
  ret

  
