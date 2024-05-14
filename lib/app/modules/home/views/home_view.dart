import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:focus_detector_v2/focus_detector_v2.dart';
import 'package:get/get.dart';
import 'package:reza_reservation/app/data/addon/color_paletter.dart';
import 'package:reza_reservation/app/data/addon/reusable.dart';
import 'package:reza_reservation/app/data/enums/enums.dart';
import 'package:reza_reservation/app/data/model/pesanan/pesanan_model.dart';
import 'package:reza_reservation/app/data/model/rekening/rekening_model.dart';
import 'package:reza_reservation/app/data/model/wisata/wisata_model.dart';
import 'package:reza_reservation/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(controller.titleList[controller.currentPage.value]),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () async {
                Get.offAllNamed(Routes.AUTHENTICATINO);
              },
              icon: const Icon(
                Icons.logout,
                color: ColorPalette.activeColor,
              ),
            ),
          ],
        ),
        drawer: controller.user.accountType == AccountType.admin.name
            ? const Drawer(
                child: HomeDrawer(),
              )
            : null,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: controller.pageList[controller.currentPage.value],
        ),
      ),
    );
  }
}

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return FocusDetector(
        onFocusGained: () async {
          await controller.getPesanan();
        },
        child: const Column(
          children: [
            DataViewHeader(),
            SizedBox(
              height: 30,
            ),
            DataList(),
          ],
        ),
      );
    });
  }
}

class DataViewHeader extends StatelessWidget {
  const DataViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Container(
          color: ColorPalette.backgroundColor,
          child: Column(
            children: [
              // Text filter and Sort
              Row(
                children: [
                  Flexible(
                    child: Reusable.customTextfield(
                      hint: "cari data dari nama",
                      onChanged: (p0) => controller.pesananSearch.value = p0,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.BUAT_PESANAN,
                          arguments: controller.user);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorPalette.buttonColor,
                        boxShadow: Reusable.deafultBoxShadow,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: ColorPalette.textButtonColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: StatusPesanan.values
                      .map(
                        (e) => Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.selectedStatus.value = e;
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: e == controller.selectedStatus.value
                                        ? ColorPalette.activeColor
                                        : ColorPalette.buttonColor,
                                    width: e == controller.selectedStatus.value
                                        ? 3
                                        : 2,
                                  ),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  e.code!,
                                  style: TextStyle(
                                    color: e == controller.selectedStatus.value
                                        ? Colors.black
                                        : Colors.grey.shade500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class DataList extends StatelessWidget {
  const DataList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: GetBuilder<HomeController>(
          builder: (controller) {
            return Obx(
              () => controller.daftarPesanan.indexed
                      .where((element) =>
                          element.$2.status ==
                          controller.selectedStatus.value.name)
                      .where(
                        (element) =>
                            element.$2.namaPemesan.toLowerCase().contains(
                                  controller.pesananSearch.toLowerCase(),
                                ),
                      )
                      .isNotEmpty
                  ? Column(
                      children: controller.daftarPesanan.indexed
                          .where((element) =>
                              element.$2.status ==
                              controller.selectedStatus.value.name)
                          .where(
                            (element) =>
                                element.$2.namaPemesan.toLowerCase().contains(
                                      controller.pesananSearch.toLowerCase(),
                                    ),
                          )
                          .map(
                            (e) => ItemCard(index: e.$1, model: e.$2),
                          )
                          .toList(),
                    )
                  : const Text('Tidak ada data'),
            );
          },
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.index, required this.model});

  final int index;
  final PesananModel model;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return GestureDetector(
        onTap: () => Get.toNamed(Routes.DETAIL_PESANAN,
            arguments: [model, controller.user]),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: index % 2 == 0
                ? ColorPalette.backgroundColor
                : Colors.grey.shade200,
            border: const Border(
              bottom: BorderSide(
                width: 0.5,
                color: Colors.grey,
              ),
              top: BorderSide(
                width: 0.5,
                color: Colors.grey,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(model.namaPemesan),
                subtitle: Text(model.status),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                ),
              ),
              Text(
                Reusable.moneyFormat(int.parse(model.totalHarga)),
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: Get.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
        color: ColorPalette.backgroundColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Menu Admin',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                controller.currentPage.value = 0;

                Get.back();
              },
              title: const Text('Data Pesanan'),
            ),
            ListTile(
              onTap: () {
                controller.currentPage.value = 1;

                Get.back();
              },
              title: const Text('Data Rekening'),
            ),
            ListTile(
              onTap: () {
                controller.currentPage.value = 2;

                Get.back();
              },
              title: const Text('Data Wisata'),
            ),
          ],
        );
      },
    );
  }
}

// Rekening Page
class RekeningPage extends StatelessWidget {
  const RekeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return FocusDetector(
        onFocusGained: () async {
          await controller.getRekening();
        },
        child: const Column(
          children: [
            RekeningHeaderView(),
            SizedBox(
              height: 20,
            ),
            RekeningBodyList(),
          ],
        ),
      );
    });
  }
}

