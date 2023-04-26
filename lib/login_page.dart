import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF539FCB),
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.13),
                    child: Container(
                      width: 174,
                      height: 148,
                      child: Image.asset('assets/image/monitor.png'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF40000000),
                            blurRadius: 4.0,
                            offset: Offset(4, 4),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 23),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              icon: ImageIcon(
                                AssetImage('assets/image/usuario.png'),
                              ),
                              labelText: 'E-mail',
                              labelStyle: GoogleFonts.ovo(
                                fontSize: 15,
                              ),
                              alignLabelWithHint: true,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 23),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              icon: ImageIcon(
                                AssetImage('assets/image/cadeado.png'),
                              ),
                              labelText: 'Senha',
                              labelStyle: GoogleFonts.ovo(
                                fontSize: 15,
                              ),
                              alignLabelWithHint: true,
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          alignment: Alignment(0.8, -0.2),
                          child: Text(
                            "Credenciais inválidas.",
                            style: GoogleFonts.ovo(
                              fontSize: 10,
                              textStyle: TextStyle(
                                color: Color(0xFFB30000),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 53,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Entrar',
                      style: GoogleFonts.neuton(fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Cadastrar',
                      style: GoogleFonts.neuton(fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/image/paisagem.png',
                      width: 380,
                      height: 383,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
