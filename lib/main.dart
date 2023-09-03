import 'package:flutter/material.dart';
import 'package:story/storybrain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StoryPage(),
    );
  }
}

StoryBrain stbobj=StoryBrain();

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover
          )
        ),
        padding: EdgeInsets.symmetric(vertical: 50,horizontal: 15),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    stbobj.geStroy()!,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              Expanded(flex: 2,
                child: TextButton(
                  onPressed: (){

                    setState(() {
                      stbobj.NextStory(1);
                    });

                  },
                  child: Text(
                    stbobj.getChoice1()!,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Expanded(
                flex: 2,

                  child: Visibility(
                    visible: stbobj.Buttonvisible(),
                    child: TextButton(

                    onPressed: (){
                      setState(() {
                        stbobj.NextStory(2);
                      });

                    },
                child: Text(
                    stbobj.getChoice2()!,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue
                ),
              ),
                  ))



            ],

          ),
        ),
      ),
    );
  }
}
