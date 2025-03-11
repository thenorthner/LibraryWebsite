import 'package:flutter/material.dart';

class CustomCarouselSlider1 {
  static List<Container> createContainers() {
    return [
      Container(
        decoration:  BoxDecoration(

          borderRadius: BorderRadius.circular(20),
          border: Border.all(width :2 ,color: Colors.white60)

        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('assets/images/events/3.jpg',width: 700,height: 500,),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),

              ),
              width: 300,
              height: 500,
              child: const Column(
                children: [
                   Text(
                    "A Gathering of Minds: Our library recently hosted a vibrant event, bringing together a diverse group of individuals. The attendees, casually dressed and adorned with lanyards, gathered on our grand marble staircase, under the high ceiling of our spacious library. ",
                    style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "The atmosphere was buzzing with intellectual curiosity and camaraderie. Join us for our next event and be part of this dynamic community. ",
                    style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        decoration:  BoxDecoration(

            borderRadius: BorderRadius.circular(20),
            border: Border.all(width :2 ,color: Colors.white60)

        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('assets/images/events/2.jpg',width: 700,height: 500),
            ),
            Container(
              width: 300,
              height: 480,
              child: const Column(
                children: [
                  Text(
                    "A Night of Knowledge:               Our library recently hosted an enlightening event featuring a dynamic speaker, The attentive audience, seated in the grand auditorium with its white walls adorned with paintings, hung on to her every word.",
                    style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "The event was not just a mere lecture; it was a conversation that spanned a multitude of topics and ignited passionate discussions among the attendees.",
                   style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        decoration:  BoxDecoration(

            borderRadius: BorderRadius.circular(20),
            border: Border.all(width :2 ,color: Colors.white60)

        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('assets/images/events/1.jpg',width: 700,height: 500,),
            ),
            Container(
              width: 300,
              height: 500,
              child: const Column(
                children: [
                  Text(
                    "Inspiring Minds: Our library was recently graced by a dynamic TEDx speaker, who delivered a captivating presentation. He held the audience spellbound with his words."
                    ,
                    style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),

                  SizedBox(height: 5,),

                  Text(
                    "This event exemplified our library's unwavering dedication to nurturing intellectual growth and fostering community engagement. Join us for our next event and be part of this enriching experience that will leave you with a renewed sense of curiosity and knowledge."
                    ,style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        decoration:  BoxDecoration(

            borderRadius: BorderRadius.circular(20),
            border: Border.all(width :2 ,color: Colors.white60)

        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('assets/images/events/4.jpg',width: 700,height: 500,),
            ),

            Container(
              width: 300,
              height: 480,
              child: const Column(
                children: [
                  Text(
                    "Crafting Creativity: Our library recently hosted a delightful event where young minds came together to create beautiful, brightly colored birdhouses. The children, their faces glowing with pride, held up their creations for all to see. The event took place in our cozy library, amidst the quiet rustle of pages and the soft murmur of stories.",
                   style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),

                  SizedBox(height: 5,),

                  Text(
                    "This event not only encouraged creativity but also fostered a love for nature among the children. Join us for our next event and let your imagination soar!",
                    style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        decoration:  BoxDecoration(

            borderRadius: BorderRadius.circular(20),
            border: Border.all(width :2 ,color: Colors.white60)

        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('assets/images/events/5.jpg',width: 700,height: 500,),
            ),

            Container(
              width: 300,
              height: 500,
              child:const Column(
                children: [

                  SizedBox(height: 30,),

                  Text(
                    "Imagination Unleashed: Our library recently transformed into a magical realm where children donned vibrant costumes and stepped into the shoes of their favorite characters. Amidst the colorful bookshelves, these young readers discovered not just stories, but also the power of imagination, as they embarked on imaginative journeys through the pages of books.",
                    style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),

                  SizedBox(height: 5,),

                  Text(
                    "Join us for our next event and let your child’s creativity take flight.",
                    style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    ];
  }
}
