import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:so_qr_menu/controller/get_category_controller/review_controller.dart';
import 'package:so_qr_menu/models/add_reviews_model.dart';

class ReviesPage extends StatefulWidget {
  const ReviesPage({super.key});

  @override
  State<ReviesPage> createState() => _ReviesPageState();
}

class _ReviesPageState extends State<ReviesPage> {
  TextEditingController fullnameController = TextEditingController();
  TextEditingController contactnumController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController howyoufindController = TextEditingController();
  TextEditingController improveController = TextEditingController();
  String initialCountry = 'AE';
  PhoneNumber number = PhoneNumber(isoCode: 'AE');
  String fullNumber = "xxxxxxxx";
  bool isCheckedyes = false;
  bool isCheckedno = false;
  bool isFirst = false;
  double? staffServicerating;
  double? foodServiceRating;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GetBuilder<ReviewController>(initState: (state) {
        Get.put(ReviewController());
      }, builder: (obj) {
        return Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            // color: Color(0xff9BAD87),
            color: Color(0xffE64692),
            // image: DecorationImage(
            //   fit: BoxFit.cover,
            //   image: AssetImage(
            //     'images/homebg1.jpg',
            //   ),
            // ),
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Card(
                    // color: const Color(0xff9BAD87),
                    color: const Color(0xffE64692),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      height: height * 0.06,
                      width: width * 0.08,
                      decoration: BoxDecoration(
                        // color: const Color(0xff9BAD87),
                        color: const Color(0xffE64692),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: width * 0.05,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                height: height * 0.07,
                width: width * 0.6,
                child: Center(
                  child: Text(
                    'Feedback Form',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.04,
                    ),
                  ),
                ),
              ),
              Container(
                height: height * 0.06,
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xff9BAD87),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  controller: fullnameController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Name",
                    prefixIcon: Icon(
                      Icons.person,
                      // color: Color(0xff9BAD87),
                      color: Color(0xffE64692),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                height: height * 0.06,
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xff9BAD87),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                    prefixIcon: Icon(
                      Icons.email,
                      // color: Color(0xff9BAD87),
                      color: Color(0xffE64692),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                height: height * 0.06,
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    // color: const Color(0xff9BAD87),
                    color: const Color(0xffE64692),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  controller: contactnumController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Contact Number ",
                    prefixIcon: Icon(
                      Icons.contact_phone,
                      // color: Color(0xff9BAD87),
                      color: Color(0xffE64692),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                height: height * 0.06,
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    // color: const Color(0xff9BAD87),
                    color: const Color(0xffE64692),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  controller: cityController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Where are you from, City?",
                    prefixIcon: Icon(
                      Icons.location_on,
                      // color: Color(0xff9BAD87),
                      color: Color(0xffE64692),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                height: height * 0.03,
                width: width * 0.8,
                // color: Colors.amber,
                child: const Text(
                  'Is it your first time visiting us?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
                width: width * 0.8,
                // color: Colors.amber,
                child: Row(children: [
                  Text(
                    'Yes',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.035,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Checkbox(
                    value: isCheckedyes,
                    onChanged: (value) {
                      if (value == true) {
                        isFirst = true;
                      }
                      setState(() {
                        isCheckedno = false;
                        isCheckedyes = !isCheckedyes;
                        print(value);
                      });
                    },
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Text(
                    'No',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.035,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Checkbox(
                    value: isCheckedno,
                    onChanged: (value) {
                      if (value == true) {
                        isFirst = false;
                      }
                      setState(() {
                        isCheckedyes = false;
                        isCheckedno = !isCheckedno;
                        print(value);
                      });
                    },
                  )
                ]),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                height: height * 0.06,
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    // color: const Color(0xff9BAD87),
                    color: const Color(0xffE64692),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  controller: howyoufindController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "How did you find out about us?",
                    prefixIcon: Icon(
                      Icons.info,
                      // color: Color(0xff9BAD87),
                      color: Color(0xffE64692),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                height: height * 0.06,
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    // color: const Color(0xff9BAD87),
                    color: const Color(0xffE64692),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  controller: improveController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "what would you like us to improve upon?",
                    prefixIcon: Icon(
                      Icons.info,
                      // color: Color(0xff9BAD87),
                      color: Color(0xffE64692),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                height: height * 0.03,
                width: width * 0.8,
                // color: Colors.amber,
                child: const Text(
                  'Staff Service',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
                width: width * 0.8,
                child: RatingBar.builder(
                  itemSize: width * 0.055,
                  initialRating: 0.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    size: width * 0.05,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    staffServicerating = rating;
                    print(rating);
                  },
                ),
              ),
              SizedBox(
                height: height * 0.03,
                width: width * 0.8,
                // color: Colors.amber,
                child: const Text(
                  'Food  ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
                width: width * 0.8,
                child: RatingBar.builder(
                  updateOnDrag: true,
                  itemSize: width * 0.055,
                  initialRating: 0.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    size: width * 0.05,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    foodServiceRating = rating;
                    print(rating);
                  },
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              InkWell(
                onTap: () {
                  print(isFirst);
                  AddReviewModel model = AddReviewModel(
                      name: fullnameController.text,
                      email: emailController.text,
                      phoneNumber: contactnumController.text,
                      city: cityController.text,
                      aboutus: howyoufindController.text,
                      improve: improveController.text,
                      branchId: "4",
                      firstTime: isFirst,
                      serviceRating: foodServiceRating,
                      staffRating: staffServicerating);
                  obj.addReviewMethiod(model);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: height * 0.06,
                  width: width * 0.5,
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: width * 0.045,
                        fontWeight: FontWeight.bold,
                        // color: const Color(0xff9BAD87),
                        color: const Color(0xffE64692),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
