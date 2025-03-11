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
                child: Text("Welcome to our Privacy Policy page",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cera Pro')),
              ),
              const SizedBox(height: 30,),
              const Center(
                child: Text("We are committed to ensuring that all attendees have a safe, enjoyable, and memorable experience at our events. Our comprehensive event policy outlines essential guidelines and regulations that contribute to the success of our gatherings.",
                    style: TextStyle(
                        fontSize: 20,

                        fontFamily: 'Cera Pro')),
              ),
              const SizedBox(height: 30,),

              const Center(
                child: Text('By clicking "View Event Policy," you will be redirected to our external website containing the full event policy document.',
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
                  js.context.callMethod('open', ['https://docs.google.com/document/d/1tdXNJezsn2zmTqJMPqKme3-muKYnmFIKBjK0SxYpuQc/edit?usp=sharing']);
                },
                ),
              ),

            ],
          ),
        )



    );
  }
}
