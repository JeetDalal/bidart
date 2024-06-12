import 'package:art_bid/utils/constants.dart';
import 'package:flutter/material.dart';

class ListLayoutCardWidget extends StatelessWidget {
  const ListLayoutCardWidget({
    super.key,
    required this.visText,
  });

  final String visText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 30,
          offset: const Offset(0, 12),
        ),
      ]),
      child: Row(
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1706452031249-1520c2a78d5a?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            cacheWidth: 150,
            cacheHeight: 150,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  visText.length <= 17
                      ? visText
                      : visText.substring(0, 17) + "...",
                  overflow: TextOverflow.fade,
                  style: titleStyle.copyWith(fontSize: 20),
                ),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "by ",
                    style: labelStyle.copyWith(color: Colors.grey),
                  ),
                  Text(
                    "@selena",
                    style: labelStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 75 - 160,
                child: Divider(
                  color: Colors.grey[300],
                  // thickness: 2,
                ),
              ),
              SizedBox(
                width: 190,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Current Bid",
                      style: labelStyle.copyWith(color: Colors.grey),
                    ),
                    Text(
                      "\$ 4,500",
                      style: labelStyle.copyWith(
                          color: primaryColor, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 30,
                width: 190,
                color: Colors.black,
                child: Center(
                  child: Text(
                    "Place a Bid",
                    style: labelStyle.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
