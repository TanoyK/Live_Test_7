import 'package:flutter/material.dart';
import 'package:live_test_7/secondscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductList"),
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text("Cointer Value:"),
            Text("$counter"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    flex: 50,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: (){
                        setState(() {
                          counter = counter+1;
                          if (counter >=17) {
                            AlertDialog alert = AlertDialog(
                              title: const Text("Counter Alert!"),
                              content: Text("Counter value 5!"),
                            );
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alert;
                              },
                            );
                          }

                          if (counter>=10){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => MyHomePage(title: "Live Test"),));
                          }


                        });

                      },
                      child: Text("+",style: TextStyle(color: Colors.red),),
                    )),
                Flexible(
                    flex: 25,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: (){
                        setState(() {
                          counter = counter-1;
                        });
                      },
                      child: Text("-",style: TextStyle(color: Colors.red),),
                    ))
              ],
            )
          ],

        ),
      ),

    );
  }
}
