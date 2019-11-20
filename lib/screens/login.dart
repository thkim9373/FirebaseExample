import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(size.width * 0.05),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        elevation: 6,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                            bottom: 32,
                            left: 12,
                            right: 12,
                          ),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.account_circle),
                                    labelText: "Email",
                                  ),
                                  validator: (String value) {
                                    if (value.isEmpty) {
                                      return "Please input correct Email";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.vpn_key),
                                    labelText: "Password",
                                  ),
                                  validator: (String value) {
                                    if (value.isEmpty) {
                                      return "Please input correct Password";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                Container(
                                  height: 8,
                                ),
                                Text("Forgot Password")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
//                  Container(
//                    width: 100,
//                    height: 50,
//                    color: Colors.black,
//                  ),
                ],
              ),
              Container(
                height: size.height * 0.1,
              ),
              Text("Don't Have an Account? Create one."),
              Container(
                height: size.height * 0.05,
              )
            ],
          )
        ],
      ),
    );
  }
}
