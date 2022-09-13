
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackton_freelancer/database/controllers/blog_controller.dart';
import 'package:hackton_freelancer/models/blog.dart';
import 'package:hackton_freelancer/models/process_response.dart';

class BlogGetxController extends GetxController {
  RxList<Blog> BlogItems = <Blog>[].obs;
  RxBool loading = false.obs;

  static BlogGetxController get to => Get.find<BlogGetxController>();

  @override
  void onInit() {
    read();
    super.onInit();
  }



  final BlogDbController _dbController = BlogDbController();

  Future<ProcessResponse> create(Blog blog) async {
    int newRowId = await _dbController.create(blog);
    if (newRowId != 0) {
      blog.id = newRowId;
      BlogItems.add(blog);
    }
    return getResponse(newRowId != 0);
  }
  void read() async {
    loading.value = true;

    BlogItems.value = await _dbController.read();
    loading.value = false;


  }
  Future<ProcessResponse> delete(int index) async {
    bool deleted = await _dbController.delete(BlogItems[index].id);
    if(deleted) {
      BlogItems.removeAt(index);
    }
    return getResponse(deleted);
  }
  Future<ProcessResponse> clear() async {
    bool cleared = await _dbController.clear();
    if (cleared) {

      BlogItems.clear();
    }
    return getResponse(cleared);
  }
  Future<ProcessResponse> updateNote(Blog blog) async {
    bool updated = await _dbController.update(blog);
    if(updated) {
      int index = BlogItems.indexWhere((element) => element.id == blog.id);
      if(index != -1) {
        BlogItems[index] = blog;
      }
    }
    return getResponse(updated);
  }
  ProcessResponse getResponse(bool success) {
    return ProcessResponse(
      message:
      success ? 'Operation completed successfully' : 'Operation failed!',
      success: success,
    );
  }
}
