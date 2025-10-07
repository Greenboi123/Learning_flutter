import 'package:flutter/material.dart';
import 'package:learning_flutter_again/first_lesson/first_page.dart';
import 'package:learning_flutter_again/first_lesson/home_page.dart';
import 'package:learning_flutter_again/first_lesson/settings_page.dart';
import 'package:learning_flutter_again/second_lesson(setStates)/counter_page.dart';

// var companyName = Text('Felix n Co', style:TextStyle(color: Colors.amber, fontSize: 40));
// var myTransform = Matrix4.skewX(0.1);
// var myDecoration = BoxDecoration(
//     border: Border.all(color: Colors.amber, width: 10),
//     borderRadius: BorderRadius.circular(10),
//     color: Colors.red
// );
//
//
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       body: Container(
//           alignment: Alignment.center,
//           child: Container(
//             padding: const EdgeInsets.all(100),
//             decoration: myDecoration,
//             transform: myTransform,
//             child: companyName,
//           )
//     )
//   )));



/*
VARIABLES: store different types of info
String name = 'Felix Green';
int age = 35;
double pi = 3.1415926;
bool isBeginner = true;

BASIC OPERATORS:
+
-
*
/
% (remainder 9 % 4 -> 1)
++ (increment by 1)
-- (^)

COMPARISON OPERATIONS:
==
!=
>, <, >=, <=,

LOGICAL OPERATOR:
&& is AND operator (true if both sides true)
|| is OR operator (true if one side true)
!abc is the not operator (just turns any boolean true to false and vice versa)

CONTROL FLOW:
IFs:
if (condition) {
  do something
}

if () {
  do something
} else {
  something else
}

if () {
  do something
} else if (another condition) {
  do something else
} else {
  something else
}

Takes up less space then if (for multi ifs):
switch (grade) {
  case "A":
    print('Excellent!');
  case "B":
    print('Good!');
  case "C":
    print('OK!');
    break;
  default:
    print("Invalid grade")
}

for (initialisation; condition; iteration;) {
}
FOR EXAMPLE:
for (int i=0; i <= 5; i++) {
print(i);
}
CAN ADD breaks which jump out of loops if:
if (condition) {
  break
}
CAN ADD continue which skips an output of a loop:
if (condition) {
  continue
}

while (condition) {
  do something
}

------------------------------------------------------------------------------
FUNCTIONS (or METHODS):
-- void == doesn't return anything
-- int == returns an int (when calling have to have int at start,
                          not needed with void)


// greet function:
void greet () {
  print("Hello world!");
}

// function with parameters:
void greetPerson(String name, int age) {
  print("Hello, $name who is this old: $age, and will ${age+1} next year");
}

// function returns an int:
int addNums(int a, int b) {
  int sumNum = a + b;
  return sumNum;
}

------------------------------------------------------------------------------
DATA STRUCTURES:

// LIST: [] ordered collection of elements, can have duplicates.
List<String> names = ['bob', 'dan', 'steve', 'steve'];
List<int> numbers = [1, 2, 3];
// numbers[0] -> 1
// numbers[1] -> 2
// numbers[2] -> 3
void printNumbers() {
  for (int i=0; i<numbers.length; i++) {
    print(numbers[i]);
  }
}

// SET: {} Unordered collection of unique elements.
// Can apply set algebra amongst other things
Set<String> uniqueNames = {'bob', 'dan', 'steve'};

// MAP: {} Stored as key-value pairs
Map user = {
  'name': 'Felix',
  'age': 27,
  'height': 180,
};
// user['name'] -> 'Felix
// user['age'] -> 27


------------------------------------------------------------------------------
EXAMPLE USE:
// body: Center(
//   child: Container(
//     decoration: BoxDecoration(
//       color: Colors.deepPurple,
//       borderRadius: BorderRadius.circular(20),
//       border: Border.all(color: Colors.blueAccent, width: 10),
//     ),
//     alignment: Alignment.center,
//     height: 300,
//     width: 300,
//     child: Icon(Icons.local_pizza, size: 100, color: mainColor),

// body: Column(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     Expanded(
//       flex: 2, // 50% space (2+1+1=4) (flex is default 1 for each)
//       child: Container(
//         color: Colors.deepPurple[100]
//       ),
//     ),
//     Expanded(
//       child: Container(
//       color: Colors.deepPurple[300]
//       ),
//     ),
//     Expanded(
//       child: Container(
//       color: Colors.deepPurple[400]
//       ),
//     ),
//     ]
//   ),

// ListView(
//   scrollDirection: Axis.horizontal, //For rows (if not then column like)
//   children: [
//     Container(
//       width: 400,
//       color: Colors.deepPurple[100]
//     ),
//     Container(
//       width: 400,
//       color: Colors.deepPurple[300]
//     ),
//     Container(
//       width: 400,
//       color: Colors.deepPurple[400]
//     ),
//   ]
// ),

// List names = ['bob', 'dan', 'steve'];
// ListView.builder(
//   itemCount: names.length,
//     itemBuilder: (context, index) => ListTile( // => just saying return List tile (just shorter syntax).
//       title: Text(names[index]), // index is just item count (0->3)
//   ),
// ),

// GridView.builder(
//   itemCount: 64,
//   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
//   itemBuilder: (context, index) => Container(
//     color: Colors.deepPurple,
//     margin: EdgeInsets.all(2),
//   ),
// ),

// Stack(
//   alignment: Alignment.center,
//   children: [
//     // big box
//     Container(
//     height: 300,
//     width: 300,
//     color: Colors.deepPurple[100],
//     ),
//     Container(
//     height: 200,
//     width: 200,
//     color: Colors.deepPurple[300],
//     ),
//     Container(
//     height: 100,
//     width: 100,
//     color: Colors.deepPurple[400],
//     )
//   ]
// )

// body: Center(
//   child: GestureDetector( //Can add GestureDetector to any widget!
//     onTap: () {
//       // do something
//       print('User Tapped');
//     },
//     child: Container(
//       height: 200,
//       width: 200,
//       color: Colors.deepPurple,
//       child: Center(child: Text('Tap Me!', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white)))
//     ),
//   ),
// )
// OR MORE SIMPLY:
void userTapped () {
  print('User Tapped!');
}
// body: Center(
//   child: GestureDetector( //Can add GestureDetector to any widget!
//     onTap: userTapped,
//     child: Container(
//       height: 200,
//       width: 200,
//       color: Colors.deepPurple,
//       child: Center(child: Text('Tap Me!', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white)))
//     ),
//   ),
// )

--------------------------------------------------------------------------------------------
NAVIGATION:

// AppBar(
//   centerTitle: true,
//   title: appBarText,
//   backgroundColor: Colors.deepPurple,
//   leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu, color:mainColor)),
//   actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout, color:mainColor))]
// ),

// onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SecondPage())
//             );
//           },
CAN INSTEAD ADD A ROUTES IN THE MAIN DART, THEN instead of all that can do:
// onPressed: () {
//             Navigator.pushNamed(context, '/secondpage');
//           },
THE ADDED ROUTES ARE:
// return MaterialApp(
//   debugShowCheckedModeBanner: false,
//   home: FirstPage(),
//   routes: {
//     '/firstpage': (context) => FirstPage(),
//     '/secondpage': (context) => SecondPage(),
//   },
// );

DRAWER AND NAVIGATION
// Drawer(
//         backgroundColor: Colors.deepPurple,
//         child: Column(
//           children: [
//             // Takes up space for the logo
//             DrawerHeader(child: Icon(
//                 Icons.local_pizza,
//                 size:50,
//                 color: Colors.white)
//             ),
//             // Positions for other tiles
//             ListTile( // Not ListView, just one tile
//               leading: Icon(Icons.home, color: Colors.white),
//               title: Text('Home', style: TextStyle(color: Colors.white)),
//               onTap: () {
//                 // 'pop' the drawer seems to push draw away for when you return
//                 Navigator.pop(context);
//                 // move to the home page
//                 Navigator.pushNamed(context, '/homePage');
//               },
//             ),
//             ListTile(
//                 leading: Icon(Icons.settings, color: Colors.white),
//                 title: Text('Settings', style: TextStyle(color: Colors.white)),
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.pushNamed(context, '/settingsPage');
//                 },
//             )
//           ],
//         )
//       ),

CAN ALSO NAVIGATE WITH BOTTOMNAVIGATIONBAR
HERE IT NEEDS A STATEFUL WIDGET TO ALLOW CHANGES FROM UI INTERACTION
(NEEDS TO BE A SEPERATE WIDGET FROM ANY PAGE YOU'RE CALLING)
(SETSTATE() REBUILDS JUST WHAT IS NEEDED)
// class _FirstPageState extends State<FirstPage> {
//   int _selectedIndex = 0; // starts at homepage
//
//   void _navigateBottomBar(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   final List _pages = <Widget>[
//     //home
//     HomePage(),
//
//     //profile
//     ProfilePage(),
//
//     //settings
//     SettingsPage(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TopBar'),
//         centerTitle: true,
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _navigateBottomBar,
//         items: [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//               ),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Profile'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.settings),
//               label: 'Settings'),
//         ])
//     );
//   }
// }


*/


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}




