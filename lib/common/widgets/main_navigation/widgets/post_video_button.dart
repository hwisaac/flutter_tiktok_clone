import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class PostVideoButton extends StatelessWidget {
  const PostVideoButton({
    super.key,
    required this.inverted,
  });
  final bool inverted;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          right: 20,
          child: Container(
            height: 30,
            width: 25,
            padding: const EdgeInsets.symmetric(horizontal: Sizes.size8),
            decoration: BoxDecoration(
                color: const Color(0xff61d4f0),
                borderRadius: BorderRadius.circular(Sizes.size11)),
          ),
        ),
        Positioned(
          left: 20,
          child: Container(
            height: 30,
            width: 25,
            padding: const EdgeInsets.symmetric(horizontal: Sizes.size8),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(Sizes.size11)),
          ),
        ),
        Container(
          height: 30,
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size12,
          ),
          decoration: BoxDecoration(
              color: inverted ? Colors.white : Colors.white,
              borderRadius: BorderRadius.circular(
                Sizes.size10,
              )),
          child: const Center(
            child: FaIcon(
              FontAwesomeIcons.plus,
              color: Colors.black,
              size: 18,
            ),
          ),
        ),
      ],
    );
  }
}
