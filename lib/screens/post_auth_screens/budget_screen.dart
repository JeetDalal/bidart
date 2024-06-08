import 'package:art_bid/screens/post_auth_screens/widgets/next_button.dart';
import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

class BudgetScreen extends StatefulWidget {
  const BudgetScreen({super.key});

  @override
  State<BudgetScreen> createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
  int _selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Follow categories of art that most interest you",
            style: titleStyle.copyWith(fontSize: 28),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              'Under 500',
              style: subtitleStyle.copyWith(color: primaryColor),
            ),
            trailing: Radio<int>(
              value: 1,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              'Under 1000',
              style: subtitleStyle.copyWith(color: primaryColor),
            ),
            trailing: Radio<int>(
              value: 2,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              'Under 2500',
              style: subtitleStyle.copyWith(color: primaryColor),
            ),
            trailing: Radio<int>(
              value: 3,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              'Under 5000',
              style: subtitleStyle.copyWith(color: primaryColor),
            ),
            trailing: Radio<int>(
              value: 4,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              'Under 10,000',
              style: subtitleStyle.copyWith(color: primaryColor),
            ),
            trailing: Radio<int>(
              value: 5,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              'Under 25,000',
              style: subtitleStyle.copyWith(color: primaryColor),
            ),
            trailing: Radio<int>(
              value: 6,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              'No budget in mind',
              style: subtitleStyle.copyWith(color: primaryColor),
            ),
            trailing: Radio<int>(
              value: 7,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          NextButton()
        ],
      ),
    );
  }
}
