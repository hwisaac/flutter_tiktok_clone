import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

const interests = [
  "Daily life",
  "Comedy",
  "Entertainment",
  "Animals",
  "Daily life",
  "Comedy",
  "Entertainment",
  "Animals",
  "Daily life",
  "Comedy",
  "Entertainment",
  "Animals",
  "Daily life",
  "Comedy",
  "Entertainment",
  "Animals",
  "Daily life",
  "Comedy",
  "Entertainment",
  "Animals",
  "Daily life",
  "Comedy",
  "Entertainment",
  "Animals",
  "Daily life",
  "Comedy",
  "Entertainment",
  "Animals",
  "Daily life",
  "Comedy",
  "Entertainment",
  "Animals",
  "Daily life",
  "Comedy",
  "Entertainment",
  "Animals",
  "Daily life",
  "Comedy",
  "Entertainment",
  "Animals",
  "Daily life",
  "Comedy",
  "Entertainment",
  "Animals",
  "Daily life",
  "Comedy",
  "Entertainment",
  "Animals",
];

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose your interests"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: Sizes.size24,
            right: Sizes.size24,
            bottom: Sizes.size16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.v32,
              const Text(
                "Choose your interests",
                style: TextStyle(
                  fontSize: Sizes.size40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gaps.v20,
              const Text(
                "Get better video recommendations",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              Gaps.v64,
              Wrap(
                runSpacing: 15,
                spacing: 15,
                children: [
                  for (var interest in interests)
                    Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: Sizes.size16,
                          horizontal: Sizes.size24,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(Sizes.size32),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.1)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 5,
                                spreadRadius: 5,
                              )
                            ]),
                        child: Text(
                          interest,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ))
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: Sizes.size10,
            top: Sizes.size12,
            left: Sizes.size24,
            right: Sizes.size24,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.size14,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: const Text(
              "Next",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: Sizes.size16,
              ),
            ),
          ),
        ),
      ),
    );

  }
}
