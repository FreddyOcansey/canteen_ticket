import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Canteen Ticket',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(
            255, 248, 68, 15)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Canteen Ticket'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final userPasswordController = TextEditingController();
  String userName ="Fred";



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:  SingleChildScrollView(
        child: Column (
        children: [

          const Padding(padding: EdgeInsets.fromLTRB(0,50,0,0),
            child: Image(image: AssetImage('assets/images/logo.jpeg'),
              width: 140.0,
              height: 140.0,

            ),
          ),
          Padding(padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
          child: DropdownButton<String>(
            value:userName,
            icon: const Icon(Icons.arrow_drop_down_circle_outlined),
            style: const TextStyle(color: Colors.blueAccent, fontSize: 28),

            onChanged: (String? newValue){
                setState(() {
                  userName = newValue!;

                });
            },
            items: const [
              DropdownMenuItem<String>(
                value: "Fred",
                child: Text("Fred"),
              ),
              DropdownMenuItem<String>(
                value: "Ella",
                child: Text("Ella"),
              ),
              DropdownMenuItem<String>(
                value: "Eddy",
                child: Text("Eddy"),
              ),
            ],
          ),

          ),


          Padding(padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),

            child:  TextField(
              controller: userPasswordController ,
              decoration: const InputDecoration(
                labelText: 'Password',
                border:   OutlineInputBorder(),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),

              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),



          ),
          
          Padding(padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),

           child: ElevatedButton(onPressed: (){

           },
               style: ElevatedButton.styleFrom(
                 foregroundColor: Colors.white,
                 backgroundColor: Colors.blue, // Text color
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(5.0), // Button border radius
                 ),
               ),

               child: const Text("Sign In",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                )
               )
           ),
          
        )
          
        ],

        ),
      ),

    );
  }
}
