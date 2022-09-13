
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackton_freelancer/database/controllers/ad_controller.dart';
import 'package:hackton_freelancer/models/ad.dart';
import 'package:hackton_freelancer/models/process_response.dart';

class AdGetxController extends GetxController {
  RxList<Ad> AdItems = <Ad>[].obs;
  RxBool loading = false.obs;

  static AdGetxController get to => Get.find<AdGetxController>();

  @override
  void onInit() {
    read();
    super.onInit();
  }



  final AdsDbController _dbController = AdsDbController();

  Future<ProcessResponse> create(Ad ad) async {
    int newRowId = await _dbController.create(ad);
    if (newRowId != 0) {
      ad.id = newRowId;
      AdItems.add(ad);
    }
    return getResponse(newRowId != 0);
  }
  void read() async {
    loading.value = true;

    AdItems.value = await _dbController.read();
    loading.value = false;


  }
  Future<ProcessResponse> clear() async {
    bool cleared = await _dbController.clear();
    if (cleared) {

      AdItems.clear();
    }
    return getResponse(cleared);
  }
  Future<ProcessResponse> updateNote(Ad ad) async {
    bool updated = await _dbController.update(ad);
    if(updated) {
      int index = AdItems.indexWhere((element) => element.id == ad.id);
      if(index != -1) {
        AdItems[index] = ad;
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
