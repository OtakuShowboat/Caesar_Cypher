The Caesar Cypher - Project via The Odin Project: https://www.theodinproject.com/courses/ruby-programming/lessons/building-blocks

Requirments: Shift each letter of a string up by an arbitrary number.

Process:

	If cypher is greater than 25, subtract 26 until value is less than 26. This keeps us in alphabet range.
	If cypher is negative, and if less than -25, add 26 until value is greater than -26.This keeps us in alphabet range.
	Split string into array of individual characters via .split
	Iterating across array and outputting into a new array via .map:
 	Convert string characters into integers via .ord
	Add cypher number to resulting integers.
	If new number is "beyond z," wrap back to a, and vice versa. Do not change case. Subtract or add total letters in alphabet
	If original number is not a character value, do not cypher.
	Convert ord values to characters via .chr
	Convert array to single string via .join("")
	Output string via puts

