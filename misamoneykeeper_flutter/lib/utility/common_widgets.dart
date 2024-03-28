import 'package:misamoneykeeper_flutter/utility/export.dart';

Widget textFormField(
    {@required titleText, @required controller, @required enabled}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        titleText,
        style: TextStyle(
          fontFamily: sansRegular,
          fontWeight: FontWeight.w300,
          color: Colors.grey[600],
        ),
      ),
      TextFormField(
        controller: controller,
        enabled: enabled,
        validator: (value) {
          if (value == null || value.isEmpty) {
            // ignore: prefer_interpolation_to_compose_strings
            return 'Vui lòng nhập ' + titleText;
          }
          return null;
        },
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
      const Divider(
        height: 0.5,
        thickness: 1.5,
      ),
      const SizedBox(height: 10),
    ],
  );
}
