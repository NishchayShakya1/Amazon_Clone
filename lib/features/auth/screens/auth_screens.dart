import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/common/widgets/custom_textfield.dart';
import 'package:amazon_clone/constants/global_variable.dart';
import 'package:flutter/material.dart';

enum Auth { signin, signup }

class AuthScreen extends StatefulWidget {
  static const String routename = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalVariables.greyBackgroundCOlor,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: const Text(
                  'Welcome',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                tileColor: _auth == Auth.signup
                    ? GlobalVariables.backgroundColor
                    : GlobalVariables.greyBackgroundCOlor,
                title: const Text(
                  'Create Account',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                leading: Radio(
                    activeColor: GlobalVariables.secondaryColor,
                    value: Auth.signup,
                    groupValue: _auth,
                    onChanged: (Auth? val) {
                      setState(() {
                        _auth = val!;
                      });
                    }),
              ),
              if (_auth == Auth.signup)
                Container(
                  color: GlobalVariables.backgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: _signUpFormKey,
                      child: Column(
                        children: [
                          CustomTextField(
                            controller: _nameController,
                            hintext: 'Name',
                          ),
                          CustomTextField(
                            controller: _emailController,
                            hintext: 'Email',
                          ),
                          CustomTextField(
                            controller: _passwordController,
                            hintext: 'Password',
                          ),
                          CustomButton(text: 'Sign Up', onTap: () {})
                        ],
                      ),
                    ),
                  ),
                ),
              ListTile(
                tileColor: _auth == Auth.signin
                    ? GlobalVariables.backgroundColor
                    : GlobalVariables.greyBackgroundCOlor,
                title: const Text(
                  'Sign-In',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                leading: Radio(
                    activeColor: GlobalVariables.secondaryColor,
                    value: Auth.signin,
                    groupValue: _auth,
                    onChanged: (Auth? val) {
                      setState(() {
                        _auth = val!;
                      });
                    }),
              ),
              if (_auth == Auth.signin)
                Container(
                  color: GlobalVariables.backgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: _signUpFormKey,
                      child: Column(
                        children: [
                          CustomTextField(
                            controller: _emailController,
                            hintext: 'Email',
                          ),
                          CustomTextField(
                            controller: _passwordController,
                            hintext: 'Password',
                          ),
                          CustomButton(text: 'Sign In', onTap: () {})
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        )));
  }
}
