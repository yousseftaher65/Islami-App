import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_pojo/ui/theme/style.dart';

class SearchField extends StatelessWidget {
  final void Function(String)? onSearch;
  const SearchField({
    super.key,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Style.primaryColor,
      onChanged: onSearch,
      inputFormatters: [LengthLimitingTextInputFormatter(15)],
      style: TxtStyle.mid,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          prefixIcon: const ImageIcon(
            AssetImage('assets/images/quranIcon2.png'),
            color: Style.primaryColor,
          ),
          label: const Text(
            'Sura Name',
            style: TxtStyle.mid,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(width: 2, color: Style.primaryColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(width: 2, color: Style.primaryColor)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(width: 2, color: Style.primaryColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(width: 2, color: Style.primaryColor)),
          filled: true,
          fillColor: Style.accentColor),
    );
  }
}
