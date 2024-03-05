import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:reza_reservation/app/data/addon/color_paletter.dart';

class Reusable {
  static List<BoxShadow> deafultBoxShadow = [
    BoxShadow(
      color: Colors.grey.shade300,
      blurRadius: 4,
      spreadRadius: 1,
    )
  ];

  static String moneyFormat(num value) {
    return NumberFormat.currency(locale: 'id', symbol: 'Rp. ', decimalDigits: 0)
        .format(value);
  }

  static String dateFormat(DateTime time) {
    return DateFormat('yyyy/MMM/dd').format(time);
  }

  static Widget customTextfield({
    TextEditingController? controller,
    void Function(String)? onChanged,
    required String hint,
    TextInputType? keyboardType,
    bool isObscured = false,
  }) {
    var isVisible = Rx(isObscured);
    return Container(
      decoration: BoxDecoration(
        color: ColorPalette.backgroundColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: Reusable.deafultBoxShadow,
      ),
      padding: const EdgeInsets.all(8),
      child: Obx(
        () => TextFormField(
          keyboardType: keyboardType,
          controller: controller,
          onChanged: onChanged,
          cursorColor: ColorPalette.buttonColor,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            suffixIcon: isObscured
                ? GestureDetector(
                    onTap: () {
                      isVisible.toggle();
                    },
                    child: Icon(
                      isVisible.value ? Icons.visibility : Icons.visibility_off,
                    ),
                  )
                : null,
          ),
          obscureText: isVisible.value,
          validator: (value) => value!.isNotEmpty ? null : "Mohon isi",
        ),
      ),
    );
  }

  static errorDialog({required String middleText}) {
    Get.defaultDialog(
      title: 'Error',
      middleText: "Somethin's went wrong with message : $middleText",
      onConfirm: () {
        Get.back();
      },
    );
  }
}

class StackWithLoading extends StatelessWidget {
  const StackWithLoading(
      {super.key, required this.children, required this.isLoading});

  final List<Widget> children;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ...children,
        if (isLoading)
          Stack(
            children: [
              const Opacity(
                opacity: 0.7,
                child: ModalBarrier(
                  dismissible: false,
                  color: Colors.black,
                ),
              ),
              Center(
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Container(
                    width: 80,
                    height: 80,
                    padding: const EdgeInsets.all(10),
                    child: const CircularProgressIndicator(),
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
