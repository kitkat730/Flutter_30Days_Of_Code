import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login.png", fit: BoxFit.cover),
              SizedBox(
                height: 15,
                //child: Text("ssg"),
              ),
              Text("Welcome",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  )),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 28.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter User Name", labelText: "UserName"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                        onPressed: () { Navigator.pushNamed(context, MyRoutes.HomeRoute);},
                        child: Text("Sign In")),
                  ],
                ),
              ),
            ],
          ),
        )

        // child: Center(
        //   child: Text(
        //     "Login Page",
        //     style: TextStyle(
        //         fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
        //   ),
        // ),
        );
  }
}
