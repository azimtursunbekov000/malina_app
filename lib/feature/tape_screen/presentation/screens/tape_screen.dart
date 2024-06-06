import 'package:flutter/material.dart';
import 'package:test_task/internal/commons/common_container.dart';
import 'package:test_task/internal/commons/common_text_field.dart';
import 'package:test_task/internal/theme/text_theme.dart';
import 'package:test_task/internal/theme/theme_helper.dart';

class TapeScreen extends StatelessWidget {
  const TapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeHelper.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CommonTextField(
                  hintText: 'Искать в Malina',
                  prefixIcon: Icon(
                    Icons.search,
                    color: ThemeHelper.darkGrey,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 90,
                  child: CommonContainer(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 11,
                    ),
                    color: ThemeHelper.red,
                    child: Row(
                      children: [
                        Image.asset('assets/images/qr.png'),
                        SizedBox(width: 5.5),
                        Expanded(
                          child: Text(
                            'Сканируй QR-код и заказывай прямо в заведении',
                            overflow: TextOverflow.visible,
                            style: TextHelper.sProDisplayMedium16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
