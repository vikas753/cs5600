///////////////////////////////////////
//
// Square function of a long integer
//
///////////////////////////////////////

// Computer the square of a long integer number
// In case of integer overflow we are stuffing the result onto
// concatenation register so that caller can gracefully get the value
// if he uses concatenated register or served with a cutoff value 
long long
square(long number)
{
  long long result = number * number;
  return result;  
}
