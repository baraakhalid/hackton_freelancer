import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackton_freelancer/helpers/app_colors.dart';
import 'package:hackton_freelancer/widgets/app_text_button.dart';
import 'package:hackton_freelancer/widgets/app_text_field.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  bool _obscure = true;
  late String _language;

  @override
  void initState() {
    super.initState();
    // _language =
    //     SharedPrefController().getValueFor(PrefKeys.language.name) ?? 'en';
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('تسجيل دخول',
            style: GoogleFonts.cairo(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Center(
              child: InkWell(
                onTap: (){Navigator.pushNamed(context, '/login_admin_screen');},
                child: Image(
                  image: AssetImage('images/logo2.jpeg',),
                  height: 130,
                  width: 150,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 9),
              child: Text('البريد الالكتروني',
                  style: GoogleFonts.cairo(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
            ),
            AppTextField(
              hint: 'البريد',
              keyboardType: TextInputType.emailAddress,
              controller: _emailTextController,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(bottom: 9),
              child: Text('كلمة المرور',
                  style: GoogleFonts.cairo(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
            ),
            AppTextField(
              hint: 'كلمة المرور',
              obscureText: _obscure,
              keyboardType: TextInputType.text,
              controller: _passwordTextController,
              suffix: IconButton(
                onPressed: () {
                  setState(() => _obscure = !_obscure);
                },
                icon: const Icon(Icons.visibility),
              ),
            ),
            const SizedBox(height: 20),
            AppTextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home_screen_user');
                }, text: 'تسجيل الدخول', backgroundColor: primary),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ليس لديك حساب ؟',
                    style: GoogleFonts.cairo(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/register_screen'),
                  child: Text('أنشئ حساب',
                      style: GoogleFonts.cairo(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: primary)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}