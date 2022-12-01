import 'package:flutter/material.dart'; // import tahap 1
import 'package:flutter/gestures.dart'; // import tahap 1
import 'package:flutter_form_builder/flutter_form_builder.dart'; // import tahap 2
import 'package:vigenesia/Screens/MainScreens.dart'; //Import tahap 4
import 'package:vigenesia/Screens/Register.dart'; // import tahap 3

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // awal tahap 1
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // awal children tahap 1
                  Text(
                    'Login Area',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ), // akhir tahap 1
                  SizedBox(height: 20),
                  // awal tahap 2
                  Center(
                      child: Form(
                    child: Container(
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: Column(
                          children: [
                            //awal children tahap 2
                            FormBuilderTextField(
                              name: "Email",
                              controller: emailController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: OutlineInputBorder(),
                                  labelText: "Email"),
                            ),
                            SizedBox(height: 20),
                            FormBuilderTextField(
                              name: "Password",
                              controller: passwordController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: OutlineInputBorder(),
                                  labelText: "Password"),
                            ), // akhir tahap 2
                            SizedBox(height: 20),
                            //awal tahap 3 membuat link sign up
                            Text.rich(
                              TextSpan(children: [
                                TextSpan(
                                  text: 'Apa Anda Mempunyai Akun?',
                                  style: TextStyle(color: Colors.black54),
                                ),
                                TextSpan(
                                    text: 'Buat Akun',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        new Register()));
                                      },
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.blueAccent)),
                              ]),
                            ), //akhir tahap 3 membuat sign up
                            //awal tahap 4
                            SizedBox(height: 20),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MainScreens()));
                                },
                                child: Text("Sign In"),
                              ),
                            ),
                            SizedBox(height: 200),
                            Center(
                              child: Text(
                                "Designed By Universitas BSI",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              //Penutup tahapo 4
                            ),
                            SizedBox(height: 10),
                            Center(
                              child: Text(
                                "Edited By Kelompok 5 BSI Bogor Merdeka",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ], // penutup children  tahap 2
                        )),
                  ))
                ], // penutup children tahap 1
              ),
            ),
          ),
        ),
      ),
    );
  }
}
