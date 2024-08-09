import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final FaIcon icon;
  const AuthButton({super.key, required this.text, required this.icon,});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        padding: const EdgeInsets.all(Sizes.size14),
        decoration: BoxDecoration(
            border:
                Border.all(color: Colors.grey.shade300, width: Sizes.size1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment:  Alignment.centerLeft,
              child: icon
            ),
            Expanded( //  Expanded 를 쓰면 텍스트를 중앙정렬한 상태로 아이콘을 왼쪽으로 밀어낸다 
              child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: Sizes.size16, fontWeight: FontWeight.w600),
                      ),
            ),

          ],
        ),
      ),
    );
  }
}
