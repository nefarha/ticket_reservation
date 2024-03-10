import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reza_reservation/app/data/addon/color_paletter.dart';
import 'package:reza_reservation/app/data/addon/reusable.dart';

import '../controllers/buat_pesanan_controller.dart';

class BuatPesananView extends GetView<BuatPesananController> {
  const BuatPesananView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final pesananForm = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buat Pesanan'),
        centerTitle: true,
      ),
      body: Obx(
        () => StackWithLoading(
          isLoading: controller.isLoading.value,
          children: [
            Form(
              key: pesananForm,
              child: Padding(
                padding: const EdgeInsets.all(
                  20,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            boxShadow: Reusable.deafultBoxShadow,
                            color: ColorPalette.backgroundColor,
                            borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Informasi Pemesan',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Reusable.customTextfield(
                                hint: 'Nama Pemesan',
                                controller: controller.nameController),
                            const SizedBox(
                              height: 20,
                            ),
                            Reusable.customTextfield(
                              hint: 'Nomor Hp',
                              keyboardType: TextInputType.phone,
                              controller: controller.nomorHpController,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            boxShadow: Reusable.deafultBoxShadow,
                            color: ColorPalette.backgroundColor,
                            borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Informasi Rekening Pemesan',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Reusable.customTextfield(
                              hint: 'Nama Rekening Pemesan',
                              controller: controller.namaPemilikController,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Reusable.customTextfield(
                              hint: 'Nomor Rekening',
                              keyboardType: TextInputType.number,
                              controller: controller.nomorRekeningController,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Reusable.customTextfield(
                              hint: 'Nama Bank',
                              controller: controller.namaBankController,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            boxShadow: Reusable.deafultBoxShadow,
                            color: ColorPalette.backgroundColor,
                            borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Pilih Wisata',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Obx(
                              () => DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  value: controller.selectedWisata.value,
                                  isExpanded: true,
                                  items: controller.daftarWisata
                                      .map(
                                        (e) => DropdownMenuItem(
                                          value: e,
                                          child: Text(
                                              e.namaWisata.capitalizeFirst!),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (value) {
                                    controller.selectedWisata.value = value!;
                                  },
                                ),
                              ),
                            ),
                            Obx(
                              () => Row(
                                children: [
                                  const Text('harga :'),
                                  const Spacer(),
                                  Text(
                                    Reusable.moneyFormat(
                                      controller.selectedWisata.value?.harga ??
                                          0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Obx(
                              () => Row(
                                children: [
                                  const Text('jumlah :'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      if (controller.jumlahTicket.value > 1) {
                                        controller.jumlahTicket--;
                                      }
                                    },
                                    icon: const Icon(Icons.remove),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(controller.jumlahTicket.string),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      controller.jumlahTicket++;
                                    },
                                    icon: const Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ),
                            Obx(
                              () => Row(
                                children: [
                                  const Text('total harga :'),
                                  const Spacer(),
                                  Text(
                                    Reusable.moneyFormat(
                                      int.parse(controller.totalHarga),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Obx(
                        () => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              boxShadow: Reusable.deafultBoxShadow,
                              color: ColorPalette.backgroundColor,
                              borderRadius: BorderRadius.circular(15)),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Pilih Rekening Penerima',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  value: controller.selectedRekening.value,
                                  isExpanded: true,
                                  items: controller.daftarRekening
                                      .map(
                                        (e) => DropdownMenuItem(
                                          value: e,
                                          child: Text(
                                            '${e.name.replaceAll('_', ' ').capitalizeFirst!} - ${e.bank_name}',
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (value) {
                                    controller.selectedRekening.value = value;
                                  },
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Pemilik :'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: Text(
                                      controller.selectedRekening.value?.name ??
                                          "",
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Nama Bank :'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: Text(
                                      controller.selectedRekening.value
                                              ?.bank_name ??
                                          "",
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Nomor Rekening :'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: Text(
                                      controller
                                              .selectedRekening.value?.number ??
                                          "",
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Obx(
                        () => Container(
                          width: Get.width,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              boxShadow: Reusable.deafultBoxShadow,
                              color: ColorPalette.backgroundColor,
                              borderRadius: BorderRadius.circular(15)),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Upload Foto',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Foto :'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: Text(
                                      controller.selectedImageName.value ?? "",
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  await controller.pickFile();
                                },
                                child: Container(
                                  height: 30,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: ColorPalette.buttonColor,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Upload Foto',
                                      style: TextStyle(
                                        color: ColorPalette.textButtonColor,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () async {
                          if (pesananForm.currentState!.validate()) {
                            await controller.createPesanan();
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
                              'Buat Pesanan',
                              style: TextStyle(
                                color: ColorPalette.textButtonColor,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
