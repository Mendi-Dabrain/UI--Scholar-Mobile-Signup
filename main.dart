import 'package:flutter/material.dart';
import 'enter_contact_screen.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/": (context) => const MyApp(),
      "/enter_contact_screen" : (context) => const EnterContactScreen(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff9BC33C),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight:  Radius.circular(40))
              ),
              height: MediaQuery.of(context).size.height*0.7,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FloatingActionButton.small(
                      onPressed: (){},
                      shape: const CircleBorder(),
                      backgroundColor: Colors.white,
                      child: const Icon(
                          Icons.arrow_back_outlined,
                          color: Color(0xff9BC33C),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Verify Contact to Proceed",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Text(
                        'please verify your contact information with the verification code sent to +237671890045',
                        style: TextStyle(
                          fontSize: 12
                        ),
                    ),
                    const SizedBox(height: 30),
                    Form(
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Enter code",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)
                            )
                          )
                      ),
                    ),
                    const SizedBox(height: 50),
                    Center(
                      child: FilledButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13)
                            )
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: (){
                          setState((){
                            Navigator.pushNamed(context, '/enter_contact_screen');
                          });
                        },
                        child: const Text('Verify'),
                      ),
                    )
                  ],

                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    filterQuality: FilterQuality.high,
                    image: AssetImage(
                        "images/images.png",
                    ),
                    fit: BoxFit.fill
                )
              ),
            )
          ],
        ),
    );
  }
}
