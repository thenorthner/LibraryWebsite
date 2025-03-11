import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:librarymanagementsystem/utils/appbar.dart';
import 'package:librarymanagementsystem/utils/footer.dart';
import '../utils/carousel2.dart';
import '../widget/gradient_button.dart';



class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: Scaffold(
          appBar: const CustomAppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: [
                  Image.asset(
                    'assets/images/page/library_homepage.jpg',
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 70.0),
                    alignment: Alignment.centerLeft,
                    width: 600,
                    height: 500,
                    child: const Text(
                      'LNMIIT CENTRAL LIBRARY',
                      style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cera Pro'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 70.0),
                    width: 575,
                    height: 450,
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      'Discover a world of knowledge at LNMIIT Central Library! Immerse yourself in a treasure trove of books, cutting-edge research materials, and a vibrant learning atmosphere. Your gateway to limitless learning awaits – step into the future of education today!',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Cera Pro',
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 70.0, top: 100),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                      ),
                      width: 550,
                      height: 450,
                      alignment: Alignment.bottomLeft,
                      child: const Row(
                        children: [
                          Icon(Icons.search),
                          Text(
                            '  What are you looking for ?',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Cera Pro',
                            ),
                          ),
                        ],
                      )),
                ]),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    child: const Text(
                      'New Arrivals',
                      style: TextStyle(
                          fontFamily: 'Cera Pro',
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.black ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: CarouselSlider(
                    items: Carousel2.imageSliders.map((imageList) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: imageList,
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      enlargeCenterPage: true,
                      height: 300,
                      autoPlayCurve: Curves.fastOutSlowIn,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Studio Booking',
                  style: TextStyle(
                      fontFamily: 'Cera Pro',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.black ),
                ),

                const SizedBox(height: 20),


                Stack(
                  children: [
                    Image.asset('assets/images/page/ves.jpg',
                    ),


                    Center(
                      child: Column(
                        children: [

                          const SizedBox(height: 20,),
                          const Text(
                            'Book My Studio',
                            style: TextStyle(
                                fontFamily: 'Cera Pro',
                                fontWeight: FontWeight.bold,
                                fontSize: 70,
                                color: Colors.white),
                          ),

                          const SizedBox(height : 45),


                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Column(

                                children: [

                                  Text(
                                    '✅ Video Editing',
                                    style: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Colors.white),
                                  ),

                                  SizedBox(height : 65),
                                  Text(
                                    '✅ Color Correction and Grading',
                                    style: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height : 65),
                                  Text(
                                    '✅ Audio Editing and Mixing',
                                    style: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height : 65),
                                  Text(
                                    '✅ Special Effects and Visual Enhancements',
                                    style: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Colors.white),
                                  ),


                                ],
                              ),

                              Column(

                                children: [

                                  Text(
                                    '✅  Fast Turnaround',
                                    style: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height : 65),
                                  Text(
                                    '✅  Video Restoration',
                                    style: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height : 65),
                                  Text(
                                    '✅  Full Production Services',
                                    style: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height : 65),
                                  Text(
                                    '✅  Video Archiving and Asset Management',
                                    style: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Colors.white),
                                  ),

                                ],
                              )

                            ],
                          ),

                          const SizedBox(height: 65),

                          GradientButton(w: 200, h: 50, label:'Book Now',onPressed: (){print('1');},),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),
                const Text(
                  'Lost & Found',
                  style: TextStyle(
                      fontFamily: 'Cera Pro',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.black ),
                ),
                const SizedBox(height: 30),

                Stack(
                  children: [
                    Image.asset('assets/images/page/lost&found.png'),

                    Column(

                      children: [
                        const SizedBox(height: 60),
                        const Text(
                          "Welcome to the library's Lost and Found Section!",
                          style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontWeight: FontWeight.bold,
                              fontSize: 39,
                              color: Colors.white ),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 60),
                        Container(
                          width: 1000,
                          child: const Text(
                            "If you lose something in the library or you found something, please help us reunite lost belongings by providing the needed information. Our dedicated librarians will assist in recovery and returns. Your cooperation is valued.",
                            style: TextStyle(
                                fontFamily: 'Cera Pro',
                                fontSize: 30,
                                color: Colors.white ),
                          ),
                        ),
                        const SizedBox(height: 60),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GradientButton(w: 240, h: 45, label: 'You Lost Something ?',onPressed: (){print('1');},),
                            GradientButton(w: 240, h: 45, label: 'Found Something ?',onPressed: (){print('1');}),

                          ],
                        )
                      ],
                    ),


                  ],
                ),

                const SizedBox(height: 30),
                const Text(
                  'Photo Gallery',
                  style: TextStyle(
                      fontFamily: 'Cera Pro',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.black ),
                ),

                const SizedBox(height: 30),


                CarouselSlider(items: Carousel2.generateImageTiles(), options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  enlargeCenterPage: true,
                  height: 500,
                  autoPlayCurve: Curves.fastOutSlowIn,
                )),



                const SizedBox(height: 30),
                const Text(
                  'Development Team',
                  style: TextStyle(
                      fontFamily: 'Cera Pro',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.black ),
                ),

                const SizedBox(height: 30),



                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Column(
                      children: [
                        Image.asset('assets/images/developers/kshitij.jpg',width: 250,height: 250,),
                        const Text("Kshitij Sharma",
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        const Text("Frontend Developer",
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),




                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/developers/gymlord.jpg',width: 250,height: 250,),
                        const Text("Kshitiz Agarwal",
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        const Text("Backend Developer",
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/developers/munni.jpg',width: 250,height: 250,),

                        const Text("Kushagra Agrawal",
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        const Text("System Architect",
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/developers/drugie.jpg',width: 250,height: 250,),

                        const Text("Aurnav Sharma",
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        const Text("Database Designer",
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/developers/randwa.jpg',width: 250,height: 250,),

                        const Text("Kapil",
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),


                        const Text("UI-UX Designer",
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )


                  ],
                ),

                const SizedBox(height: 30),

                const CustomFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

