import 'package:flutter/material.dart';

class EnterContactScreen extends StatefulWidget {
  const EnterContactScreen({super.key});

  @override
  State<EnterContactScreen> createState() => _EnterContactScreenState();
}

class _EnterContactScreenState extends State<EnterContactScreen> {
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
                    onPressed: (){
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    shape: const CircleBorder(),
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.arrow_back_outlined,
                      color: Color(0xff9BC33C),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Enter Contact to proceed",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const Text(
                    'please enter your phone number to continue',
                    style: TextStyle(
                        fontSize: 12
                    ),
                  ),
                  const SizedBox(height: 30),
                  Form(
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Enter phone number",
                            prefixText: "+237|  ",
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
                      onPressed: (){},
                      child: const Text('Next'),
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