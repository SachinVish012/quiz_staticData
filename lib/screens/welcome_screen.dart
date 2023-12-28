import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:question/screens/quiz_screen/quiz_screen.dart';
import '../widgets/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const routeName = '/welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _nameController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey();



  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
       extendBody: true,
        body: Container(
          constraints: BoxConstraints.expand(),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text(
                        'About Loan',
                        style: TextStyle(color: Colors.black,fontSize: 18),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CustomButton(
                          width: double.infinity,
                          onPressed: (){
                            Get.offAndToNamed(QuizScreen.routeName);
                          },
                          text: 'Lets Start Quiz'),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
