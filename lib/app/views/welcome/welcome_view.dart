import 'package:flutter/material.dart';
import 'package:liax/app/routes/routes_constants.dart';
import 'package:liax/app/shared_preferences/app_preferences.dart';
import 'package:liax/app/styles/gradients.dart';
import 'package:lottie/lottie.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  bool _checkBoxChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: Gradients.bkBlue,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 35,
            ),
            const Text(
              'Proteja-se',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontFamily: 'Baloo-Bold',
              ),
            ),
            const Text(
              'Utilize sua mascara, não se esqueça de cobrir o nariz e a boca.',
              style: TextStyle(
                height: 1.0,
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'Baloo-Medium',
              ),
            ),
            const Spacer(),
            Lottie.asset(
              'assets/lotties/vacina.json',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Não mostrar novamente',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Baloo-Medium'),
                ),
                Checkbox(
                  value: _checkBoxChecked,
                  onChanged: (value) {
                    setState(() {
                      _checkBoxChecked = value!;
                    });
                  },
                )
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                primary: Colors.white,
                minimumSize: const Size(
                  double.infinity,
                  50,
                ),
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RoutesConstants.kHomeView,
                  (route) => false,
                );
                AppPreferences.setWelcomeRead(
                  _checkBoxChecked,
                );
              },
              child: const Text(
                'Vamos lá!',
                style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Baloo-Medium',
                    fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}
