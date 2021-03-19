import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';

import 'local_image.dart';

class FilterDropDown extends StatefulWidget {
  final String hint;
  final double height;
  final double width;
  final List<String> values;
  final String value;
  final bool authorName;
  final Function(String newValue) callBack;

  FilterDropDown({
    this.hint,
    this.height,
    this.width,
    this.values,
    this.authorName,
    this.callBack,
    this.value,
  });

  @override
  _FilterDropDownState createState() => _FilterDropDownState();
}

class _FilterDropDownState extends State<FilterDropDown> {
  String value;
  @override
  void initState() {
    super.initState();
    print('INI VALUE ${widget.value}');
    if(widget.value != null && widget.value.isNotEmpty)
      value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? SizeConfig.screenWidth * 0.4,
      height: widget.height ?? SizeConfig.screenHeight * 0.08,
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFCBCBCB)),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
      ),
      child: DropdownButton<String>(
        onChanged: (String v) {
          print(v);
          setState(() {
            value = v;
            widget.callBack?.call(v);
          });
        },
        value: value,
        items: widget.values.isNotEmpty
            ? widget.values
                .map((e) => DropdownMenuItem<String>(
                    value: e,
                    child: Text(
                      e,
                      style: lightStyle.copyWith(color: Colors.grey),
                    )))
                .toList()
            : widget.value != null && widget.value.isNotEmpty ? [
                DropdownMenuItem(
                  value: widget.value,
                  child: Text(
                    widget.value,
                    style: lightStyle.copyWith(color: Colors.grey),
                  ),
                ),
              ] : null,
        underline: Container(),
        isExpanded: true,
        icon: buildLocalImage('assets/svg/arrow_down.svg'),
        hint: Text(widget.hint,
            style: regStyle.copyWith(color: Color(0xFFCBCBCB), fontSize: 12)),
      ),
    );
  }
}

// Widget filterDropDown(
//   BuildContext context, {
//   String hint,
//   double height,
//   double width,
//   List<String> values,
//   bool authorName,
//   Function(String newValue) callBack,
// }) {
//   String value;
//   return Container(
//     width: width ?? SizeConfig.screenWidth * 0.4,
//     height: height ?? SizeConfig.screenHeight * 0.08,
//     padding: EdgeInsets.all(12),
//     decoration: ShapeDecoration(
//       shape: RoundedRectangleBorder(
//         side: BorderSide(width: 1, color: Color(0xFFCBCBCB)),
//         borderRadius: BorderRadius.all(Radius.circular(5.0)),
//       ),
//     ),
//     child: DropdownButton<String>(
//       onChanged: (String v) {
//         value = v;
//         print(v);
//         callBack?.call(v);
//       },
//       // value: 'اختر اسم الكاتب',
//       value: value,
//       items: authorName
//           ? List.generate(
//               authorOptions != null && authorOptions.isNotEmpty
//                   ? authorOptions.length + 1
//                   : 1,
//               (index) => DropdownMenuItem<String>(
//                 child: Text(
//                   index != 0
//                       ? authorOptions[index - 1].getName(
//                           AppLocalizations.of(context).locale.languageCode)
//                       : AppLocalizations.of(context)
//                           .translate('Select writer name'),
//                   style: lightStyle.copyWith(color: Colors.grey),
//                 ),
//               ),
//             )
//           : List.generate(
//               categoryOptions != null && categoryOptions.isNotEmpty
//                   ? categoryOptions.length + 1
//                   : 1,
//               (index) => DropdownMenuItem<String>(
//                 child: Text(
//                   index != 0
//                       ? categoryOptions[index - 1].getName(
//                           AppLocalizations.of(context).locale.languageCode)
//                       : AppLocalizations.of(context)
//                           .translate('Select writer name'),
//                   style: lightStyle.copyWith(color: Colors.grey),
//                 ),
//               ),
//             ),
//       underline: Container(),
//       isExpanded: true,
//       icon: buildLocalImage('assets/svg/arrow_down.svg'),
//       hint: Text(hint,
//           style: regStyle.copyWith(color: Color(0xFFCBCBCB), fontSize: 12)),
//     ),
//   );
// }
