import 'package:docscan/blocs/Auth_bloc.dart';
import 'package:docscan/pages/login.dart';
import '../theme.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  late final AuthBloc authBloc = authBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            padding: const EdgeInsets.all(20),
            child: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/document_logo.png",
                        height: 40,
                        width: 40,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                      ),
                      Text(
                        "Scanner App",
                        style: text,
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 40, bottom: 20),
                    child: Image.asset("assets/images/undraw_splash.png"),
                  ),
                  Text("Get Started", style: desc),
                  Text("Lets Secure Your Important Documents", style: title),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  Container(
                    height: 50,
                    width: 500,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFF6777EF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(
                                authBloc: authBloc,
                              ),
                            ));
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ]))));
  }
}
