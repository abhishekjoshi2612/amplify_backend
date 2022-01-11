import 'package:amplified_todo/base/constants.dart';
import 'package:amplified_todo/base/styles.dart';
import 'package:amplified_todo/features/presentation/pages/add_product_media.dart';
import 'package:amplified_todo/features/presentation/pages/mobile_login/controller.dart';
import 'package:amplified_todo/features/presentation/pages/verify_otp/verify_otp.dart';
import 'package:amplified_todo/features/presentation/widgets/custom_text_form_field.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:amplified_todo/features/presentation/widgets/headtext.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class MobileSignIn extends StatefulWidget {
  const MobileSignIn({Key? key}) : super(key: key);

  @override
  State<MobileSignIn> createState() => _MobileSignInState();
}

class _MobileSignInState extends State<MobileSignIn> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MobileLoginController>(
        init: MobileLoginController(),
        key: _formKey,
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.black,
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Spacer(flex: 1),
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset("assets/logo.png"),
                      ),
                      const HeadTextWidget(title: kLoginVipani),
                      const Divider(color: Colors.transparent),
                      const Text(
                        kEnterMobile,
                        style: normalTextStyle,
                      ),
                      const Divider(color: Colors.transparent),
                      CustomTextFormField(
                        prefix: CountryCodePicker(
                          onInit: (CountryCode? e) {
                            if (e != null) {
                              // controller.setCountryCode(e);
                            }
                          },
                          textStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          dialogBackgroundColor: Colors.black,
                          showDropDownButton: true,
                          dialogTextStyle: const TextStyle(color: Colors.white),
                          closeIcon: const Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                          onChanged: (CountryCode e) {
                            controller.setCountryCode(e);
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
                          controller.setMobileNumber(e);
                        },
                      ),
                      // CommonTextField(hintText: "Mobile Number"),

                      const Divider(color: Colors.transparent, height: 30),
                      FormSubmitButton(
                        onTap: () async {
                          if (controller.countryCode == null) {
                            return;
                          }
                          if (_formKey.currentState?.validate() ?? false) {
                            _formKey.currentState?.save();
                            Get.toNamed(
                              RouteConst.verifyOtp,
                              arguments: VerifyOtpArgs(
                                countryCode: controller.countryCode!,
                                mobileNumber: controller.mobileNumber,
                              ),
                            );
                            await controller.submitMobileNumber(
                              controller.mobileNumber,
                              controller.countryCode!,
                            );
                          }
                        },
                        title: "Continue",
                      ),
                      const Spacer(flex: 3),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
