import 'package:flutter/material.dart';
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
            Container(
              child:  const Icon(
                Icons.arrow_back,
                color: Colors.black87,
                size: 30.0,
              ),
            ),
            const Text(
              'Welcome to Eshop!',
              style: TextStyle(
                  fontFamily: gilory,
                  fontSize: 25
              ),
            ),

            SizedBox(height: 60,),
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
                  SizedBox(height: 10,),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            fontFamily: gilory
                        )
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Text('Forgot Password ?'),
                  const SizedBox(height: 30,),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Login'),
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.black87,
                          primary: const Color(0xff00e2e3),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )
                      ),
                    ),
                  ),
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
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}