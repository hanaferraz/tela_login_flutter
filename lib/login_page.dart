import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF539FCB),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.height,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 174,
                  height: 148,
                  child: Image.asset('assets/image/monitor.png'),
                ),
                SizedBox(
                  height: 26,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF40000000),
                          blurRadius: 2.0,
                          offset: Offset(0, 5),
                        ),
                        BoxShadow(
                          color: Color(0XFF40000000),
                          offset: Offset(5, 0),
                        ),
                      ]),
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 53,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF40000000),
                              blurRadius: 2.0,
                              offset: Offset(0, 5),
                            ),
                          ]),
                      height: 42,
                      width: 355,
                      margin: EdgeInsets.only(top: 33),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Entrar'),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF40000000),
                              blurRadius: 2.0,
                              offset: Offset(0, 5),
                            ),
                          ]),
                      height: 42,
                      width: 355,
                      margin: EdgeInsets.only(top: 33),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Cadastrar'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
