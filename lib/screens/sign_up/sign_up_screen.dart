import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric( horizontal: Sizes.size40 ),
          child: Column(
            children: [
              Gaps.v80,
              Text('Sign up for Tiktok',
              style: TextStyle(
                fontSize: Sizes.size24, 
                fontWeight: FontWeight.w600,),),
              Gaps.v20,
              Text('Create a profile, follow other accounts, make your own videos, and more.',
              style: TextStyle(
                fontSize: Sizes.size16,
                color: Colors.black45
              ),
              textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    bottomNavigationBar: BottomAppBar(
      color: Colors.grey.shade100,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Sizes.size10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account?"),
              Gaps.h10,
              Text("Log in",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600
              ),),
            ],
          ),
      ),

    ),
    );
  }
}