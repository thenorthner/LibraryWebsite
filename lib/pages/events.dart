import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:librarymanagementsystem/utils/appbar.dart';
import 'package:librarymanagementsystem/utils/footer.dart';

import '../utils/carousel.dart';
import '../utils/carousel2.dart';


class EventPage extends StatelessWidget {

  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body :
      SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/page/event.png'),
                Column(
                  children: [

                    Container(
                      margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      child: const Text(
                        "Poetry Night : 13th October 2023",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cera Pro'),
                      ),
                    ),


                    const SizedBox(
                      height: 20,
                    ),

                  ],
                )


              ],
            ),


            Stack(
              children: [
                Image.asset('assets/images/events/back.jpg'),
                Column(
                  children: [

                    const Center(
                      child: Text(
                        "Past Event Archive",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Cera Pro'),
                      ),
                    ),

                    const SizedBox(height: 10,),

                    CarouselSlider(items: CustomCarouselSlider1.createContainers(), options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 9),
                      enlargeCenterPage: true,
                      height: 550,
                      autoPlayCurve: Curves.fastOutSlowIn,


                    )),

                  ],
                )
              ],
            ),

            Stack(
              children: [
                Image.asset('assets/images/events/back2.jpg'),
                Column(
                  children: [
                    SizedBox(height: 40,),
                    const Center(
                      child: Text(
                        "Upcoming Events",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Cera Pro'),
                      ),
                    ),

                    const SizedBox(height: 40,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        const Column(
                          children: [
                            Text(
                              "Event Info",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),

                            SizedBox(height: 35,),

                            Text(
                              "1st December 2023 [10:00 am]",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),

                            Text(
                              "13th December 2023 [8:00 pm]",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),


                            Text(
                              "27th December 2023 [9:00 am]",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),

                            Text(
                              "9th January 2024 [11:00 am]",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),
                            Text(
                              "21st January 2024 [7:00 pm]",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),

                            Text(
                              "7 February 2024 [11:00 am]",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),

                          ],
                        ),

                        const Column(

                          children: [

                            Text(
                              "Name Of The Event",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),

                            Text(
                              "Book Lover's Retreat",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),

                            Text(
                              "Family Storytelling Night",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),


                            Text(
                              "Literary Trivia Challenge",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),

                            Text(
                              "Young Writers' Workshop",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),
                            Text(
                              "Poetry Slam and Open Mic",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),
                            Text(
                              "Science Fiction Book Club",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),

                          ],
                        ),

                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Text(
                              "Event Head",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),

                            Text(
                              "Kshitiz Agarwal",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),

                            Text(
                              "Kshitij Sharma",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),
                            Text(
                              "Rahul Bannerjee",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),
                            Text(
                              "Kushagra Agrawal",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),
                            Text(
                              "Aurnav Sharma",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),
                            Text(
                              "Kapil Sharma",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                          ],
                        ),


                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Text(
                              "Contact Us",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),

                            Text(
                              "+91 9413967074",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),

                            Text(
                              "+91 7014634410",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),


                            Text(
                              "+91 7425987870",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),

                            Text(
                              "+91 8956741258",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),

                            Text(
                              "+91 7845698742",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            SizedBox(height: 35,),

                            Text(
                              "+91 8956721436",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),


                          ],
                        ),


                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            const Text(
                              "Participate",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),
                            const SizedBox(height: 35,),


                            TextButton(onPressed:(){}, child:  const Text(
                              "Click Here",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            ),),

                            const SizedBox(height: 35,),

                            TextButton(onPressed:(){}, child:  const Text(
                              "Click Here",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            )),

                            const SizedBox(height: 35,),


                            TextButton(onPressed:(){}, child: const Text(
                              "Click Here",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            )),
                            const SizedBox(height: 35,),

                            TextButton(onPressed:(){}, child: const Text(
                              "Click Here",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            )),
                            const SizedBox(height: 35,),

                            TextButton(onPressed:(){}, child:const Text(
                              "Click Here",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            )),
                            const SizedBox(height: 35,),

                            TextButton(onPressed:(){}, child:const Text(
                              "Click Here",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Cera Pro'),
                            )),


                          ],
                        ),

                      ],
                    ),
                  ],
                )
              ],
            ),


            const SizedBox(height: 20,),

            const Center(
              child: Text(
                "Our Sponsers",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Cera Pro'),
              ),
            ),
            const SizedBox(height: 20,),

            CarouselSlider(items: Carousel2.generateImageTiles3(), options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              enlargeCenterPage: true,
              height: 300,
              autoPlayCurve: Curves.fastOutSlowIn,

            )),
            const SizedBox(height: 20,),
            const CustomFooter(),
          ],
        ),
      ),
    );
  }
}