class RekeningHeaderView extends StatelessWidget {
  const RekeningHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Row(
        children: [
          Flexible(
            child: Reusable.customTextfield(
              hint: 'cari rekening dari nama',
              onChanged: (p0) => controller.rekeningSearch.value = p0,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.TAMBAH_REKENING, arguments: controller.user);
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorPalette.buttonColor,
                boxShadow: Reusable.deafultBoxShadow,
              ),
              child: const Icon(
                Icons.add,
                color: ColorPalette.textButtonColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RekeningBodyList extends StatelessWidget {
  const RekeningBodyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GetBuilder<HomeController>(
        builder: (controller) {
          return Obx(
            () {
              return controller.daftarRekening.isNotEmpty
                  ? ListView(
                      children: controller.daftarRekening.indexed
                          .where(
                            (p0) => p0.$2.name.toLowerCase().contains(
                                controller.rekeningSearch.toLowerCase()),
                          )
                          .map(
                            (e) => RekeningItemCard(
                                model: controller.daftarRekening[e.$1],
                                index: e.$1),
                          )
                          .toList(),
                    )
                  : const Text('Tidak ada data');
            },
          );
        },
      ),
    );
  }
}

class RekeningItemCard extends StatelessWidget {
  const RekeningItemCard({super.key, required this.model, required this.index});
  final RekeningModel model;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: index % 2 == 0
              ? ColorPalette.backgroundColor
              : Colors.grey.shade200,
          border: const Border(
            bottom: BorderSide(
              width: 0.5,
              color: Colors.grey,
            ),
            top: BorderSide(
              width: 0.5,
              color: Colors.grey,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(model.name.capitalizeFirst!),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(model.bank_name.capitalizeFirst!),
                  Text(
                    model.number.capitalizeFirst!,
                    style: const TextStyle(
                      color: ColorPalette.buttonColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              trailing: GestureDetector(
                onTap: () async {
                  await controller.deleteRekening(id: model.id!);
                },
                child: const Icon(
                  Icons.delete,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

// Wista page
class WisataPage extends StatelessWidget {
  const WisataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => FocusDetector(
        onFocusGained: () async {
          await controller.getWisata();
        },
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  child: Reusable.customTextfield(
                    hint: 'cari wisata dari nama',
                    onChanged: (p0) => controller.rekeningSearch.value = p0,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.TAMBAH_WISATA);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorPalette.buttonColor,
                      boxShadow: Reusable.deafultBoxShadow,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: ColorPalette.textButtonColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const WisataBody(),
          ],
        ),
      ),
    );
  }
}

class WisataBody extends StatelessWidget {
  const WisataBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GetBuilder<HomeController>(
        builder: (controller) {
          return Obx(
            () {
              return controller.daftarWisata.isNotEmpty
                  ? ListView(
                      children: controller.daftarWisata.indexed
                          .where(
                            (p0) => p0.$2.namaWisata.toLowerCase().contains(
                                controller.rekeningSearch.toLowerCase()),
                          )
                          .map(
                            (e) => WisataCard(
                                model: controller.daftarWisata[e.$1],
                                index: e.$1),
                          )
                          .toList(),
                    )
                  : const Text('Tidak ada data');
            },
          );
        },
      ),
    );
  }
}

class WisataCard extends StatelessWidget {
  const WisataCard({
    super.key,
    required this.model,
    required this.index,
  });

  final int index;
  final WisataModel model;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: index % 2 == 0
              ? ColorPalette.backgroundColor
              : Colors.grey.shade200,
          border: const Border(
            bottom: BorderSide(
              width: 0.5,
              color: Colors.grey,
            ),
            top: BorderSide(
              width: 0.5,
              color: Colors.grey,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                model.namaWisata.capitalizeFirst!,
              ),
              subtitle: Text(
                Reusable.moneyFormat(model.harga),
                style: const TextStyle(
                  color: ColorPalette.buttonColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: GestureDetector(
                onTap: () async {
                  await controller.deleteWisata(id: model.id!);
                },
                child: const Icon(
                  Icons.delete,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
