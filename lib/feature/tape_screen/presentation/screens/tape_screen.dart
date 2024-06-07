import 'package:flutter/material.dart';
import 'package:test_task/feature/tape_screen/presentation/screens/qr_code_screen.dart';
import 'package:test_task/internal/commons/common_container.dart';
import 'package:test_task/internal/commons/common_text_field.dart';
import 'package:test_task/internal/theme/text_theme.dart';
import 'package:test_task/internal/theme/theme_helper.dart';

class TapeScreen extends StatelessWidget {
  const TapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> title = ['Вакансии', 'Маркет', 'Цветы', 'Кофе'];

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CommonTextField(
                  hintText: 'Искать в Malina',
                  prefixIcon: Icon(
                    Icons.search,
                    color: ThemeHelper.darkGrey,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 90,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const QrCodeScreen(),
                        ),
                      );
                    },
                    child: CommonContainer(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 11,
                      ),
                      color: ThemeHelper.red,
                      child: Row(
                        children: [
                          Image.asset('assets/images/qr.png'),
                          const SizedBox(width: 5.5),
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
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  child: CommonContainer(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 23,
                    ),
                    assetImage: 'assets/images/food_image.png',
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 0,
                          child: Text(
                            'Еда',
                            overflow: TextOverflow.visible,
                            style: TextHelper.sProDisplayMedium22,
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: 95,
                            child: Text(
                              'Из кафе и ресторанов',
                              overflow: TextOverflow.visible,
                              style: TextHelper.sProDisplayMedium16w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  child: CommonContainer(
                    //картинка свой цвет не берет, с белым фоном скачивается
                    color: const Color(0xffFFDEDE),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 23,
                    ),
                    assetImage: 'assets/images/beauty.jpg',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 0,
                          child: Text(
                            'Бьюти',
                            overflow: TextOverflow.visible,
                            style: TextHelper.sProDisplayMedium22,
                          ),
                        ),
                        SizedBox(
                          width: 140,
                          child: Expanded(
                            child: Text(
                              'Салоны красоты и товары',
                              overflow: TextOverflow.visible,
                              style: TextHelper.sProDisplayMedium16w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Скоро в Malina',
                  style: TextHelper.sProDisplayMedium17w500,
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 86,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: title.length,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.bottomCenter,
                        width: 86,
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.only(bottom: 6),
                        decoration: BoxDecoration(
                          color: ThemeHelper
                              .colors[index % ThemeHelper.colors.length],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          title[index],
                          style: TextHelper.sProDisplayMedium12w400,
                        ),
                      );
                    },
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
