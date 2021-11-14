import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool bChangeState = false;

  final _formKey = GlobalKey<FormState>();
  
  moveToHome(BuildContext context) async
  {
    if(_formKey.currentState!.validate())
    {
      setState(() {
        bChangeState = true;
      });

      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomeRoute);
      setState(() {
        bChangeState = false;
      });
    }

  }


  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login1.png", fit: BoxFit.cover),
              const SizedBox(
                height: 15,
                //child: Text("ssg"),
              ),
              Text("Welcome $name",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  )),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 28.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter User Name", labelText: "UserName"),
                        onChanged: (String str) {
                          name = str;
                          setState(() {});
                        },
                        validator: (value) {
                          if(value == null || value.isEmpty)
                          {
                             return "User Name can not be Empty";
                          }
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        obscureText: true,
                        validator: (value) {
                          if(value == null || value.isEmpty)
                          {
                            return "Password can not be Empty";
                          }
                          else if(value.length < 6)
                          {
                            return "Password length must be more than 6 character";
                          }
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Material(
                      color: Colors.blue,
                        borderRadius:
                        BorderRadius.circular(bChangeState ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          // onTap: () async {
                          //   if(_formKey.currentState!.validate())
                          //   {
                          //   setState(() {
                          //     bChangeState = true;
                          //   });
                          //   await Future.delayed(const Duration(seconds: 1));
                          //   await Navigator.pushNamed(context, MyRoutes.HomeRoute);
                          //   setState(() {
                          //     bChangeState = false;
                          //   });
                          //   }
                          // },
                          child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              height: 45,
                              width: bChangeState ? 50 : 150,
                              child: bChangeState
                                  ? const Icon(Icons.done, color: Colors.white)
                                  : const Text(
                                      "Login",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                              alignment: Alignment.center,
                              // decoration: BoxDecoration(
                              //   borderRadius:
                              //       BorderRadius.circular(bChangeState ? 40 : 15),
                              //   color: Colors.blue,
                              // )
                              ),
                        ),
                      )
                      // ElevatedButton(
                      //     style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                      //     onPressed: () { Navigator.pushNamed(context, MyRoutes.HomeRoute);},
                      //     child: Text("Sign In")
                      //     ),
                    ],
                  ),
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
