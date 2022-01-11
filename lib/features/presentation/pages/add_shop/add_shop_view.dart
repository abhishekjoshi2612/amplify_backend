import 'dart:io';
import 'package:amplified_todo/features/data/controllers/shop.dart';
import 'package:amplified_todo/features/data/services/geolocator.dart';
import 'package:amplified_todo/features/presentation/pages/add_shop/controller.dart';
import 'package:amplified_todo/features/presentation/widgets/button.dart';
import 'package:amplified_todo/features/presentation/widgets/custom_text_form_field.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class AddShop extends StatefulWidget {
  const AddShop({Key? key}) : super(key: key);

  @override
  State<AddShop> createState() => _AddShopState();
}

class _AddShopState extends State<AddShop> {
  final _formKey = GlobalKey<FormState>();
  String countryPin = '';
  ShopMaster shopMaster = ShopMaster();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<AddShopController>(
        init: AddShopController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(height: 25),
                        const Text(
                          'Add Shop',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Divider(color: Colors.transparent),
                        const Text(
                          "Enter the Details",
                          style: TextStyle(
                            color: Color.fromRGBO(160, 160, 160, 1),
                            fontFamily: 'Inter',
                            fontSize: 14,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.4,
                          ),
                        ),
                        const Divider(color: Colors.transparent),
                        CustomTextFormField(
                          formLabel: "Email",
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (e) {
                            shopMaster = shopMaster.copyWith(email: e);
                          },
                        ),
                        const Divider(color: Colors.transparent),
                        CustomTextFormField(
                          formLabel: "Shop Name",
                          onSaved: (e) {
                            shopMaster = shopMaster.copyWith(shopName: e);
                          },
                        ),
                        const Divider(color: Colors.transparent),
                        CustomTextFormField(
                          prefix: CountryCodePicker(
                            onInit: (CountryCode? e) {
                              if (e != null) {
                                countryPin = e.code!;
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
                              setState(() {
                                countryPin = e.code!;
                              });
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
                            shopMaster = shopMaster.copyWith(mobileNumber: e);
                          },
                        ),
                        const Divider(color: Colors.transparent),
                        CustomTextFormField(
                          formLabel: "State",
                          onSaved: (e) {
                            shopMaster = shopMaster.copyWith(State: e);
                          },
                        ),
                        const Divider(color: Colors.transparent),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Shop Opening time',
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const Divider(color: Colors.transparent),
                        GestureDetector(
                          onTap: () async {
                            final TimeOfDay? time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(DateTime.now()),
                            );
                            if (time == null) {
                              return;
                            }
                            setState(() {
                              shopMaster = shopMaster.copyWith(
                                shopOpening: _fromTimeofDay(time),
                              );
                            });
                          },
                          child: CustomTextFormField(
                            enabled: false,
                            onSaved: (e) {},
                            textAlign: TextAlign.center,
                            onTap: () {},
                            controller: TextEditingController(
                              text: _fromTemporalTime(shopMaster.shopOpening),
                            ),
                            suffixIcon: const Icon(Icons.edit_outlined),
                            formLabel: "Shop Opening",
                          ),
                        ),
                        const Divider(color: Colors.transparent),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Shop Closing time',
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const Divider(color: Colors.transparent),
                        GestureDetector(
                          onTap: () async {
                            final TimeOfDay? time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(DateTime.now()),
                            );
                            if (time == null) {
                              return;
                            }
                            setState(() {
                              shopMaster = shopMaster.copyWith(
                                shopClosing: _fromTimeofDay(time),
                              );
                            });
                          },
                          child: CustomTextFormField(
                            textAlign: TextAlign.center,
                            onSaved: (e) {},
                            enabled: false,
                            controller: TextEditingController(
                              text: _fromTemporalTime(shopMaster.shopClosing),
                            ),
                            suffixIcon: const Icon(Icons.edit_outlined),
                            formLabel: "Shop Opening",
                          ),
                        ),
                        const Divider(color: Colors.transparent),
                        ListTile(
                          onTap: () async {
                            await _getLocation();
                          },
                          title: const Text(
                            "Use Current Location",
                            style: TextStyle(
                                color: Color.fromARGB(255, 117, 117, 117),
                                fontWeight: FontWeight.bold),
                          ),
                          leading: Radio(
                            value: 1,
                            groupValue: shopMaster.PinCode != null ? 1 : 0,
                            onChanged: (value) async {},
                          ),
                        ),
                        const Divider(color: Colors.transparent),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Upload shop picture',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            final XFile? image = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            if (image == null) {
                              return;
                            }
                            setState(() {
                              shopMaster =
                                  shopMaster.copyWith(shopImgUrl: image.path);
                            });
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                                vertical: 10,
                              ),
                              child: shopMaster.shopImgUrl != null
                                  ? SizedBox(
                                      width: 70,
                                      child: Image.file(
                                        File(shopMaster.shopImgUrl!),
                                      ),
                                    )
                                  : const Icon(
                                      Icons.add_photo_alternate_outlined,
                                      color: Colors.white,
                                      size: 70,
                                    ),
                            ),
                          ),
                        ),
                        const Divider(color: Colors.transparent),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Upload shop cover image',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            final XFile? image = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            if (image == null) {
                              return;
                            }
                            setState(() {
                              shopMaster =
                                  shopMaster.copyWith(shopCoverImg: image.path);
                            });
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                                vertical: 10,
                              ),
                              child: shopMaster.shopCoverImg != null
                                  ? SizedBox(
                                      width: 70,
                                      child: Image.file(
                                        File(shopMaster.shopCoverImg!),
                                      ),
                                    )
                                  : const Icon(
                                      Icons.add_photo_alternate_outlined,
                                      color: Colors.white,
                                      size: 70,
                                    ),
                            ),
                          ),
                        ),
                        const Divider(color: Colors.transparent),
                        ButtonWidget2(
                          text: "Continue",
                          isLoading: controller.isLoading.value,
                          onTap: () async {
                            if (_formKey.currentState?.validate() ?? false) {
                              _formKey.currentState?.save();
                              if (shopMaster.shopCoverImg == null ||
                                  shopMaster.shopImgUrl == null) {
                                return;
                              }
                              shopMaster = shopMaster.copyWith(
                                mobileNumber:
                                    countryPin + shopMaster.mobileNumber!,
                              );

                              Get.dialog(
                                const Center(
                                  child: CircularProgressIndicator(),
                                ),
                                barrierDismissible: false,
                              );
                              await controller.onAddShop(shopMaster);
                              Navigator.pop(context);
                              Navigator.pop(context, true);
                            }
                          },
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: controller.isLoading.value
                        ? Container(
                            color: Colors.black.withOpacity(0.8),
                            child: const Center(
                              child: CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation(Colors.white),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _getLocation() async {
    final Placemark? placemark = await GeoLocatorService().currentPlacemark();
    if (placemark == null) {
      Get.snackbar("Please enable location permission", "");
      return;
    }

    setState(() {
      shopMaster = shopMaster.copyWith(
        PinCode: placemark.postalCode,
        buildingNumber: placemark.street,
      );
    });
  }

  String _fromTemporalTime(TemporalTime? time) {
    return DateFormat('jm').format(
      time?.getDateTime().toLocal() ?? DateTime.now().toLocal(),
    );
  }

  TemporalTime _fromTimeofDay(TimeOfDay time) {
    final now = DateTime.now();
    final dateTime = DateTime(
      now.year,
      now.month,
      now.day,
      time.hour,
      time.minute,
    ).toLocal();
    return TemporalTime(dateTime);
  }
}
