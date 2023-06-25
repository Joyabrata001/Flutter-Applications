import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/my_button.dart';
import 'package:flutter_application_2/components/my_textfield.dart';
import 'package:flutter_application_2/components/google_apple_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../services/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  // sign user up method
  void signUserUp() async {
  try {
      if (confirmPasswordController.text == passwordController.text) {
        // Check if the user with the entered email already exists
        var signInMethods = await FirebaseAuth.instance.fetchSignInMethodsForEmail(emailController.text);
        
        if (signInMethods.isEmpty) {
          // Email is not registered, create a new user
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text,
          );
          
          // add user details
          addUserDetails(
            firstNameController.text.trim(),
            lastNameController.text.trim(),
            emailController.text.trim());

          // User registration successful
          showErrorMessage('Registration successful!');
        } else {
          // User with the email already exists
          showErrorMessage('Email already registered!');
        }
      } else {
        showErrorMessage('Passwords don\'t match');
      }
    } on FirebaseAuthException catch (e) {
      showErrorMessage(e.code);
    }
  }

  Future addUserDetails(String firstName, String lastName, String email,) async {
    await FirebaseFirestore.instance.collection('users').add({
      'first name': firstName,
      'last name' : lastName,
      'email' : email,
    });
  }

  //error message
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.black),
            )
          ),
        );
      }
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Unfocus text fields when tapping anywhere on the screen
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            
                  const SizedBox(height: 50),
            
                  Text(
                    'Create an account to continue',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20,
                    ),
                  ),

                  const SizedBox(height: 25),
            
                  // firstName textfield
                  MyTextField(
                    controller: firstNameController,
                    hintText: 'First Name',
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),

                  // lastName textfield
                  MyTextField(
                    controller: lastNameController,
                    hintText: 'Last Name',
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),
            
                  // userEmail textfield
                  MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                  ),
            
                  const SizedBox(height: 10),
            
                  // password textfield
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 10),

                  // confirm password textfield
                  MyTextField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                  ),
            
                  const SizedBox(height: 35),
            
                  // sign in button
                  MyButton(
                    text: 'Sign Up',
                    onTap: signUserUp,
                  ),
            
                  const SizedBox(height: 50),
            
                  // or continue with
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        // 2 dividers on either side of Or continue with
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
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
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
            
                  const SizedBox(height: 30),
            
                  // google + apple sign in buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // google button
                      SquareTile(
                        onTap: () => AuthService().signInWithGoogle(),
                        imagePath: 'lib/images/google.png'
                      ),
            
                      const SizedBox(width: 30),
            
                      // apple button
                      SquareTile(
                        onTap: () {},
                        imagePath: 'lib/images/apple.png'
                      )
                    ],
                  ),
            
                  const SizedBox(height: 10),
            
                  // not a member? register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          'Login now',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}