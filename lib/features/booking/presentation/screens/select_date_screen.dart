import 'package:booking/config/navigation.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SelectDateScreen extends StatelessWidget {
  const SelectDateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DateRangePickerController controller = DateRangePickerController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: AppHeight.h20),
        child: SfDateRangePicker(
          controller: controller,
          showNavigationArrow: true,
          initialSelectedDate: DateTime.now(),
          minDate: DateTime.now(),
          view: DateRangePickerView.year,
          headerHeight: AppHeight.h50,
          monthViewSettings: DateRangePickerMonthViewSettings(
            viewHeaderStyle: DateRangePickerViewHeaderStyle(
                textStyle: getMediumStyle(
              fontColor: Theme.of(context).focusColor,
              fontSize: FontSize.s12,
            )),
          ),
          headerStyle: calenderHeaderStyle(context),
          yearCellStyle: yearCellStyle(context),
          monthCellStyle: monthCellStyle(context),
          selectionColor: AppColors.teal,
          selectionTextStyle: getBoldStyle(
            fontColor: AppColors.white,
            fontSize: FontSize.s15,
          ),
          todayHighlightColor: AppColors.teal,
          confirmText: 'ok',
          cancelText: 'cancel',
          selectionMode: DateRangePickerSelectionMode.single,
          showActionButtons: true,
          onSubmit: (dynamic value) {
            Go.back(context: context);
            // DateTime dateTime = value;
            // cubit.selectedDateTime(dateTime);
          },
          onCancel: () {
            Go.back(context: context);
          },
        ),
      ),
    );
  }

  DateRangePickerMonthCellStyle monthCellStyle(BuildContext context) {
    return DateRangePickerMonthCellStyle(
      textStyle: getBoldStyle(
        fontColor: Theme.of(context).focusColor,
        fontSize: FontSize.s16,
      ),
      disabledDatesTextStyle: getBoldStyle(
        fontColor: Theme.of(context).canvasColor,
        fontSize: FontSize.s16,
      ),
      todayTextStyle: getBoldStyle(
        fontColor: AppColors.teal,
        fontSize: FontSize.s16,
      ),
    );
  }

  DateRangePickerYearCellStyle yearCellStyle(BuildContext context) {
    return DateRangePickerYearCellStyle(
      textStyle: getBoldStyle(
        fontColor: Theme.of(context).focusColor,
        fontSize: FontSize.s18,
      ),
      disabledDatesTextStyle: getBoldStyle(
        fontColor: Theme.of(context).canvasColor,
        fontSize: FontSize.s18,
      ),
      todayTextStyle: getBoldStyle(
        fontColor: AppColors.teal,
        fontSize: FontSize.s16,
      ),
    );
  }

  DateRangePickerHeaderStyle calenderHeaderStyle(BuildContext context) {
    return DateRangePickerHeaderStyle(
      textAlign: TextAlign.center,
      textStyle: getBoldStyle(
        fontColor: Theme.of(context).focusColor,
        fontSize: FontSize.s20,
      ),
    );
  }
}
