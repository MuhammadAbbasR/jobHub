import 'package:flutter/material.dart';
import 'package:job_hub/config/constants/app_colors.dart';

import '../../widgets/input_text_widget.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          
              SizedBox(height: 12,),
              Center(child: Text("Create Account")),
          
              Text("Join our community of professional builders"),
          
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
               // height: 500,
                width: double.infinity,
                color: AppColors.surface,
                child: Column(
                  spacing: 12,
                  children: [

                    SizedBox(height: 16,),
                    Input(
                      label: 'Full Name', hint: 'user ',
                    ),
                    SizedBox(height: 8,),
                    Input(
                      label: 'Email Address', hint: 'company@example.com',
                    ),

                    SizedBox(height: 8,),
                    Input(
                      label: 'Password', hint: '*********',
                    ),
                    SizedBox(height: 16,),
                    
                    Text("I agree to the terms of service and Privacy Policy "),

                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF0061FF),
                            Color(0xFF6366F1),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            // your action
                          },
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Sign In",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),

                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("Already have an account?",
                          style: TextStyle(
                              color: AppColors.onSurfaceVariant,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(width: 12,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder:
                                (context)=>RegistrationPage()));
                          },
                          child: Text("Sign in ",
                            style: TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),

                      ],

                    ),
                    SizedBox(height: 16,),
                  ],

                ),
              ),

              Center(child: Text("Or Continue with".toUpperCase(),
                style: TextStyle(
                  color: AppColors.greyColor,
                  fontWeight: FontWeight.bold,

                ),
              )),

              SizedBox(height: 16,),


              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF0061FF),
                              Color(0xFF6366F1),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: () {
                              // your action
                            },
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  //       Icon(
                                  //         Icons.arrow_forward,
                                  //         color: Colors.white,
                                  //         size: 18,
                                  //       ),
                                  //       SizedBox(width: 8),
                                  Text(
                                    "Google",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF0061FF),
                              Color(0xFF6366F1),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: () {
                              // your action
                            },
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [

                                  //    Icon(
                                  //      Icons.arrow_forward,
                                  //      color: Colors.white,
                                  //      size: 18,
                                  //    ),
                                  //    SizedBox(width: 8),
                                  Text(
                                    "Apple",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
