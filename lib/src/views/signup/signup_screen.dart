import 'package:e_commerce/src/commans/custom_button.dart/custom_button.dart';
import 'package:e_commerce/src/const/paddings/paddings.dart';
import 'package:e_commerce/src/views/login/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                  size: size.width * 0.08,
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "SignUp",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w900,
                      fontSize: size.width * 0.09),
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              Text(
                "Name",
                style:
                    TextStyle(color: Colors.grey, fontSize: size.width * 0.04),
              ),
              const TextField(),
              SizedBox(
                height: size.height * 0.04,
              ),
              Text(
                "Email",
                style:
                    TextStyle(color: Colors.grey, fontSize: size.width * 0.04),
              ),
              const TextField(),
              SizedBox(
                height: size.height * 0.04,
              ),
              Text(
                "Password",
                style:
                    TextStyle(color: Colors.grey, fontSize: size.width * 0.04),
              ),
              const TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey,
                )),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Center(child: CustomButton(text: "Sign Up", onpressed: () {})),
              SizedBox(
                height: size.height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.12),
                child: Row(
                  children: [
                    Text(
                      "Already have an account ?",
                      style: TextStyle(
                          color: Colors.grey, fontSize: size.width * 0.04),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.04),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
