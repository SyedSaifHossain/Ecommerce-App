import 'package:flutter/material.dart';
import '../widgets/custom_text.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> imageList = [
      "https://picsum.photos/800/400?random=1",
      "https://picsum.photos/800/400?random=2",
      "https://picsum.photos/800/400?random=3",
      "https://picsum.photos/800/400?random=4",
      "https://picsum.photos/800/400?random=5",
    ];

    final List<String> iconList = [
      "https://img.icons8.com/ios-filled/100/000000/shopping-cart.png",
      "https://img.icons8.com/ios-filled/100/000000/laptop.png",
      "https://img.icons8.com/ios-filled/100/000000/t-shirt.png",
      "https://img.icons8.com/ios-filled/100/000000/smartphone.png",
      "https://img.icons8.com/ios-filled/100/000000/headphones.png",
      "https://img.icons8.com/ios-filled/50/ffffff/electronics.png",
      "https://img.icons8.com/ios-filled/50/ffffff/home.png",
      "https://img.icons8.com/ios-filled/50/ffffff/books.png",
    ];
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.lightBlue, Colors.cyan],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.menu, size: 25, color: Colors.white),
                    Row(
                      children: const [
                        Icon(Icons.search, size: 25, color: Colors.white),
                        SizedBox(width: 15),
                        Icon(Icons.more_vert, size: 25, color: Colors.white),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(
                    title: "Hi, Mr.Piter",
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                CarouselSlider.builder(
                  itemCount: imageList.length,

                  itemBuilder:
                      (BuildContext context, int index, int pageViewIndex) =>
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: NetworkImage(imageList[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                  options: CarouselOptions(
                    height: 170,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    initialPage: 0,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      title: "Top Categories",
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      title: "View All",
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,

                    itemCount: iconList.length,
                    itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.all(8),
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white70, width: 2),
                      ),
                      child: Center(
                        child: Image.network(
                          iconList[index],
                          width: 30,
                          height: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 0.9,
                    ),
                    itemCount: imageList.length,
                    itemBuilder: (context, index) => Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(imageList[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
