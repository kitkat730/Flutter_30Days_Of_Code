import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool bChangeState = false;
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
              Text("Welcome $name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  )),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 28.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter User Name", labelText: "UserName"),
                      onChanged: (String str) {
                        name = str;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          bChangeState = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.HomeRoute);
                      },
                      child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 45,
                          width: bChangeState ? 50 : 150,
                          child: bChangeState
                              ? Icon(Icons.done, color: Colors.white)
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(bChangeState ? 40 : 15),
                            color: Colors.blue,
                          )),
                    )
                    // ElevatedButton(
                    //     style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                    //     onPressed: () { Navigator.pushNamed(context, MyRoutes.HomeRoute);},
                    //     child: Text("Sign In")
                    //     ),
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
