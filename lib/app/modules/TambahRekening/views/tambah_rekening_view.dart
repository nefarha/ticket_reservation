import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reza_reservation/app/data/addon/color_paletter.dart';
import 'package:reza_reservation/app/data/addon/reusable.dart';

import '../controllers/tambah_rekening_controller.dart';

class TambahRekeningView extends GetView<TambahRekeningController> {
  const TambahRekeningView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final rekeningForm = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Rekening'),
        centerTitle: true,
      ),
      body: Obx(
        () => StackWithLoading(
          isLoading: controller.isLoading.value,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: rekeningForm,
                child: Column(
                  children: [
                    Reusable.customTextfield(
                        hint: 'nomor rekening',
                        keyboardType: TextInputType.number,
                        controller: controller.nomorController),
                    const SizedBox(
                      height: 20,
                    ),
                    Reusable.customTextfield(
                        hint: 'pemilik rekening',
                        controller: controller.pemilikController),
                    const SizedBox(
                      height: 20,
                    ),
                    Reusable.customTextfield(
                        hint: 'nama bank',
                        controller: controller.bankController),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () async {
                        if (rekeningForm.currentState!.validate()) {
                          await controller.createRekening();
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
                            'Tambah Rekening',
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
