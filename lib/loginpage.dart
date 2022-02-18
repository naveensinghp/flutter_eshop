import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 90,left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Eshop!',
              style: TextStyle(
                  fontFamily: 'gilroy',
                  fontSize: 25
              ),
            ),
            const Text(
              'Login to Continue',
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'gilroy',
                  fontSize: 26
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                  width: 400,
                  height: 300,
                  decoration:  const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image/logins.png'),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      )
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email'
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password'
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
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
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
                      child: Text('Create Account'),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
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