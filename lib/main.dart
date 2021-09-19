import 'package:flutter/material.dart';

import 'carosul_slider.dart';
import 'main_page.dart';
import 'slider_modal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carosul Slider',
      home: CarosulSlider(),
    );
  }
}

//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//
//   List<SliderModel> slides = [];
//   int currentIndex = 0;
//   late PageController _controller;
//
//   @override
//   void initState() {
//
//     super.initState();
//     _controller = PageController(initialPage: 0);
//     slides = getSlides();
//   }
//   @override
//   void dispose(){
//     _controller.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView.builder(
//                 scrollDirection: Axis.horizontal,
//                 onPageChanged: (value){
//                   setState(() {
//                     currentIndex = value;
//                   });
//                 },
//                 itemCount: slides.length,
//                 itemBuilder: (context, index){
//                   return Slider(
//                     image: slides[index].getImage(),
//                     title: slides[index].getTitle(),
//                     desc: slides[index].getDesc(),
//                   );
//                 }
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(slides.length, (index) => buildDot(index, context),
//             ),
//           ),
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               color: Colors.green,
//             ),
//             height: 60,
//             margin: const EdgeInsets.all(40),
//             width: double.infinity,
//             child: TextButton(
//               child: Text(currentIndex == slides.length-1 ? "Continue": "Skip",style: const TextStyle(color: Colors.white),),
//               onPressed: (){
//                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const MainPage()),
//                     );
//                     _controller.nextPage(duration: const Duration(milliseconds: 100), curve: Curves.bounceIn);
//               },
//             ),
//           ),
//         ],
//       ),
//       backgroundColor: Colors.white,
//     );
//   }
//
//   // container created for dots
//   Container buildDot(int index, BuildContext context){
//     return Container(
//       height: 10,
//       width: currentIndex == index ? 25 : 10,
//       margin: const EdgeInsets.only(right: 5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.green,
//       ),
//     );
//   }
// }
//
// // slider declared
// class Slider extends StatelessWidget {
//   String image;
//   String title;
//   String desc;
//
//   Slider({Key? key, required this.image,required this.title,required this.desc}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//
//       // contains container
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // image given in slider
//           Image(image: AssetImage(image)),
//           const SizedBox(height: 25),
//           Text(title,style: const TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
//           Text(desc,style: const TextStyle(color: Colors.black,fontSize: 13.0),textAlign: TextAlign.center,),
//         ],
//       ),
//     );
//   }
// }