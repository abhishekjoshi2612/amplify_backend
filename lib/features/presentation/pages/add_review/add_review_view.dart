import 'package:amplified_todo/base/styles.dart';
import 'package:amplified_todo/features/presentation/pages/add_product_media.dart';
import 'package:amplified_todo/features/presentation/pages/add_review/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddReviewPage extends StatefulWidget {
  final String shopId;
  const AddReviewPage({
    Key? key,
    required this.shopId,
  }) : super(key: key);

  @override
  State<AddReviewPage> createState() => _AddReviewPageState();
}

class _AddReviewPageState extends State<AddReviewPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetX<AddReviewController>(
        init: AddReviewController(shopId: widget.shopId),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: const Text("Review"),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            "Please write Overall level of satisfaction with your shipping / Delivery Service",
                            textAlign: TextAlign.left,
                            style: resetTextStyle,
                          ),
                          const Divider(color: Colors.transparent),
                          Row(
                            children: List.generate(
                              5,
                              (int index) {
                                return GestureDetector(
                                  onTap: () {
                                    controller.setRating(index + 1);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0,
                                    ),
                                    child: Image.asset(
                                      controller.rating.value > index
                                          ? 'assets/star_complete.png'
                                          : 'assets/star_uncomplete.png',
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 40),
                          const Text(
                            "Write your Review",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: TextFormField(
                              maxLines: null,
                              minLines: 15,
                              onSaved: (e) {
                                controller.addReview(comment: e!);
                              },
                              validator: (e) {
                                if (e == null || e.isEmpty) {
                                  return 'Please enter review';
                                }
                                return null;
                              },
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              enabled: !controller.isLoading.value,
                              decoration: InputDecoration(
                                hintText:
                                    "Write here,your valuable Comments make our team.",
                                hintStyle: const TextStyle(
                                  color: Color.fromARGB(255, 117, 117, 117),
                                  fontWeight: FontWeight.bold,
                                ),
                                hintMaxLines: 20,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Divider(color: Colors.transparent),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FormSubmitButton(
                    isLoading: controller.isLoading.value,
                    title: "Save review",
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                      }
                    },
                  ),
                ),
                const Divider(color: Colors.transparent),
              ],
            ),
          );
        });
  }
}
