import 'package:flutter/material.dart';
import 'package:leg_work/utils/toast.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  bool passwordVisible = true;
  bool rePasswordVisible = true;
  TextEditingController textIdController = TextEditingController();
  TextEditingController textPasswordController = TextEditingController();
  TextEditingController textRePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: MediaQuery.of(context).size.height * 0.1),
                  const Text(
                    "ID",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 4),
                  TextField(
                      controller: textIdController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        border: const OutlineInputBorder(),
                        hintText: 'ID',
                      )),
                  const SizedBox(height: 20),
                  const Text(
                    "Password",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 4),
                  TextField(
                    controller: textPasswordController,
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      border: const OutlineInputBorder(),
                      hintText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Password Check",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 4),
                  TextField(
                    controller: textRePasswordController,
                    obscureText: rePasswordVisible,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      border: const OutlineInputBorder(),
                      hintText: 'Password Check',
                      suffixIcon: IconButton(
                        icon: Icon(
                          rePasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              rePasswordVisible = !rePasswordVisible;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              // Image.asset(
              //   "assets/logos/logo_plus_name.png",
              //   width: 200,
              //   height: 40,
              // ),

              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (textIdController.text == "" ||
                          textPasswordController.text == "" ||
                          textRePasswordController.text == "") {
                        toast(context, "Please fill in all required fields");
                      } else {
                        if (textPasswordController !=
                            textRePasswordController) {
                          toast(context,
                              "Passwords do not match. Please re-enter.");
                        } else {
                          // api 콜
                          // navigator
                        }
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.black,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Center(
                          child: Text(
                            "회원가입",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(height: 25)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
