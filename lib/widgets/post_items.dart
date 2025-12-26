import 'package:flutter/material.dart';
// import 'package:flutter_full_course/config/app_config.dart';
// import 'package:flutter_full_course/config/app_routes.dart';
// import 'package:flutter_full_course/data/model/post.dart';
import 'package:two_gather/styles/appText.dart';

class PostItem extends StatelessWidget {
  // final Post post;
  // const PostItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {

    double _responsive(num) {
      final width = MediaQuery.widthOf(context);
      final ratio = width / 360;
      return num * ratio;
    }

    return GestureDetector(
      onTap: () {
        // Navigator.of(context).pushNamed(AppRoutes.user);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/temp/user1.png',
                  width: _responsive(40),
                  height: _responsive(40),
                ),
                SizedBox(
                  width: _responsive(16),
                ),
                // Text(
                //   '${post.owner?.firstname} ${post.owner?.lastname}',
                //   style: AppText.subtitle3,
                // ),
              ],
            ),
            // if (post.image != null) ...[
            //   SizedBox(
            //     height: 12,
            //   ),
            //   // Image.network('${AppConfig.baseUrl}${post.image}'),
            // ],
            SizedBox(
              height: 12,
            ),
            // Text(
            //   post.message ?? '',
            //   style: AppText.subtitle3,
            // )
          ],
        ),
      ),
    );
  }
}