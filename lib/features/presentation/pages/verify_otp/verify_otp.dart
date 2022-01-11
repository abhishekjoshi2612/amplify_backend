import 'package:amplified_todo/base/constants.dart';
import 'package:amplified_todo/base/styles.dart';
import 'package:amplified_todo/features/presentation/pages/add_product_media.dart';
import 'package:amplified_todo/features/presentation/pages/mobile_login/controller.dart';
import 'package:country_code_picker/country_code.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:amplified_todo/features/presentation/widgets/headtext.dart';

class VerifyOtpArgs {
  final String mobileNumber;
  final CountryCode countryCode;
  const VerifyOtpArgs({
    required this.countryCode,
    required this.mobileNumber,
  });
}

class VerifyOtpPage extends StatefulWidget {
  final VerifyOtpArgs args;
  const VerifyOtpPage({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  State<VerifyOtpPage> createState() => _VerifyOtpPageState();
}

class _VerifyOtpPageState extends State<VerifyOtpPage> {
  late final TextEditingController _pinCodeController;

  ///
  @override
  void initState() {
    super.initState();
    _pinCodeController = TextEditingController();
  }

  ///
  @override
  void dispose() {
    _pinCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MobileLoginController>(
        init: MobileLoginController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.black,
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 25),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        "assets/logo.png",
                        scale: 1.5,
                      ),
                    ),
                    const Spacer(flex: 1),
                    Column(
                      children: [
                        const HeadTextWidget(title: kVerifyN),
                        const Text(
                          kEnterOtp,
                          style: normalTextStyle,
                        ),
                        const Divider(color: Colors.transparent),
                        PinCodeTextField(
                          controller: _pinCodeController,
                          maxLength: 6,
                          pinBoxHeight: 60,
                          pinBoxWidth: 40,
                          pinBoxRadius: 10,
                          pinTextStyle: pinTextStyle,
                          // pinBoxColor: Colors.white,
                        ),
                        const Divider(color: Colors.transparent),
                        InkWell(
                          onTap: () async {
                            await controller.submitMobileNumber(
                              widget.args.mobileNumber,
                              widget.args.countryCode,
                            );
                          },
                          child: const Text(kResendOtp),
                        ),
                      ],
                    ),
                    const Divider(color: Colors.transparent, height: 20),
                    FormSubmitButton(
                      title: "Verify",
                      onTap: () async {
                        await controller.verifyOtpAndSignIn(
                          "${widget.args.countryCode}${widget.args.mobileNumber}",
                          otp: _pinCodeController.text,
                        );
                      },
                    ),
                    const Spacer(flex: 3),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
