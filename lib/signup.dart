import 'package:flutter/material.dart';
import 'package:flutter_eshop/loginpage.dart';
import 'constant.dart';


class SignupPage extends StatelessWidget{
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 90,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  highlightColor: Colors.pink,
                  onPressed: (){
                    _navigateToLoginScreen(context);
                  },
                ),
               const SizedBox(width: 10,),
                const Text(
                  'Signup to get Started!',
                  style: TextStyle(
                      fontFamily: gilory,
                      fontSize: 20
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60,),
            Container(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Name',
                        labelText: 'Name',
                        labelStyle: TextStyle(
                            fontFamily: gilory
                        )
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            fontFamily: gilory
                        )
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            fontFamily: gilory
                        )
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Confirm Password',
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(
                            fontFamily: gilory
                        )
                    ),
                  ),
                  const SizedBox(height: 30,),
                  // SizedBox(
                  //   width: double.infinity,
                  //   height: 50,
                  //   child: ElevatedButton(
                  //     onPressed: () {},
                  //     child: const Text('Login'),
                  //     style: ElevatedButton.styleFrom(
                  //         onPrimary: Colors.black87,
                  //         primary: const Color(0xff00e2e3),
                  //         shape: const RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.all(Radius.circular(10)),
                  //         )
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Create Account'),
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.black87,
                          primary: Colors.white70,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  const Text('Already have an account ? Sign In'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _navigateToLoginScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  const LoginPage()));
  }

}