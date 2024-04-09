import 'package:child_care/components/my_button.dart';
import 'package:child_care/components/my_text_field.dart';
import 'package:child_care/components/square_tile.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  // sign up user
  void signUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(height: 30),
                //Logo
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/kids.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                const SizedBox(height: 25),

                //create massage
                const Text(
                  "Let's create an account for you!",
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

                const SizedBox(height: 10),

                //Confirm Password textField
                MyTextField(
                  controller: confirmpasswordController,
                  hintText: 'Confirm password',
                  obscureText: true,
                ),

                const SizedBox(height: 25),
                //sign Up button
                MyButton(
                  onTap: signUp,
                  text: "Sign Up",
                  onPressed: () {},
                ),

                const SizedBox(height: 20),
                //not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already a member?'),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Login now',
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
                const SizedBox(height: 20),
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
