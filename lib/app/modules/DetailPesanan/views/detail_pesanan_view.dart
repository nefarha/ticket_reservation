import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reza_reservation/app/data/addon/color_paletter.dart';
import 'package:reza_reservation/app/data/addon/reusable.dart';
import 'package:reza_reservation/app/data/enums/enums.dart';

import '../controllers/detail_pesanan_controller.dart';

class DetailPesananView extends GetView<DetailPesananController> {
  const DetailPesananView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Pesanan'),
        centerTitle: true,
      ),
      body: controller.obx(
        (state) => SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  boxShadow: Reusable.deafultBoxShadow,
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    StatusPesanan.values
                            .firstWhereOrNull((element) =>
                                element.name ==
                                controller.pesananModel.value!.status)
                            ?.code ??
                        '',
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
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
                      'Informasi Pemesan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text(
                        controller.pesananModel.value!.namaPemesan,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      subtitle: Text(
                        controller.pesananModel.value!.nomorPemesan.toString(),
                      ),
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
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text(
                        controller.pesananModel.value!.namaRekeningPemesan,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller.pesananModel.value!.nomorRekeningPemesan
                                .toString(),
                          ),
                          Text(
                            controller.pesananModel.value!.namaBankPemesan,
                          ),
                        ],
                      ),
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
                      'Wisata',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text(
                        controller.pesananModel.value!.wisata.namaWisata,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${controller.pesananModel.value!.jumlahTicket} ticket x ${Reusable.moneyFormat(controller.pesananModel.value!.wisata.harga)}',
                          ),
                          Text(
                            Reusable.moneyFormat(int.parse(
                                controller.pesananModel.value!.totalHarga)),
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
                      'Rekening Penerima',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text(
                        controller.pesananModel.value!.rekeningPenerima.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller
                                .pesananModel.value!.rekeningPenerima.number,
                          ),
                          Text(
                            controller
                                .pesananModel.value!.rekeningPenerima.bank_name,
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
              Container(
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
                      'Foto',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CachedNetworkImage(
                        imageUrl: controller.pesananModel.value!.image)
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              (controller.user.accountType == AccountType.admin.name &&
                      (controller.pesananModel.value!.status ==
                              StatusPesanan.pending.name ||
                          controller.pesananModel.value!.status ==
                              StatusPesanan.req_cancel.name))
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: GestureDetector(
                                  onTap: () async {
                                    await controller.updatePesanan(
                                        isAccept: true);
                                  },
                                  child: Container(
                                    height: 50,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      color: ColorPalette.buttonColor,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Terima',
                                        style: TextStyle(
                                            color:
                                                ColorPalette.textButtonColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: GestureDetector(
                                  onTap: () async {
                                    await controller.updatePesanan(
                                        isAccept: false);
                                  },
                                  child: Container(
                                    height: 50,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      color: ColorPalette.activeColor,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Tolak',
                                        style: TextStyle(
                                            color:
                                                ColorPalette.backgroundColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          if (controller.pesananModel.value!.status ==
                              StatusPesanan.req_cancel.name)
                            GestureDetector(
                              onTap: () async {
                                await controller.adminCancelPesanan();
                              },
                              child: Container(
                                height: 50,
                                width: Get.width,
                                decoration: BoxDecoration(
                                  color: Colors.red.shade300,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Batalkan',
                                    style: TextStyle(
                                        color: ColorPalette.textButtonColor),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    )
                  : controller.pesananModel.value!.status ==
                          StatusPesanan.pending.name
                      ? Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                          child: GestureDetector(
                            onTap: () async {
                              await controller.cancelPesanan();
                            },
                            child: Container(
                              height: 50,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: Colors.red.shade300,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Text(
                                  'Batalkan',
                                  style: TextStyle(
                                      color: ColorPalette.textButtonColor),
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
