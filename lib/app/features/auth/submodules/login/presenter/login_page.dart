import 'package:flutter/material.dart';
import 'package:login_page_floripa/core/shared/theme/app_theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            top: size.height * 0.76,
            left: 20,
            child: Image.asset(
              'lib/assets/bg-blur-1.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: size.height * 0.08,
            bottom: size.height * 0.6,
            child: Image.asset(
              'lib/assets/bg-blur-3.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: size.height * 0.002,
            right: size.width * 0.016,
            child: Image.asset(
              'lib/assets/bg-blur-2.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.04),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: size.width * 0.4,
                        height: size.height * 0.2,
                        child: Image.asset('lib/assets/logo-icon.png'),
                      ),
                    ),
                    const Text(
                      'Bem-vindo',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'ao FlutterFloripa!',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.014,
                    ),
                    Text(
                      'A comunidade oficial Flutter em',
                      style: TextStyle(
                        fontFamily: 'PTSans',
                        fontSize: 20,
                        color: Colors.grey[700],
                      ),
                    ),
                    Text(
                      'Florianópolis-SC',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'PTSans',
                        fontWeight: FontWeight.w300,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                filled: true,
                                fillColor: Colors.grey[150],
                                hintText: 'E-mail',
                                prefixIcon: const Icon(
                                  Icons.email_outlined,
                                  size: 24,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(22),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.visibility_off_outlined,
                                  size: 24,
                                ),
                                enabledBorder: InputBorder.none,
                                filled: true,
                                fillColor: Colors.grey[150],
                                hintText: 'Senha',
                                prefixIcon: const Icon(
                                  Icons.lock_outlined,
                                  size: 24,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 70, bottom: 30),
                              child: SizedBox(
                                height: 60,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  // ignore: sort_child_properties_last
                                  child: const Text(
                                    'ENTRAR',
                                    style: TextStyle(
                                      fontFamily: 'PTSans',
                                      fontSize: 22,
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        side: const BorderSide(color: Colors.transparent),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: GestureDetector(
                                child: const Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Esqueceu sua senha? ',
                                        style: TextStyle(
                                          fontFamily: 'PTSans',
                                          fontSize: 15,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Recupere aqui ',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: 'PTSans',
                                          color: ThemeColors.secondcolor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
