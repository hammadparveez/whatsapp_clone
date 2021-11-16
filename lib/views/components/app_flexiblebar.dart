import 'package:flutter/material.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/strings.dart';
import 'package:whatsapp_clone/views/components/custom_icon_button.dart';

class AppFlexibleBar extends StatelessWidget {
  const AppFlexibleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Padding(
        padding: const EdgeInsets.fromLTRB(
            NavigationToolbar.kMiddleSpacing, 0, 8, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppStrings.appTitle,
                style: Theme.of(context).textTheme.headline6),
            Row(
              children: [
                CustomIconButton(
                    onTap: () {},
                    icon: const Icon(
                      Icons.search,
                      color: kWhiteColor,
                    )),
                CustomIconButton(
                    onTap: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: kWhiteColor,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
