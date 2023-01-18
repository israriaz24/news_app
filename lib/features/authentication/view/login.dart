import 'package:flutter/material.dart';

import '../../../components/gradient_button.dart';
import '../../../components/input_decoration.dart';
import '../../../routes/routes_name.dart';
import '../../../utils/style/text_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              reverse: true,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                    Text(
                      'Welcome back !',
                      style: heading(
                        size: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      'Sign in your account',
                      style: text(
                        size: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.emailAddress,
                      validator: (String? input) {
                        if (input!.isEmpty) {
                          return 'Please enter Email-ID';
                        }
                        if (!RegExp("^(?:[+0]9)?[0-9]{10}").hasMatch(input)) {
                          return "Enter a valid Email-Id";
                        }
                        return null;
                      },
                      autofocus: false,
                      decoration: textFieldMainDecoration(
                          hintText: 'Email Address',
                          icon: const Icon(Icons.email_outlined)),
                      // controller: emailController,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                        obscureText: !passwordVisible,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (String? input) {
                          if (input!.isEmpty) {
                            return 'Please enter password';
                          }

                          return null;
                        },
                        autofocus: false,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            splashRadius: 1,
                            icon: Icon(passwordVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined),
                            onPressed: togglePassword,
                          ),
                          prefixIcon: Icon(Icons.lock_outline),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Password",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        )),
                    const SizedBox(
                      height: 100.0,
                    ),
                    gradientButton1(
                        context: context,
                        rWidth: 92,
                        rHeight: 6,
                        btnText: "Login",
                        onPress: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, RoutesName.feed, (route) => false);
                        }),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
