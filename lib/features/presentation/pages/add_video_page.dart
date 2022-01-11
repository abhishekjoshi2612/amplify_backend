import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class AddVideoPage extends StatefulWidget {
  const AddVideoPage({Key? key}) : super(key: key);

  @override
  _AddVideoPageState createState() => _AddVideoPageState();
}

class _AddVideoPageState extends State<AddVideoPage> {
  File? file;
  late String pathRequest, path;
  var result;
  var res;
  var multires;

  Future selectFile() async {
    result = await FilePicker.platform.pickFiles();
    if (result == Null) return;
    path = result!.files.single.path!;
    print(path);
    pathRequest = 'r\'' + path + '\'';
    print(pathRequest);
    setState(() {
      file = File(path);
    });
    res = await File(path).readAsBytes();
    multires = await http.MultipartFile.fromPath('name', path);
  }

// Future _uploadVideo() async {
//   if(file==null) return;
//   final fileName=basename(file!.path);
//   // AmplifyDataStore.instance

// }

  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? basename(file!.path) : "No file selected";
    return Scaffold(
      appBar: AppBar(
        title: const Text("File Picker"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              selectFile();
            },
            child: Text("Select Files"),
          ),
          Text(fileName),
          ElevatedButton(
            // onPressed: () async {
            //   var request = http.MultipartRequest(
            //       "PUT",
            //       Uri.parse(
            //           'https://fluttervod-dev-input-aemgmnry.s3.us-east-2.amazonaws.com/mb_2ndNov_5.mp4'));
            //   request.files
            //       .add(await http.MultipartFile.fromPath(fileName, file!.path));
            //   request.send().then((response) {
            //     http.Response.fromStream(response).then((onValue) {
            //       try {
            //         if (response.statusCode == 200)
            //           print('uploaded it');
            //         else
            //           print('could not upload');
            //         // get your response here...
            //       } catch (e) {
            //         print('$e error in uploading');
            //         // handle exeption
            //       }
            //     });
            //   });
            // },

            onPressed: () {},

            // onPressed: () async {
            //   var headers = {
            //     'x-amz-acl': 'bucket-owner-full-control',
            //     "Content-Type": "video/mp4",
            //     // "Content-Disposition": 'attachment; filename="resource"',
            //     // "Content-Encoding": "identity",
            //     "Content-Length": file!.lengthSync().toString()
            //   };
            //   var multiplartFiles = http.MultipartFile.fromPath(fileName, path);
            //   dio.FormData formData = dio.FormData.fromMap({
            //     "video": multiplartFiles,
            //     "video_id": '123',
            //   });

            //   dio.Dio dioInstance = new dio.Dio();
            //   dioInstance.options.headers = headers;
            //   final response = await dioInstance.put(
            //       'https://fluttervod-dev-input-aemgmnry.s3.us-east-2.amazonaws.com/mb_2ndNov_7.mp4',
            //       data: file!.readAsBytesSync(),
            //       onSendProgress: (val1, val2) {
            //     print('$val1 / $val2');
            //   }).catchError((error) {
            //     print('$error could not upload');
            //   });
            // },

            // onPressed: () async {
            //   final url = Uri.parse(
            //       'https://fluttervod-dev-input-aemgmnry.s3.us-east-2.amazonaws.com/mb_2ndNov_5.mp4');
            //   final response = await http.put(
            //     url,
            //     body: File(path).readAsStringSync(),
            //     // body: json.encode({
            //     //   'id':'video123',
            //     //   'shopId':'shop123',
            //     //   'videoName':'name123',
            //     //   'createdTimeStamp': '2ndNov',
            //     //   'inputBucketUrl':'input',
            //     //   'outputBucketUrl': 'output'
            //     // }),
            //     headers: {
            //       'x-amz-acl': 'bucket-owner-full-control',
            //       'Content-Type': 'video/mp4'
            //     },
            //   );
            //   if (response.statusCode == 200) {
            //     print('uploaded');
            //   } else {
            //     print('not uploaded');
            //   }
            // },
            // onPressed: () async {
            //   var headers = {
            //     'x-amz-acl': 'bucket-owner-full-control',
            //     'Content-Type': 'video/mp4'
            //   };
            //   var request = http.Request(
            //       'PUT',
            //       Uri.parse(
            //           'https://fluttervod-dev-input-aemgmnry.s3.us-east-2.amazonaws.com/mb_2ndNov.mp4'));
            //    request.body = File(path).readAsBytesSync().toString();

            //   request.headers.addAll(headers);

            //   http.StreamedResponse response = await request.send();

            //   if (response.statusCode == 200) {
            //     print(await response.stream.bytesToString());
            //   } else {
            //     print(response.reasonPhrase);
            //   }
            // },
            // onPressed: () async {
            //   // Future<void> createAudioUpload(String fileUrl) async {
            //   Uri ourUri = Uri.parse(
            //       'https://fluttervod-dev-input-aemgmnry.s3.us-east-2.amazonaws.com/mb_29oct_multipart_1.mp4');
            //   final request = http.MultipartRequest(
            //       'POST', ourUri); // creates our req instance

            //   final file = await http.MultipartFile.fromPath(
            //       'audio', path); // points a ref to file

            //   request.files.add(file); // adds our file to our request instance
            //   final response =
            //       await request.send(); // sends our request to the endpoint!
            //   print('reached 5');
            //   if (response.statusCode == 200) {
            //     print('Success, $response');
            //   } else {
            //     print('Failed due to:${response.reasonPhrase}');
            //   }
            // },
            // },
            child: const Text("Upload Files"),
          ),
        ],
      )),
    );
  }
}
