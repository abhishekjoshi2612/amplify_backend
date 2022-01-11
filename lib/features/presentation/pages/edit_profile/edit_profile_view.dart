import 'dart:io';

import 'package:amplified_todo/features/presentation/pages/edit_profile/controller.dart';
import 'package:amplified_todo/features/presentation/pages/home_page.dart';
import 'package:amplified_todo/features/presentation/widgets/custom_text_form_field.dart';
import 'package:amplified_todo/features/presentation/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<EditProfileController>(
        init: EditProfileController(),
        builder: (controller) {
          return Form(
            key: controller.formKey,
            child: Scaffold(
              backgroundColor: Colors.black,
              appBar: AppBar(
                backgroundColor: Colors.black,
                title: const Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                actions: [
                  GestureDetector(
                    onTap: () {
                      if (controller.formKey.currentState?.validate() ??
                          false) {
                        controller.formKey.currentState?.save();
                        controller.updateUser(controller.user.value!);
                      }
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              body: controller.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: controller.imageFile.value != null
                                ? ClipOval(
                                    child: SizedBox(
                                      child: Image.file(
                                        controller.imageFile.value!,
                                      ),
                                      height: 100,
                                      width: 100,
                                    ),
                                  )
                                : Container(
                                    child:
                                        controller.user.value?.profilePicUrl ==
                                                null
                                            ? Image.asset(
                                                "assets/pro2.png",
                                                alignment: Alignment.center,
                                                fit: BoxFit.fill,
                                              )
                                            : AmplifyImageWidget(
                                                mediaKey: controller
                                                    .user.value!.profilePicUrl!,
                                              ),
                                    height: 100,
                                    width: 100,
                                    margin: const EdgeInsets.all(10.0),
                                    decoration: const BoxDecoration(
                                      color: Colors.orange,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              final ImagePicker _picker = ImagePicker();
                              // Pick an image
                              final XFile? image = await _picker.pickImage(
                                  source: ImageSource.gallery);
                              if (image != null) {
                                controller.setProfileImg(File(image.path));
                              }
                            },
                            child: Container(
                              color: Colors.transparent,
                              child: const Text(
                                "Change Profile Photo",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              children: [
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Change Name",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                const Divider(color: Colors.transparent),
                                CustomTextFormField(
                                  initialValue:
                                      controller.user.value?.firstName ?? "",
                                  formLabel: "First Name",
                                  onSaved: (e) {
                                    controller.setUser(
                                      controller.user.value!
                                          .copyWith(firstName: e),
                                    );
                                  },
                                ),
                                const Divider(
                                  color: Colors.transparent,
                                  height: 10,
                                ),
                                CustomTextFormField(
                                  initialValue:
                                      controller.user.value?.lastName ?? "",
                                  formLabel: "Last Name",
                                  onSaved: (e) {
                                    controller.setUser(
                                      controller.user.value!
                                          .copyWith(lastName: e),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 50),
                          const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Change Email",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                  ),
                                ),
                              )),
                          const ChangeEmailWidget(),
                          CommonTextField(hintText: "********"),
                        ],
                      ),
                    ),
            ),
          );
        });
  }
}
