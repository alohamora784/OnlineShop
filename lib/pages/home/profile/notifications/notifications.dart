import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartphone_shop/pages/home/profile/notifications/widgets/switchbuton.dart';
import 'package:smartphone_shop/widgets/appbar.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(header: "Notifications", hasIcon: true),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: ListView(
          children: [
            const SizedBox(height: 37),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order status updates",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SwitchButton(),
              ],
            ),
            const SizedBox(height: 18),
            Divider(
              color: Colors.grey.shade300,
              thickness: 1,
            ),
            const SizedBox(height: 18),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Push Notifications",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SwitchButton(),
              ],
            ),
            const SizedBox(height: 16),
            Divider(
              color: Colors.grey.shade300,
              thickness: 1,
            ),
            const SizedBox(height: 18),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Email Notifications",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SwitchButton(),
              ],
            ),
            const SizedBox(height: 16),
            Divider(
              color: Colors.grey.shade300,
              thickness: 1,
            ),
            const SizedBox(height: 18),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discount & Sales",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SwitchButton(),
              ],
            ),
            const SizedBox(height: 16),
            Divider(
              color: Colors.grey.shade300,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
