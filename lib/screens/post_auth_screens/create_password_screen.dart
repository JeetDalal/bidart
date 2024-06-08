import 'package:art_bid/provider/form_detail_provider.dart';
import 'package:art_bid/screens/post_auth_screens/widgets/next_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/constants.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmNewPasswordController =
      TextEditingController();
  bool isNewPasswordVisible = false;
  bool isConfirmNewPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    // final formProvider = Provider.of<FormDetailProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Create Password",
            style: titleStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "must be 8 characters or longer",
            style: subtitleStyle,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "New Password",
            style: labelStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          TextField(
            obscureText: isNewPasswordVisible,
            decoration: InputDecoration(
              suffixIcon: isNewPasswordVisible
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          isNewPasswordVisible = !isNewPasswordVisible;
                        });
                      },
                      child: Icon(Icons.visibility_off))
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          isNewPasswordVisible = !isNewPasswordVisible;
                        });
                      },
                      child: Icon(Icons.visibility)),
              hintText: "enter new password",
              hintStyle: placeHolderStyle,
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: inactiveIndicatorColor,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: inactiveIndicatorColor,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: inactiveIndicatorColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Confirm New Password",
            style: labelStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          TextField(
            obscureText: isConfirmNewPasswordVisible,
            decoration: InputDecoration(
              suffixIcon: isNewPasswordVisible
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          isConfirmNewPasswordVisible =
                              !isConfirmNewPasswordVisible;
                        });
                      },
                      child: Icon(Icons.visibility_off))
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          isConfirmNewPasswordVisible =
                              !isConfirmNewPasswordVisible;
                        });
                      },
                      child: Icon(Icons.visibility),
                    ),
              hintText: "re-enter password",
              hintStyle: placeHolderStyle,
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: inactiveIndicatorColor,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: inactiveIndicatorColor,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: inactiveIndicatorColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          NextButton(),
        ],
      ),
    );
  }
}
