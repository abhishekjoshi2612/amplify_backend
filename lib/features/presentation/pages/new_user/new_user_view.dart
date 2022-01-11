import 'package:amplified_todo/features/presentation/pages/new_user/controller.dart';
import 'package:amplified_todo/features/presentation/widgets/button.dart';
import 'package:amplified_todo/features/presentation/widgets/custom_text_form_field.dart';
import 'package:amplified_todo/models/UserMaster.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class NewUserPage extends StatefulWidget {
  final UserCredential? userCredential;
  const NewUserPage({
    Key? key,
    this.userCredential,
  }) : super(key: key);

  @override
  State<NewUserPage> createState() => _NewUserPageState();
}

class _NewUserPageState extends State<NewUserPage> {
  final _formKey = GlobalKey<FormState>();
  UserMaster _userMaster = UserMaster();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: GetX<EditUserController>(
            init: EditUserController(widget.userCredential),
            builder: (controller) {
              return Stack(
                children: [
                  Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 150,
                            child: Image.asset(
                              "assets/logo.png",
                            ),
                          ),
                          // const HeadTextWidget2(title: "New User"),
                          const Text(
                            "Enter the Details",
                            style: TextStyle(
                                color: Color.fromRGBO(160, 160, 160, 1),
                                fontFamily: 'Inter',
                                fontSize: 14,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.4),
                          ),
                          const Divider(color: Colors.transparent),
                          CustomTextFormField(
                            formLabel: "First Name",
                            onSaved: (e) {
                              _userMaster = _userMaster.copyWith(firstName: e);
                            },
                          ),
                          const Divider(color: Colors.transparent),
                          CustomTextFormField(
                            formLabel: "Last Name",
                            onSaved: (e) {
                              _userMaster = _userMaster.copyWith(lastName: e);
                            },
                          ),
                          const Divider(color: Colors.transparent),
                          CustomTextFormField(
                            prefix: CountryCodePicker(
                              onInit: (CountryCode? e) {
                                if (e != null) {
                                  _userMaster = _userMaster.copyWith(
                                    PinCode: e.code,
                                  );
                                }
                              },
                              textStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              dialogBackgroundColor: Colors.black,
                              showDropDownButton: true,
                              dialogTextStyle:
                                  const TextStyle(color: Colors.white),
                              closeIcon: const Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                              onChanged: (CountryCode e) {
                                _userMaster = _userMaster.copyWith(
                                  PinCode: e.code,
                                );
                              },
                              // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                              initialSelection: 'IN',
                              favorite: const ['+91', 'IN'],
                              // optional. Shows only country name and flag
                              showCountryOnly: false,
                              // optional. Shows only country name and flag when popup is closed.
                              showOnlyCountryWhenClosed: false,
                              // optional. aligns the flag and the Text left
                              alignLeft: false,
                            ),
                            formLabel: "Mobile Number",
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(10),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            onSaved: (e) {
                              _userMaster =
                                  _userMaster.copyWith(mobileNumber: e);
                            },
                          ),
                          const Divider(color: Colors.transparent),
                          CustomTextFormField(
                            formLabel: "City",
                            onSaved: (e) {
                              _userMaster = _userMaster.copyWith(City: e);
                            },
                          ),
                          const Divider(color: Colors.transparent),
                          CustomTextFormField(
                            formLabel: "State",
                            onSaved: (e) {
                              _userMaster = _userMaster.copyWith(State: e);
                            },
                          ),
                          const Divider(color: Colors.transparent),
                          CustomTextFormField(
                            formLabel: "Street Address",
                            onSaved: (e) {
                              _userMaster =
                                  _userMaster.copyWith(StreetAddress: e);
                            },
                          ),
                          const Divider(color: Colors.transparent),
                          CustomTextFormField(
                            enabled: false,
                            controller: TextEditingController(
                              text: controller.location.value,
                            ),
                            formLabel: "Current Location",
                            onSaved: (e) {
                              // _userMaster.copyWith(loca: e);
                            },
                          ),
                          const Divider(color: Colors.transparent),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff565656),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: DropdownButton<String>(
                              underline: const SizedBox.shrink(),
                              isExpanded: true,
                              value: _userMaster.Gender,
                              hint: const Text('Select gender'),
                              items: <String>['Male', 'Female', 'Other'].map(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                },
                              ).toList(),
                              onChanged: (e) {
                                setState(() {
                                  _userMaster = _userMaster.copyWith(Gender: e);
                                });
                              },
                            ),
                          ),
                          const Divider(color: Colors.transparent),
                          CustomTextFormField(
                            keyboardType: TextInputType.number,
                            formLabel: "Pin Code",
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(6),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            onSaved: (e) {
                              _userMaster = _userMaster.copyWith(PinCode: e);
                            },
                          ),
                          const Divider(color: Colors.transparent),
                          ButtonWidget2(
                            text: "Continue",
                            onTap: () async {
                              if (_formKey.currentState?.validate() ?? false) {
                                _formKey.currentState?.save();
                                controller.onSubmit(_userMaster.copyWith());
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: !controller.isLoading.value
                        ? const SizedBox.shrink()
                        : Container(
                            color: Colors.black.withOpacity(0.5),
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
