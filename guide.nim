#[
  Using a hashtag allows for a single line comment, using hashtags and square brackets allows multiple lines of comments

  these are possible variables:
    > string  ---> allow multiple characters and use quotes: ""
    > char    ---> char only allows one character and uses an apostraphe: ''
    > float   ---> float allows not full numbers like: 3.141 or 3.0 NOT 3 or 3.3.3
    > float64 ---> allows for bigger floats
    > int     ---> int only allows full numbers like: 3141 not 3.141 or 3.0
    > uint    ---> allows for bigger whole numbers
    > bool    ---> either set as true or false, only lowercase true or false     not     True or False

  these are the three types of ways to delcare a variable:
    > var   ---> a variable that can be changed at any point
    > const ---> a hardcoded variable that cannot change
    > let   ---> is a variable that can only be set once (during execution)

  proc:
    > "proc" is like "def" in python, it's just a function
      | proc name (blablabal) = codeheretobewritten          ---> this is a basic layout, return will not work with this
      | proc name (blablabal):string = codeheretobewritten   ---> same as above except it can return a string
      | proc cheese(var kebab:string):string = return kebab  ---> this code basically returns what was inputed for kebab

  storage variables:
    > array  OR []      ---> size cannot change, can only have one type for all indexes   | var kebab  : array[5,int]                | var kebab  : [5,int]
    > seq    OR @[]     ---> size can change but can only have one type for all indexes   | var cheese : seq[int]                    | var cheese = @[1,2,3]
    > tuple  OR ()      ---> size cannot change, can have many different types            | var bacon  : tuple[name:string,age:int]  | var bacon  = (name: "None",age: 999)
      | all three storage variables can be accessed by using an index e.g. "bacon[1]", "cheese[0]", "kebab[3]" HOWEVER tuples can also have their data accessed by name e.g. "bacon.name"

  if statements:
    > if    ---> always runs these, having multiple means all those if statements will be checked unless something stops further checking
    > elif  ---> only works after there is an if somewhere above, can be placed under many elif but basically only allows one of these if statements to go through not all if statements
    > else  ---> nothing needed, added under an if or elif block, this WILL be done if the if/elif statments failed. not "if, if", first if will be ignored, but "if,elif" will work
               | or just and if, then else e.g. "if, else", "if, elif, else" not "if, if, else" but can be done but the first if is not associated with the else

  case statements:
    > case    ---> the thing being judged
    > of      ---> shortend version of   "if x == y"
    EXAMPLE:
      | var x = 15
      | case x
      | of 15:
      | of "cheese":
      | of 'f':
      | else:

  math:
    > ' + '    ---> add
    > ' - '    ---> minus
    > ' * '    ---> times
    > ' / '    ---> divides and allows for floats
    > ' div '  ---> div is short for divide and produces a whole number rather than a float
    > ' mod '  ---> mod means remainder, which is for division
      | adding an equal after one of the math symbols removes the need for  x = x - 7  ---> instead x -= 7    which gives you the same answer
      |
    > inc  --->   inc x |    adds one to x, this is basically x += 1
    > dec  --->   dec x |    takes one from x, this is basically x -= 1

  logic:
    > ' > '     ---> something is bigger than something
    > ' < '     ---> something is smaller than something
    > ' == '    ---> something is exactly equal to something
    > ' !='     ---> something does not equal something
    > ' >= '    ---> something is bigger or equal to something
    > ' <= '    ---> something is smaller or equal to something
    > ' and '   ---> something and something
    > ' or '    ---> something or something,   or both
    > ' not '   ---> something is not something
    > ' xor '   ---> something or something,   not both

  loops:
    > for    ---> for i in 0..10 (from 0 to 10 (11 numbers: 0 to 10))                                        | for i in 0..<10 (from 0 to 9(10 numbers: 0 to 9))
      | has "countup" and "countdown" features e.g. for i in countup(1,10,2):  ---> output being: 1,3,7,9    | so  (start point, target, how many to increase by each time)
      | can use with other things not just numbers e.g.   for letter in "This is a kebab": ---> this will go through each index in the string
      |
    > while  ---> while true  |  basically does something until a conidition is met

  other:
    > break    ---> stops code from executing further in that block
    > continue ---> similar to break except the block/loop will go back to the start rather than finishing the rest of the code in that block/loop
    > discard  ---> just like python's "pass" command, it allows blocks to exist without the need for something to be in them
    > echo     ---> like python's print, just prints out whatever in the console
    > import   ---> every nim file is a module, so you can do "import main, cheese, kebab" then use public functions, variables and whatever else is public
    |
    |
    > type
    > ref     ---> inheritance e.g. "Dog = ref object of Animal" however, for an object to be inheritable from, it must mention "RootObj" so "Animal = ref object of RootObj"
    > object
    > method  ---> is like proc except can be overwritten, proc cannot be overwritten at all in the same block (during compile time, proc can be overwritten but not during runtime)
      |             which means anything that should be modifiyable should use method instead of proc


  Helpful stuff:
    EXAMPLE 1:
      | proc cheese() =
      |   echo "kebab"
      |
      | var bacon: seq[proc()] = @[cheese]
      |
      | bacon[0]()
      |
      >>> The above creates a function, stores it in an expandable list, then finally executes it
      >>> If something like this was written "@[cheese()]" then bacon would be storing the result of cheese which is 'void' since nothing is being returned



  Error handling:
    > try      ---> try a block of code
    > except   ---> runs only if an error happens
    > finally  ---> runs no matter what
      | finally will run with or without an exception. So it's like putting something outside a block of if statements

  types:
    | types are some voodoo stuff
    |
    > here are some examples of usage as its hard to explain:
      > EXAMPLE 1:
        | type
        |   Person = tuple[name:string, age:int]
        | var john: Person = ("John",999999)
        |
        | echo john.name, john.age
        |
      > EXAMPLE 2:
        | type
        |   Animal = tuple
        |     species: string
        |     edible : bool
        |
        | pet: Animal = ("Dog", false)
        |
        | echo pet.species, pet.edible
        |
      > EXAMPLE 3:
        | type
        |   MyRange = range[0..5]
        |
        | rang: MyRange = 5
        |
        | echo rang
    |
    > Object oriantated programming:
      > EXAMLPE 1:
        | type
        |   Dog = object
        |     name: string
        |     age : int
        |
        | bob = Dog(name:"Bob",age:9999999)
        |
        | echo bob, bob.name, bob.age
        |
      > EXAMPLE 2:
        | type
        |   Animal = object
        |     name   : string
        |     species: string
        |     age    : int
        |
        | proc info(this:Animal) =
        |   echo "Name: ", this.name, "\nSpecies: ", this.species, "\nAge: ", this.age
        |
        | dog = Animal(name:"Bob",species:"pug",age:999999)
        | dog.info()
        |
        |
        >>> the part in "proc info" where "this.Animal" is, is basically writing in python  "def info(this):" except "this.Animal" is referencing the "Animal" object
          | and the "this" part is basically like saying root or something else, the very first thing in init for python e.g.  class Animal: def __init__(this):
          | also "this" can be anything as long as ".Animal" is used e.g. "kebab.Animal"
          |
          | if a class has been made in a file and some of its things have a star and others dont, having the star only effects visiblity/usability, it's basicall self control like
          |   something like "enum". If you import that class and execute a function that is visible and that function has a function that needs to be executed that isn't visible, that
          |   none visible function will still execute, just the user themselves cant call that function but if the program was already going to call it then they can
          |
          | adding a star to each procedure and type and type's variables will allow another file to modifiy what is imported e.g. writing:
              |
              | type
              |   Animal* = object
              |     name*   : string
              |     species*: string
              |     age*    : int
              |
              | proc info*(this:Animal) =
              |   echo "Name: ", this.name, "\nSpecies: ", this.species, "\nAge: ", this.age

]#
