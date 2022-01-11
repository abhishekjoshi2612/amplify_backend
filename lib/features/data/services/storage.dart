import 'dart:io';
import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:get/instance_manager.dart';

class StorageService {
  StorageService();
  final _authService = Get.find<AuthService>();

  /// Uploads the file to S3 and saves the key to get url later
  Future<String> uploadFile(File file) async {
    final user = await _authService.loggedInUser();
    UploadFileResult result = await Amplify.Storage.uploadFile(
      local: File(file.path),
      key: _authService.genFileName(user!),
      options: UploadFileOptions(
        accessLevel: StorageAccessLevel.guest,
      ),
    );
    return result.key;
  }

  /// Generate the url for a file using its key
  /// Note: This is important as urls generated expire after a while
  Future<String> getUrl(String key) async {
    final options = S3GetUrlOptions(
      expires: const Duration(days: 2).inSeconds,
      accessLevel: StorageAccessLevel.guest,
    );
    final url = await Amplify.Storage.getUrl(key: key, options: options);
    return url.url;
  }
}
