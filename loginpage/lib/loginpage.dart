import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();

    Future login() async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _email.text.trim(), password: _password.text.trim());
    }

    Future loginwithgoogle() async {
      final firebaseauth = await FirebaseAuth.instance;
      final googleservice = await GoogleSignIn();
      final googleuser = await googleservice.signIn();
      print(googleuser);
      final GoogleSignInAuthentication? googleauth =
          await googleuser?.authentication;
      final cred = GoogleAuthProvider.credential(
          accessToken: googleauth?.accessToken, idToken: googleauth?.idToken);
      final user = await firebaseauth.signInWithCredential(cred);
      print(user);
    }

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
              height: 889,
              width: MediaQuery.of(context).size.width - 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://w0.peakpx.com/wallpaper/287/741/HD-wallpaper-gradient-background-gradient-background-blue-lockscreen.jpg"),
                      // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFjTELb_Gx7WWHDHr4eqcoI1i9qB1zv-rIOZUe1-MisSVz0re91re0rpLJmyhh0YjV6go&usqp=CAU"),
                      // "data:image/jpeg;base64,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"),
                      fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Container(
                      height: 500,
                      width: 400,
                      decoration: BoxDecoration(
                          // color: Colors.transparent,
                          // border: Border.all(color: Colors.grey, width: .4),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 135,
                          ),
                          Container(
                            height: 50,
                            width: 270,
                            child: Expanded(
                                child: TextField(
                              controller: _email,
                              decoration: InputDecoration(
                                  fillColor: Colors.white38,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                          width: .1, color: Colors.green)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(width: .1)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(width: .1)),
                                  prefixIcon: Icon(
                                    Icons.perm_identity_rounded,
                                    color: Colors.white,
                                  ),
                                  labelText: "   email/username",
                                  labelStyle: TextStyle(color: Colors.white)),
                            )),
                          ),
                          // ==============================================================================================
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 69,
                            width: 270,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: TextField(
                                  controller: _password,
                                  decoration: InputDecoration(
                                      fillColor: Colors.white38,
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                              width: .1, color: Colors.green)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(width: .1)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(width: .1)),
                                      prefixIcon: Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.white,
                                      ),
                                      labelText: "   password",
                                      labelStyle:
                                          TextStyle(color: Colors.white)),
                                )),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "    Forgot password?",
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 0),
                                )
                              ],
                            ),
                          ),
                          // ============================================================================================
                          SizedBox(
                            height: 100,
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.only(right: 83),
                            child: Container(
                              height: 35,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: .3, color: Colors.white)),
                              child: TextButton(
                                  onPressed: () {
                                    login();
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        height: 1),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: loginwithgoogle,
                        child: Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 165,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            "Signup with Google?",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 30,
                        width: 75,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "signup");
                            },
                            child: Text(
                              "SignUp",
                              style:
                                  TextStyle(height: 0.5, color: Colors.white),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
