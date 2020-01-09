  .global cube

  .text
# function to perform the cube of a number
# since the prototype expects the return value
# to be a long or 4bytes \ 32bit we are not 
# concerned 32-bit and leave it upto user or 
# caller to handle it gracefully
cube:                 
  enter $0,$0
  mov %rdi, %r10      # argument of the function
  imul %r10,%r10      # square it
  imul %rdi,%r10      # then multiply with number itself
  mov %r10 , %rax
  leave
  ret
