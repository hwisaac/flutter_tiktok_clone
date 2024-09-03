import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/authentication/username_screen.dart';
import 'package:tiktok_clone/features/authentication/login_screen.dart';
import 'package:tiktok_clone/features/authentication/widgets/auth_button.dart';
import 'package:tiktok_clone/utils.dart';
import 'package:flutter_gen/gen_l10n/intl_generated.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/';
  const SignUpScreen({super.key});
  void _onLoginTab(BuildContext context) async {
    context.push(LoginScreen.routeName);
  }

  void _onEmailTap(BuildContext context) {
    // Navigator.of(context)
    //     .push(PageRouteBuilder(
    //     transitionDuration: const Duration(seconds: 1),
    //     reverseTransitionDuration: const Duration(seconds: 1),
    //     transitionsBuilder: (context, animation, secondaryAnimation, child) =>
    //         ScaleTransition(
    //             scale: animation,
    //             child: FadeTransition(opacity: animation, child: child)),
    //     pageBuilder: (context, animation, secondaryAnimation) =>
    //         const UsernameScreen()));
    context.push(UsernameScreen.routeName);
    
  }

  @override
  Widget build(BuildContext context) {
    Localizations.localeOf(context);
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.size40,
              ),
              child: Column(
                children: [
                  Gaps.v80,
                  Text(
                    AppLocalizations.of(context)!.signUpTitle("Tiktok"),
                    style: TextStyle(
                      fontSize: Sizes.size24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Gaps.v20,
                  Text(
                    'Create a profile, follow other accounts, make your own videos, and more.',
                    style: TextStyle(
                      fontSize: Sizes.size16,
                      color: isDarkMode(context)
                          ? Colors.grey.shade300
                          : Colors.black45,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Gaps.v40,
                  if (orientation == Orientation.portrait) ...[
                    GestureDetector(
                      onTap: () => _onEmailTap(context),
                      child: const AuthButton(
                          icon: FaIcon(FontAwesomeIcons.user),
                          text: 'Use email & password'),
                    ),
                    Gaps.v16,
                    const AuthButton(
                      icon: FaIcon(FontAwesomeIcons.apple),
                      text: 'Continue with Apple',
                    ),
                  ],
                  if (orientation == Orientation.landscape)
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () => _onEmailTap(context),
                            child: const AuthButton(
                                icon: FaIcon(FontAwesomeIcons.user),
                                text: 'Use email & password'),
                          ),
                        ),
                        Gaps.h16,
                        const Expanded(
                          child: AuthButton(
                            icon: FaIcon(FontAwesomeIcons.apple),
                            text: 'Continue with Apple',
                          ),
                        ),
                      ],
                    )
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.grey.shade50,
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: Sizes.size10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  Gaps.h10,
                  GestureDetector(
                    onTap: () => _onLoginTab(context),
                    child: Text(
                      "Log in",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
