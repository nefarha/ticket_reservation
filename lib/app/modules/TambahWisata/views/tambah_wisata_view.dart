import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reza_reservation/app/data/addon/color_paletter.dart';
import 'package:reza_reservation/app/data/addon/reusable.dart';

import '../controllers/tambah_wisata_controller.dart';

class TambahWisataView extends GetView<TambahWisataController> {
  const TambahWisataView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final wisataForm = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Wisata'),
        centerTitle: true,
      ),
      body: Obx(
        () => StackWithLoading(
          isLoading: controller.isLoading.value,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: wisataForm,
                child: Column(
                  children: [
                    Reusable.customTextfield(
                        hint: 'nama wisata',
                        keyboardType: TextInputType.number,
                        controller: controller.namaController),
                    const SizedBox(
                      height: 20,
                    ),
                    Reusable.customTextfield(
                      hint: 'harga wisata',
                      controller: controller.hargaController,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () async {
                        if (wisataForm.currentState!.validate()) {
                          await controller.createWIsata();
                        }
                      },
                      child: Container(
                        height: 50,
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: ColorPalette.buttonColor,
                        ),
                        child: const Center(
                          child: Text(
                            'Tambah Wisata',
                            style: TextStyle(
                                color: ColorPalette.textButtonColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
