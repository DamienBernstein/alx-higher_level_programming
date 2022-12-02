#!/usr/bin/python3
def no_c(my_string):
  for j in range (len(my_string)):
    if (my_string[j] == 'c' or my_string[j] == 'C'):
      my_string = my_string[:j] + "" + my_string[j+1:]
      return (my_string)
