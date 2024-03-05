import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'auth/login_signup.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                const Text('Welcome to EMS!',style: TextStyle(color: Colors.black,fontSize: 27,fontWeight: FontWeight.w700)),
                const SizedBox(height: 5),
                const Text('Event Management System',style: TextStyle(color: Colors.black,fontSize: 16)),
                const SizedBox(height: 50),
                Padding(padding: const EdgeInsets.only(left: 15,right: 15),child: Image.asset('assets/onboardIcon.png')),
                const SizedBox(height: 50),
                Expanded(
                  child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(left: 15,right: 15),
                            child: Text('The social media platform designed to get you offline',style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            ),
                              textAlign: TextAlign.center,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15,right: 15),
                          child: Text('EMS is an app where users can leverage their social media network to create,discover,share, and monetize events or services.',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 15,right: 15),
                            child: MaterialButton(
                              height: 50,
                                minWidth: double.infinity,
                                color: Colors.white,
                                elevation: 4,
                                onPressed: (){
                                  Get.to(() => const LoginView());
                                },
                                child: const Text('Get Started',style: TextStyle(fontSize: 18,color: Color(0xff274560),fontWeight: FontWeight.w500))
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
