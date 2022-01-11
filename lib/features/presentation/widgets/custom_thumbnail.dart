import 'dart:io';

import 'package:amplified_todo/features/data/services/storage.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class CustomThumbnail extends StatefulWidget {
  final String videoKey;
  final BoxFit? boxFit;
  const CustomThumbnail({
    Key? key,
    required this.videoKey,
    this.boxFit,
  }) : super(key: key);

  @override
  _CustomThumbnailState createState() => _CustomThumbnailState();
}

class _CustomThumbnailState extends State<CustomThumbnail> {
  String _thumbnail = '';
  @override
  void initState() {
    super.initState();
    _fetch();
  }

  Future<void> _fetch() async {
    final url = await StorageService().getUrl(widget.videoKey);
    final path = (await getTemporaryDirectory()).path;
    final imgFileName = path + widget.videoKey + ".webp";
    if (await File(imgFileName).exists()) {
      setState(() {
        _thumbnail = imgFileName;
      });
      return;
    }

    final fileName = await VideoThumbnail.thumbnailFile(
      video: url,
      thumbnailPath: imgFileName,
      imageFormat: ImageFormat.WEBP,
      maxHeight:
          150, // specify the height of the thumbnail, let the width auto-scaled to keep the source aspect ratio
      quality: 75,
    );
    if (fileName == null) {
      return;
    }
    setState(() {
      _thumbnail = fileName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: Colors.grey,
      child: _thumbnail.isEmpty
          ? const SizedBox()
          : Image.file(
              File(_thumbnail),
              fit: widget.boxFit,
            ),
    );
  }
}
