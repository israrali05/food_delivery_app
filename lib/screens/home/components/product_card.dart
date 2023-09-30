import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/screens/home/components/product_details.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String productImage;
  final Function onTap;
  const ProductCard(
      {super.key,
      required this.productName,
      required this.productImage,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductDetails()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.all(10),
        height: 300,
        width: 180,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Expanded(flex: 2, child: Image.asset(productImage)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Text("50\$/50 Gram"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            // Add your button's onPressed action here
                          },
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                            foregroundColor:
                                Colors.black.withAlpha(90), // Text color
                            side: const BorderSide(
                                color: Colors.grey), // Border color
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Spacer between leading icon and text
                              Text(
                                '50 Gram',
                                style: TextStyle(fontSize: 10),
                              ), // Text label
                              SizedBox(
                                  width:
                                      5), // Spacer between text and trailing icon
                              Icon(
                                Icons.arrow_downward,
                                size: 10,
                              ), // Trailing icon
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            // Add your button's onPressed action here
                          },
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.all(0),

                            foregroundColor:
                                Colors.black.withAlpha(90), // Text color
                            side: const BorderSide(
                                color: Colors.grey), // Border color
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Spacer between leading icon and text
                              SizedBox(
                                  width:
                                      5), // Spacer between text and trailing icon
                              Icon(
                                Icons.remove,
                                size: 10,
                              ),
                              Text(
                                '1',
                                style: TextStyle(fontSize: 10),
                              ), // Text label
                              SizedBox(
                                  width:
                                      5), // Spacer between text and trailing icon
                              Icon(
                                Icons.add,
                                size: 10,
                              ), // Trailing icon
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
