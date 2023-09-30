import 'package:food_delivery_app/consts/consts.dart';
import 'package:outlined_text/outlined_text.dart';

import 'components/drawar.dart';
import 'components/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: DrawarWidget(),
      ),
      appBar: AppBar(
        title: const Text("Home"),
        actions: const [
          CircleAvatar(
            radius: 18,
            backgroundColor: Color.fromARGB(255, 245, 241, 193),
            child: Icon(Icons.search, size: 22),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 18,
            backgroundColor: Color.fromARGB(255, 245, 241, 193),
            child: Icon(
              Icons.shop_outlined,
              size: 22,
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage(imgBanner)),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              Positioned(
                  left: 0,
                  child: Container(
                    height: 55,
                    width: 90,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(60),
                            bottomLeft: Radius.circular(30))),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10, right: 10),
                      child: Text(
                        "Vego",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                  )),
              Positioned(
                  bottom: 40,
                  left: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OutlinedText(
                        strokes: [
                          OutlinedTextStroke(
                              color: Colors.green.shade700, width: 5),
                        ],
                        text: const Text(
                          "30% Off",
                          style: TextStyle(
                              height: 1,
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "On all vegetable Products",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )),
              const Positioned(
                left: 30,
                bottom: 10,
                child: Text(
                  "*vegetables available home",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Herbs Seasonings",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "View all",
              style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
            ),
          ]),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductCard(
                  productImage: imgtomato,
                  productName: 'bes Tomato',
                  onTap: () {}),
              ProductCard(
                  productImage: imgtomato,
                  productName: 'bes Tomato',
                  onTap: () {}),
              ProductCard(
                  productImage: imgtomato,
                  productName: 'bes Tomato',
                  onTap: () {}),
              ProductCard(
                  productImage: imgtomato,
                  productName: 'bes Tomato',
                  onTap: () {}),
              ProductCard(
                  productImage: imgtomato,
                  productName: 'bes Tomato',
                  onTap: () {}),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Fresh Fruits",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "View all",
              style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
            ),
          ]),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductCard(
                  productImage: imgtomato,
                  productName: 'bes Tomato',
                  onTap: () {}),
              ProductCard(
                  productImage: imgtomato,
                  productName: 'bes Tomato',
                  onTap: () {}),
              ProductCard(
                  productImage: imgtomato,
                  productName: 'bes Tomato',
                  onTap: () {}),
              ProductCard(
                  productImage: imgtomato,
                  productName: 'bes Tomato',
                  onTap: () {}),
              ProductCard(
                  productImage: imgtomato,
                  productName: 'bes Tomato',
                  onTap: () {}),
            ],
          ),
        )
      ]),
    );
  }
}
