import 'package:flutter/material.dart';

import 'package:finalprojectv1/components/text_field_container.dart';
import 'package:finalprojectv1/constant.dart';

// class RoundedPasswordField extends StatelessWidget {
//   final ValueChanged<String> onChanged;
//   const RoundedPasswordField({
//     Key? key,
//     required this.onChanged,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextFieldContainer(
//       child: TextField(
//         obscureText: true,
//         onChanged: onChanged,
//         cursorColor: kPrimaryColor,
//         decoration: InputDecoration(
//           hintText: "Password",
//           icon: Icon(
//             Icons.lock,
//             color: kPrimaryColor,
//           ),
//           suffixIcon: Icon(
//             Icons.visibility,
//             color: kPrimaryColor,
//           ),
//           border: InputBorder.none,
//         ),
//       ),
//     );
//   }
// }
// ignore: must_be_immutable
class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  bool isHiddenPassword = true;

  RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.isHiddenPassword,
  }) : super(key: key);
  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: widget.isHiddenPassword,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: const Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: InkWell(
            onTap: _togglePasswordView,
            child: const Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  void _togglePasswordView() {
    widget.isHiddenPassword = !widget.isHiddenPassword;
    setState(() {});
  }
}
