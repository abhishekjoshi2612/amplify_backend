import 'dart:io';
import 'dart:typed_data';
import 'package:amplified_todo/features/data/controllers/add_product.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:video_editor_sdk/video_editor_sdk.dart';

class AddProductMedia extends StatefulWidget {
  const AddProductMedia({
    Key? key,
  }) : super(key: key);

  @override
  State<AddProductMedia> createState() => _AddProductMediaState();
}

class _AddProductMediaState extends State<AddProductMedia> {
  final List<XFile> _photos = List.empty(growable: true);
  String? _videoFile;
  late final AddProductController _addProductController;
  @override
  void initState() {
    super.initState();
    _addProductController = Get.find<AddProductController>();

    // _productMaster = widget.product;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    alignment: Alignment.center, // use aligment
                    child: Image.asset(
                      'assets/AddVdo.png',
                      height: MediaQuery.of(context).size.height * .35,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .7,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.center, // use aligment
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(18, 18, 18, 1),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(height: 20),
                          const Text(
                            "Add one video. It must be a attractive,that youre products get reached",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.white54),
                          ),
                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: () async {
                              final path = await _pickVideo();
                              if (path.isEmpty) {
                                return;
                              }
                              setState(() {
                                _videoFile = path;
                              });
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: _videoFile != null
                                  ? VideoThumbnailWidget(
                                      onTap: () {
                                        setState(() {
                                          _videoFile = null;
                                        });
                                      },
                                      path: _videoFile!,
                                    )
                                  : DottedBorder(
                                      color: Colors
                                          .white54, // color of dotted/dash line
                                      strokeWidth: 3, // thickness of dash/dots
                                      dashPattern: const [10, 6],
                                      //dash patterns, 10 is dash width, 6 is space width
                                      child: SizedBox(
                                        //inner container
                                        height: 85, //height of inner container
                                        width: 105,
                                        child: Image.asset(
                                          'assets/Video 2.png',
                                          fit: BoxFit.scaleDown,
                                        ), //width to 100% match to parent container.
                                        //background color of inner container
                                      ),
                                    ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Add atleast 3 images.picture it must be a attractive,that youre products get reached",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.white54,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Wrap(
                            alignment: WrapAlignment.start,
                            children: [
                              ..._photos.map(
                                (e) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _photos.remove(e);
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Stack(
                                        children: [
                                          SizedBox(
                                            height: 80,
                                            width: 100,
                                            child: Image.file(
                                              File(e.path),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const Icon(Icons.close),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                              const VerticalDivider(),
                              GestureDetector(
                                onTap: () async {
                                  final XFile? photo = await ImagePicker()
                                      .pickImage(source: ImageSource.gallery);
                                  if (photo != null) {
                                    setState(() {
                                      _photos.add(photo);
                                    });
                                  }
                                },
                                child: DottedBorder(
                                  color: Colors
                                      .white54, //color of dotted/dash line
                                  strokeWidth: 3, //thickness of dash/dots
                                  dashPattern: const [10, 6],
                                  //dash patterns, 10 is dash width, 6 is space width
                                  child: const SizedBox(
                                    //inner container
                                    height: 80, //height of inner container
                                    width: 100,
                                    child: Icon(Icons
                                        .add), //width to 100% match to parent container.
                                    //background color of inner container
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FormBackButton(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              const SizedBox(width: 10),
                              FormSubmitButton(
                                title: "Next",
                                onTap: () {
                                  _onSubmit();
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .25,
                  left: 10,
                  child: const Text(
                    "Add Photos & Videos",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).padding.top + 10,
                  right: 10,
                  child: Container(
                    alignment: Alignment.center, // use aligment
                    child: Image.asset(
                      'assets/circle.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<String> _pickVideo() async {
    final XFile? file =
        await ImagePicker().pickVideo(source: ImageSource.gallery);
    VideoEditorResult? videoEditorResult =
        await VESDK.openEditor(Video(file!.path));
    if (videoEditorResult != null) {
      Directory directory = await getTemporaryDirectory();
      final String path =
          "${directory.path}/${videoEditorResult.video.split("/").last}";
      return path;
    }
    return '';
  }

  void _onSubmit() {
    if (_photos.isNotEmpty && _videoFile != null) {
      final product = _addProductController.productMaster.copyWith(
          productVideoUrl: _videoFile,
          productImgUrl: _photos.map((e) => e.path).toList());
      _addProductController.setProduct(product);
      Get.toNamed(RouteConst.contactInfo);
    }
  }
}

class FormSubmitButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final bool isLoading;
  const FormSubmitButton({
    Key? key,
    required this.onTap,
    required this.title,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 75, 43, 1),
              Color.fromRGBO(255, 65, 108, 1)
            ],
          ),
        ),
        child: Ink(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(255, 75, 43, 1),
                Color.fromRGBO(255, 65, 108, 1)
              ],
            ),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            constraints: const BoxConstraints(minWidth: 88.0),
            child: isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : Text(
                    title,
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
          ),
        ),
      ),
    );
  }
}

class FormBackButton extends StatelessWidget {
  final VoidCallback onTap;
  const FormBackButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        elevation: 5,
      ),
      // child: Image.asset('assets/images/Vector.png')
      child: Ink(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 255, 255, 1),
              Color.fromRGBO(255, 255, 255, 1)
            ],
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          constraints: const BoxConstraints(
            minWidth: 20.0,
            minHeight: 20,
          ),
          child: Image.asset(
            'assets/arrow.png',
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}

class VideoThumbnailWidget extends StatelessWidget {
  final String path;
  final VoidCallback onTap;
  const VideoThumbnailWidget({
    Key? key,
    required this.path,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          FutureBuilder(
            future: VideoThumbnail.thumbnailData(
              video: path,
              imageFormat: ImageFormat.JPEG,
              maxWidth: 128,
              quality: 25,
            ),
            builder:
                (BuildContext context, AsyncSnapshot<Uint8List?> snapshot) {
              if (!snapshot.hasData) {
                return const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                );
              }
              return Image.memory(snapshot.data!);
            },
          ),
          const Icon(
            Icons.close,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
