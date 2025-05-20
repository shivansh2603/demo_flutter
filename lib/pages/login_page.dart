import 'package:demo_codepur/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text('Login', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        //child: Padding(
        //padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            Image.asset("assets/login_image.png", fit: BoxFit.cover),
            SizedBox(height: 20),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });

                      await Future.delayed(Duration(milliseconds: 400));

                      //if (!mounted) return;
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      height: 50,
                      width: changeButton ? 50 : 130,
                      //color: Colors.deepPurple,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(
                          changeButton ? 50 : 8,
                        ),
                      ),
                      child: Center(
                        child:
                            changeButton
                                ? Icon(Icons.done, color: Colors.white)
                                : Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //     minimumSize: const Size(150, 50), // Width x Height
                  //     textStyle: const TextStyle(fontSize: 18), // Bigger font
                  //   ),
                  //   child: Text("Login"),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
