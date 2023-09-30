import 'package:food_delivery_app/consts/consts.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(children: [
        buttomNavigationutton(
          title: "Add to Wishlist",
          textColor: Colors.white,
          backgroundColor: textColorBalck,
          iconColor: Colors.white,
          iconData: Icons.favorite_border_outlined,
        ),
        buttomNavigationutton(
          textColor: textColorBalck,
          title: "Go to Cart",
          backgroundColor: primaryColor,
          iconColor: Colors.black,
          iconData: Icons.shop_outlined,
        ),
      ]),
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: Column(children: [
        Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              child: Column(children: [
                const ListTile(
                  title: Text("Fresh Tomatos"),
                  subtitle: Text("50\$50"),
                ),
                Container(
                  height: 300,
                  padding: const EdgeInsets.all(40),
                  child: Image.asset(
                    imgtomato,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: double.infinity,
                  child: const Text(
                    "Available Products",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.green[300],
                          ),
                          Radio(
                            value: (),
                            onChanged: (value) {},
                            activeColor: Colors.green,
                            groupValue: null,
                          )
                        ],
                      ),
                      const Text("\$50"),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(children: [
                          Icon(
                            Icons.add,
                            size: 16,
                            color: primaryColor,
                          ),
                          Text(
                            "ADD",
                            style: TextStyle(color: primaryColor, fontSize: 13),
                          )
                        ]),
                      ),
                    ],
                  ),
                )
              ]),
            )),
        Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About This Product",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "A product description is a form of marketing copy used to describe and explain the ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ))
      ]),
    );
  }

  Widget buttomNavigationutton(
      {Color? iconColor,
      Color? backgroundColor,
      Color? textColor,
      String? title,
      IconData? iconData,
      Function? ontap}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: backgroundColor,
        child: Row(children: [
          Icon(
            iconData,
            size: 16,
            color: iconColor,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title!,
            style: TextStyle(
              color: textColor,
            ),
          )
        ]),
      ),
    );
  }
}
