import 'package:food_delivery_app/consts/consts.dart';

class DrawarWidget extends StatefulWidget {
  const DrawarWidget({super.key});

  @override
  State<DrawarWidget> createState() => _DrawarWidgetState();
}

class _DrawarWidgetState extends State<DrawarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber.shade300,
      child: ListView(
        children: [
          DrawerHeader(
              child: Row(
            children: [
              const CircleAvatar(
                radius: 43,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                    radius: 40, backgroundImage: AssetImage(imgProfile)),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("Welcome Guest"),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(width: 10))),
                    child: const Text("LOGIN"),
                  )
                ],
              )
            ],
          )),
          listTileWidget(Icons.home, "Home"),
          listTileWidget(Icons.shop_outlined, "Review Cart"),
          listTileWidget(Icons.person_2_outlined, "My Profile"),
          listTileWidget(Icons.notification_add_outlined, "Notification"),
          listTileWidget(Icons.star_border_outlined, "Rating & Review"),
          listTileWidget(Icons.heat_pump_sharp, "Wishlist"),
          listTileWidget(Icons.copy_all_outlined, "Raise a Complain"),
          listTileWidget(Icons.format_quote_outlined, "FAQs"),
          const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Conatct Us'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Call us: ',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text('+92309675747'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Email Support: ',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text('israralidev@dev.com'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget listTileWidget(IconData icon, String title) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
