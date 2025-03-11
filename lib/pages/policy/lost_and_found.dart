import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:librarymanagementsystem/widget/gradient_button.dart';

class EventPolicy extends StatelessWidget {
  const EventPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
          child: Column(
            children: [

              const Center(
                child: Text("View Lost and Found Policy",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cera Pro')),
              ),
              const SizedBox(height: 30,),
              const Center(
                child: Text("To review our complete Lost and Found policy, please click the button below. This will redirect you to our external website, where the entire policy is detailed. We appreciate your cooperation in familiarizing yourself with these guidelines to ensure a successful Lost and Found process for all involved.",
                    style: TextStyle(
                        fontSize: 20,

                        fontFamily: 'Cera Pro')),
              ),
              const SizedBox(height: 30,),

              const Center(
                child: Text('By clicking "View Policy" you will be redirected to our external website containing the full event policy document.',
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Cera Pro')),
              ),
              const SizedBox(height: 30,),

              const SizedBox(height: 15),
              Center(
                child: GradientButton(
                  label: 'Click To Know',
                  w: 250,
                  h: 45, onPressed: () {
                  js.context.callMethod('open', ['https://stackoverflow.com/questions/ask']);
                },
                ),
              ),

            ],
          ),
        )



    );
  }
}
