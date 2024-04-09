import 'package:child_care/components/my_button.dart';
import 'package:child_care/components/my_text_field.dart';
import 'package:child_care/components/square_tile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  // sign in user
  void signIn() {}

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(height: 50),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/kids.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                const SizedBox(height: 25),
//fromARGB(255, 255, 152, 185)
                //welcome back massage
                const Text(
                  "Welcome back You\'ve been missed!",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                //email testfield
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                //Password textField
                MyTextField(
                  controller: passwordController,
                  hintText: 'password',
                  obscureText: true,
                ),

                const SizedBox(height: 9),
                //Forget Password
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget Password?",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                //sign in button
                MyButton(
                  onTap: signIn,
                  text: "Sign In",
                  onPressed: () {},
                ),

                //not a member? register now
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a member?'),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Register now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFF7171)),
                      ),
                    ),
                  ],
                ),
                // or continue with
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey[400],
                          thickness: 0.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        color: Colors.grey[400],
                        thickness: 0.5,
                      ))
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                //google + facebook buttons
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google button
                    SquareTile(imagePath: 'assets/google.png'),
                    SizedBox(width: 10),
                    //facebook button
                    SquareTile(imagePath: 'assets/facebook.png'),
                    SizedBox(width: 10),

                    SquareTile(imagePath: 'assets/apple.png'),
                    SizedBox(width: 10),

                    SquareTile(imagePath: 'assets/twitter.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
