## Lesson 7 - Functions in Dart  September 15, 2021
### Overview
This lesson will focus on introducing functions.

• Built-in functions - Functions that are built into Dart.
• User-defined functions - Functions defined by the users themselves.

Reusing code is key to building a maintainable system. Reducing redundancy, and en-
abling reuse and sharing of code is a key part of effective coding.

• Built-in functions - Functions that are built into Dart.
• User-defined functions - Functions defined by the users themselves.

### Functions
A function is a group of related statements that performs a specific task.A function takes
an input, and based on some rule produces an output. Other languages may call these
"procedure", "subroutine", and "method".

Advantages they offer are:
• Organises a program into smaller and modular chunks.
• It avoids repetition and makes the code reusable.

The basic syntax of a function is:
```
ReturnType function_name(parameters){
statements(s)
}
```

1. The ReturnType will define the returntype of the function (more on that later)

2. A function name to uniquely identify the function. e.g(function_name)

3. Parameters (optional_arguments) through which values are passed to a function.
   They are optional. They are defined in the line following the functions name inside
   the parentheses. You can have many arguments
   
4. Curly brackets to mark the start and end of the function body.
   
5. Statement(s)refers to the python statements which must be run in the method.
   • An optional return statement to return a value from the function
   • the method could complete a task without a value output being sent to the rest of the program.
   • Functions are designed to return a single value. But that value can be a single data structure. 
   This will be revisited in the future.
   • Code statements are indented one level beneath inside the curly brackets
### Using / Calling a function
Once a function is defined(by a user or as a built in function) it can be called/executed. To call
a function, type the function name with appropriate parameters.
### Built-in functions
You have already been using functions. Example of those for a string variable is .toLowerCase() and .toUpperCase().
Other examples are int.Parse(), double.Parse() etc. The most used function that we have used so far is the print()
function. You can recognize the function with the parentheses that follow the function name,
### User-defined functions
```
   /*Original code
   this code aims to ask a user for their name and food
   they want to eat. A food is ready (customised) statement is
   then displayed. */
   print("What is you name?");
   String name = stdin.readLineSync();
   print("What would you like to eat?");
   String food = stdin.readLineSync();
   String foodAnnouncement = "Thank you $name. Your $food is ready";
   print(foodAnnouncement);
   ```
### Package as a reusable function. No parameters or returns.
```
   //Option 1: Include all code in the function.
   void order_information() {
   print("What is you name?");
   String name = stdin.readLineSync();
   print("What would you like to eat?");
   String food = stdin.readLineSync();
   String foodAnnouncement = "Thank you for your order $name. Your $food is ready";
   print(foodAnnouncement);
   }
   ```
### Package as a function which can accept arguments
```
   void main(){
   print("What
   String name
   print("What
   String food
   is you name?");
   = stdin.readLineSync();
   would you like to eat?");
   = stdin.readLineSync();
   order_information(name, food);
   }
   //Option 2: Get the user input elsewhere and pass to the method to print
   void order_information(String customername, String fooditem) {
   String foodAnnouncement = "Thank you $customername. Your $fooditem is ready";
   print(foodAnnouncement);
   }
   ```
### Package a function which can accept arguments and returns a string value
```
   void main(){
   print("What
   String name
   print("What
   String food
   is you name?");
   = stdin.readLineSync();
   would you like to eat?");
   = stdin.readLineSync();
   String message = order_information(name, food);
   print(message);
   }
   //Option 3: Do not print the message in function. Rather return the string formed in the fun
   String order_information(String customername, String fooditem){
   String foodAnnouncement = "Thank you $customername. Your $fooditem is ready";
   return foodAnnouncement;
   }
   
   ```
### Variables and Functions important facts
   Variables have a specific scope within a program where it is recognised and accessible.
   Normally, when you create a variable inside a function inside the curly brackets, that vari-
   able is local. It can only be used inside that function. Same rules apply to conditions and
   loops.
### Challenges
- Create a program that calculates the areas of a variety of shapes. Within that program you should have the following functions:
- - Function to calculate the area of a rectangle
- - Function to calculate the area of a circle
- - Function to calculate the area of a triangle You should include appropriate functionality in your program to 
demonstrate that your functions work correctly. Your program should also include appropriate comments.
- - Function to input a string and count number of spaces are in the string.