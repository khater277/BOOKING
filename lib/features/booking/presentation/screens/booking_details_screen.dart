import 'package:booking/config/navigation.dart';
import 'package:booking/core/shared_widgets/text_form_field.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/booking/presentation/screens/select_date_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final f = DateFormat('yyyy-MM-dd');
    TextEditingController controller = TextEditingController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.w20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                hintText: "check in",
                validatorText: "validatorText",
                controller: controller,
                inputType: TextInputType.text,
                prefixIcon: Icons.input_outlined,
                readOnly: true,
                onTap: () {
                  Go.to(context: context, screen: const SelectDateScreen());
                  debugPrint("A7A");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
