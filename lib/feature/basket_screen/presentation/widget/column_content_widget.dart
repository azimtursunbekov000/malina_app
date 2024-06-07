import 'package:flutter/material.dart';
import 'package:test_task/internal/commons/common_container.dart';
import 'package:test_task/internal/theme/text_theme.dart';
import 'package:test_task/internal/theme/theme_helper.dart';

class ColumnContentWidget extends StatelessWidget {
  final String title;
  final String description;

  const ColumnContentWidget({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    const int total = 1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextHelper.sProDisplayMedium16w300,
        ),
        SizedBox(
          width: 150,
          child: Text(
            description,
            style: TextHelper.sProDisplayMedium12w400Grey,
            overflow: TextOverflow.visible,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            CommonContainer(
              width: 34,
              height: 34,
              color: ThemeHelper.whiteGrey,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.remove,
                  size: 13,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Text(
              total.toString(),
              style: TextHelper.sProDisplayMedium17w500,
            ),
            const SizedBox(width: 15),
            CommonContainer(
              width: 34,
              height: 34,
              color: ThemeHelper.whiteGrey,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 13,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
