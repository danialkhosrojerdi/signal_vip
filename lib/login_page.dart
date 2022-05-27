import 'package:flutter/material.dart';
import 'package:signal_vip/blog_page.dart';
import 'package:signal_vip/password_recovery_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'ورود به حساب سیگنال پلاس',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                const Image(
                  image: AssetImage('images/welcome.png'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(200.0, 40.0),
                    side: const BorderSide(color: Colors.white, width: 2.0),
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    navigateToOtherPage(context, BlogPage());
                  },
                  child: const Text(
                    'ورود به حساب کاربری',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue[800],
                    minimumSize: const Size(200.0, 40.0),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'ثبت نام',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    navigateToOtherPage(context, const PasswordRecoveryPage());
                  },
                  child: const Text('فراموشی رمز عبور'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navigateToOtherPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }
}
