// ignore_for_file: prefer_const_constructors, avoid_print, unnecessary_new, unnecessary_this
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:trans_app/screens/drawer.dart';
//import 'package:trans_app/screens/register.dart';
//import 'package:path/path.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:flutter/services.dart';

class StepperReg extends StatefulWidget {
  const StepperReg({Key? key}) : super(key: key);

  @override
  State<StepperReg> createState() => _StepperRegState();
}

class _StepperRegState extends State<StepperReg> {
  int currentStep = 0;
  bool isCompleted = false;
  File? imageCam;
  Future pickImageCam() async {
    try {
      final imageCam =
          await ImagePicker().pickImage(source: ImageSource.camera);
      if (imageCam == null) return;
      final imageTemp = File(imageCam.path);
      setState(() => this.imageCam = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  File? image1;
  Future pickImage1() async {
    try {
      final image1 = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image1 == null) return;
      final imageTemp = File(image1.path);
      setState(() => this.image1 = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  File? image2;
  Future pickImage2() async {
    try {
      final image2 = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image2 == null) return;
      final imageTemp = File(image2.path);
      setState(() => this.image2 = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  File? image3;
  Future pickImage3() async {
    try {
      final image3 = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image3 == null) return;
      final imageTemp = File(image3.path);
      setState(() => this.image3 = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  File? image4;
  Future pickImage4() async {
    try {
      final image4 = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image4 == null) return;
      final imageTemp = File(image4.path);
      setState(() => this.image4 = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  File? image5;
  Future pickImage5() async {
    try {
      final image5 = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image5 == null) return;
      final imageTemp = File(image5.path);
      setState(() => this.image5 = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  File? image6;
  Future pickImage6() async {
    try {
      final image6 = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image6 == null) return;
      final imageTemp = File(image6.path);
      setState(() => this.image6 = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.yellow[900],
    ));
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.yellow[900],
        title: Text(
          'المستندات الشخصية',
          style: TextStyle(
            fontFamily: 'Tajawal',
          ),
        ),
        centerTitle: true,
      ),
      body: isCompleted
          ? buildCompleted()
          : Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.light(primary:Color.fromRGBO(245, 127, 23, 1),),
              ),
              child: Stepper(
                type: StepperType.horizontal,
                steps: getSteps(),
                currentStep: currentStep,
                onStepContinue: () {
                  final isLastStep = currentStep == getSteps().length - 1;
                  if (isLastStep) {
                    setState(() {
                      isCompleted = true;
                    });
                    print('Completed');
                    //send data to server
                  } else {
                    setState(() => currentStep += 1);
                  }
                },
                //    onStepTapped: (step) => setState(() => currentStep = step),
                onStepCancel: currentStep == 0
                    ? null
                    : () => setState(() => currentStep -= 1),
                controlsBuilder: (BuildContext context, ControlsDetails details,
                    {onStepContinue, onStepCancel}) {
                  final isLastStep = currentStep == getSteps().length - 1;
                  return Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            child: Text(
                              isLastStep ? 'تأكيد' : 'التالي',
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                              ),
                            ),
                            onPressed: details.onStepContinue,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        if (currentStep != 0)
                          Expanded(
                            child: ElevatedButton(
                              child: Text(
                                'إلغاء',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                ),
                              ),
                              onPressed: details.onStepCancel,
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
    );
  }

  List<Step> getSteps() => [
        Step(
          state: currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 0,
          title: Text(' '),
          content: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.attach_file_outlined,
                    color: Colors.grey,
                  ),
                  Text(
                    'الصورة الشخصية',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal'),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              imageCam != null
                  ? Image.file(
                      imageCam!,
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/images/picture.png',
                      height: 200,
                      color: Colors.grey,
                    ),
              SizedBox(
                height: 50,
              ),
              choosePhotoCam(),
            ],
          ),
        ),
        Step(
          state: currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 1,
          title: Text(''),
          content: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.attach_file_outlined,
                    color: Colors.grey,
                  ),
                  Text(
                    'البطاقة الشخصية (امام)',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal'),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              image1 != null
                  ? Image.file(
                      image1!,
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/images/picture.png',
                      height: 200,
                      color: Colors.grey,
                    ),
              SizedBox(
                height: 50,
              ),
              choosePhoto1(),
            ],
          ),
        ),
        Step(
          state: currentStep > 2 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 2,
          title: Text(''),
          content: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.attach_file_outlined,
                    color: Colors.grey,
                  ),
                  Text(
                    'البطاقة الشخصية (خلف)',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal'),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              image2 != null
                  ? Image.file(
                      image2!,
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/images/picture.png',
                      height: 200,
                      color: Colors.grey,
                    ),
              SizedBox(
                height: 50,
              ),
              choosePhoto2(),
            ],
          ),
        ),
        Step(
          state: currentStep > 3 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 3,
          title: Text(''),
          content: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.attach_file_outlined,
                    color: Colors.grey,
                  ),
                  Text(
                    'رخصة القيادة (امام)',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal'),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              image3 != null
                  ? Image.file(
                      image3!,
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/images/picture.png',
                      height: 200,
                      color: Colors.grey,
                    ),
              SizedBox(
                height: 50,
              ),
              choosePhoto3(),
            ],
          ),
        ),
        Step(
          state: currentStep > 4 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 4,
          title: Text(''),
          content: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.attach_file_outlined,
                    color: Colors.grey,
                  ),
                  Text(
                    'رخصة القيادة (خلف)',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal'),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              image4 != null
                  ? Image.file(
                      image4!,
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/images/picture.png',
                      height: 200,
                      color: Colors.grey,
                    ),
              SizedBox(
                height: 50,
              ),
              choosePhoto4(),
            ],
          ),
        ),
        Step(
          state: currentStep > 5 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 5,
          title: Text(''),
          content: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.attach_file_outlined,
                    color: Colors.grey,
                  ),
                  Text(
                    'الفيش الجنائي',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal'),
                  ),
                  Text(
                    '\n (يمكن رفعه في وقت لاحق)',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.7)),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              image5 != null
                  ? Image.file(
                      image5!,
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/images/picture.png',
                      height: 200,
                      color: Colors.grey,
                    ),
              SizedBox(
                height: 50,
              ),
              choosePhoto5(),
            ],
          ),
        ),
      ];
  Widget choosePhotoCam() {
    return SizedBox(
        height: 60,
        width: 150,
        child: ElevatedButton.icon(
          icon: Icon(
            Icons.add_circle_outline,
            size: 24.0,
          ),
          label: Text(
            'إضافة صورة',
            style: TextStyle(
              fontSize: 17,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            pickImageCam();
          },
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5),
            ),
          ),
        ));
  }

  Widget choosePhoto1() {
    return SizedBox(
        height: 60,
        width: 150,
        child: ElevatedButton.icon(
          icon: Icon(
            Icons.add_circle_outline,
            size: 24.0,
          ),
          label: Text(
            'إضافة صورة',
            style: TextStyle(
              fontSize: 17,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            pickImage1();
          },
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5),
            ),
          ),
        ));
  }

  Widget choosePhoto2() {
    return SizedBox(
        height: 60,
        width: 150,
        child: ElevatedButton.icon(
          icon: Icon(
            Icons.add_circle_outline,
            size: 24.0,
          ),
          label: Text(
            'إضافة صورة',
            style: TextStyle(
              fontSize: 17,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            pickImage2();
          },
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5),
            ),
          ),
        ));
  }

  Widget choosePhoto3() {
    return SizedBox(
        height: 60,
        width: 150,
        child: ElevatedButton.icon(
          icon: Icon(
            Icons.add_circle_outline,
            size: 24.0,
          ),
          label: Text(
            'إضافة صورة',
            style: TextStyle(
              fontSize: 17,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            pickImage3();
          },
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5),
            ),
          ),
        ));
  }

  Widget choosePhoto4() {
    return SizedBox(
        height: 60,
        width: 150,
        child: ElevatedButton.icon(
          icon: Icon(
            Icons.add_circle_outline,
            size: 24.0,
          ),
          label: Text(
            'إضافة صورة',
            style: TextStyle(
              fontSize: 17,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            pickImage4();
          },
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5),
            ),
          ),
        ));
  }

  Widget choosePhoto5() {
    return SizedBox(
        height: 60,
        width: 150,
        child: ElevatedButton.icon(
          icon: Icon(
            Icons.add_circle_outline,
            size: 24.0,
          ),
          label: Text(
            'إضافة صورة',
            style: TextStyle(
              fontSize: 17,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            pickImage5();
          },
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5),
            ),
          ),
        ));
  }

  Widget choosePhoto6() {
    return SizedBox(
        height: 60,
        width: 150,
        child: ElevatedButton.icon(
          icon: Icon(
            Icons.add_circle_outline,
            size: 24.0,
          ),
          label: Text(
            'إضافة صورة',
            style: TextStyle(
              fontSize: 17,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            pickImage6();
          },
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5),
            ),
          ),
        ));
  }

  Widget buildCompleted() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Icon(
            Icons.cloud_done,
            color: Color.fromRGBO(245, 127, 23, 1),
            size: 150,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'تم رفع المتحوي',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 60,
          width: 200,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              primary: Colors.black,
              textStyle: TextStyle(fontSize: 24),
            ),
            child: Text(
              'إعادة تعيين',
              style: TextStyle(
                fontFamily: 'Tajawal',
              ),
            ),
            onPressed: () => setState(() {
              isCompleted = false;
              currentStep = 0;
            }),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 60,
          width: 200,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              primary: Colors.yellow[900],
              textStyle: TextStyle(fontSize: 24),
            ),
            child: Text(
              'إلي التطبيق ',
              style: TextStyle(
                fontFamily: 'Tajawal',
              ),
            ),
            onPressed: () {
              Navigator.push(
                this.context,
                MaterialPageRoute(builder: (context) => InterFaceDriver()),
              );
            },
          ),
        ),
      ],
    );
  }
}
