import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class TextFormFieldWithCountryCode extends StatefulWidget {
  final double borderRadiu;
  final Color fillColor;
  final Color cursorColor;
  final Color countryCodeColor;
  final Color borderColor;
  final ValueChanged<String> onChanged;

  const TextFormFieldWithCountryCode({
    super.key,
    this.borderRadiu = 12.00,
    this.fillColor = Colors.grey,
    this.cursorColor = Colors.grey,
    this.countryCodeColor = Colors.blue,
    this.borderColor = Colors.transparent,
    required this.onChanged,
  });

  @override
  State<TextFormFieldWithCountryCode> createState() =>
      _TextFormFieldWithCountryCodeState();
}

class _TextFormFieldWithCountryCodeState
    extends State<TextFormFieldWithCountryCode> {
  final controller = TextEditingController();
  String flagEmoji = '🇧🇩';

  String phoneCode = '880';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: widget.cursorColor,
      controller: controller,
      decoration: InputDecoration(
        fillColor: widget.fillColor,
        filled: true,
        hintText: 'Phone number',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        counterText: '',
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(widget.borderRadiu)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(widget.borderRadiu)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(widget.borderRadiu)),
        ),
        prefixIcon: TextButton(
          onPressed: () => showCountryPicker(
            context: context,
            showPhoneCode: true,
            countryListTheme: CountryListThemeData(
              flagSize: 25,
              backgroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 16, color: Colors.blueGrey),
              bottomSheetHeight: 500,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              //Optional. Styles the search field.
              inputDecoration: InputDecoration(
                labelText: 'Search',
                hintText: 'search country',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF8C98A8).withValues(alpha: 0.2),
                  ),
                ),
              ),
            ),
            onSelect: (Country country) {
              setState(() {
                controller.text = '';
                flagEmoji = country.flagEmoji;
                phoneCode = country.phoneCode;
              });
            },
          ),
          child: Text(
            '$flagEmoji ' '+$phoneCode',
            style: TextStyle(
              color: widget.countryCodeColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
      onChanged: (value) {
        final data = '+$phoneCode${controller.text.trim()}';

        widget.onChanged(data);
      },
    );
  }
}
