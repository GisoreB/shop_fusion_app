import '../../../widgets/default_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/asset_constants.dart' as asset;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar('Profile'),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: Stack(children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2021/04/25/14/30/man-6206540_1280.jpg"),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          )),
                    )
                  ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Andrew Ainsley',
                  style: asset.introStyles(24),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                    child: ListView(
                      children: [
                        setting_btn("Edit Profile", Icons.person),
                        setting_btn("Address", Icons.location_pin),
                        setting_btn("Notification", Icons.notification_add),
                        setting_btn("Payment", Icons.payment),
                        setting_btn("Security", Icons.security),
                        setting_btn("Language", Icons.language),
                        setting_btn("Dark Mode", Icons.remove_red_eye_outlined),
                        setting_btn("Privacy Policy", Icons.lock_outline_rounded),
                        setting_btn("Help Center", Icons.help),
                        setting_btn("Invite Friends", Icons.group_add_outlined),
                        ListTile(
                          minLeadingWidth: 0,
                          leading: Icon(Icons.logout_rounded,
                              size: 30, color: Colors.red.shade300),
                          title: Text(
                            'Logout',
                            style:
                            asset.introStyles(18, color: Colors.red.shade300),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ));
  }

  ListTile setting_btn(
      String title,
      IconData leadingIcon,
      ) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: -2),
      minLeadingWidth: 0,
      leading: Icon(
        leadingIcon,
        size: 24,
        color: Colors.black54,
      ),
      title: Text(
        title,
        style: asset.introStyles(18),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.black54,
      ),
    );
  }
}