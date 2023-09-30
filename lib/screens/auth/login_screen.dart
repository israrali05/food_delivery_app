import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:food_delivery_app/consts/consts.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imgBackGround), fit: BoxFit.cover)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Sigin With continue",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Vegi",
                    style: TextStyle(
                        fontSize: 56,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(color: Colors.green.shade900, blurRadius: 5)
                        ]),
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Apple,
                        text: "Sign In with Apple",
                        onPressed: () {},
                      ),
                      SignInButton(
                        Buttons.Google,
                        text: "Sign In with Google",
                        onPressed: () {},
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "By Signing in you are agreeing to our",
                        style: TextStyle(color: Colors.grey.withAlpha(90)),
                      ),
                      Text("Terms and Privacy Policy",
                          style: TextStyle(color: Colors.black.withAlpha(80)))
                    ],
                  )
                ]),
          ),
        ]),
      ),
    );
  }
}
