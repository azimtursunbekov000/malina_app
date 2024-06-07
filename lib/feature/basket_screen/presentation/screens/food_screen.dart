import 'package:flutter/material.dart';
import 'package:test_task/feature/basket_screen/presentation/widget/column_content_widget.dart';
import 'package:test_task/internal/commons/common_container.dart';
import 'package:test_task/internal/commons/common_tab_bar.dart';
import 'package:test_task/internal/theme/text_theme.dart';
import 'package:test_task/internal/theme/theme_helper.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  bool isDeliverySelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeHelper.backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ThemeHelper.backgroundColor,
        leadingWidth: 130,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
            Text(
              'Корзина',
              style: TextHelper.sProDisplayMedium20w700,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Очистить',
                style: TextHelper.sProDisplayMedium14w400,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonTabBar(
                    text: 'Доставка',
                    selectedColor: const Color(0xFFF72055),
                    unselectedColor: Colors.white,
                    selected: isDeliverySelected,
                    onSelected: () {
                      setState(() {
                        isDeliverySelected = true;
                      });
                    },
                  ),
                  CommonTabBar(
                    text: 'В заведении',
                    selectedColor: const Color(0xFFF72055),
                    unselectedColor: Colors.white,
                    selected: !isDeliverySelected,
                    onSelected: () {
                      setState(() {
                        isDeliverySelected = false;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              ListView.separated(
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return CommonContainer(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 16.5,
                    ),
                    color: ThemeHelper.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Text(
                                  'Bellagio Coffee',
                                  style: TextHelper.sProDisplayMedium16w400,
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: ThemeHelper.blackGrey,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(color: ThemeHelper.whiteGrey),
                        const SizedBox(height: 15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 101,
                              height: 101,
                              decoration: BoxDecoration(
                                color: ThemeHelper.backgroundColor,
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/pizza.png'),
                                ),
                              ),
                            ),
                            const SizedBox(width: 13),
                            const ColumnContentWidget(
                              title: 'Том ям',
                              description: 'Пицца с соусом том ям 230 гр',
                              price: '250 C',
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  '250 c',
                                  style: TextHelper.sProDisplayMedium16w300,
                                ),
                                const SizedBox(height: 45),
                                CommonContainer(
                                  width: 34,
                                  height: 34,
                                  color: ThemeHelper.whiteGrey,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.delete,
                                      size: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          height: 50,
                          child: InkWell(
                            onTap: () {},
                            child: CommonContainer(
                              color: ThemeHelper.whiteGrey,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.add_circle_outline_sharp,
                                    size: 30,
                                    color: Colors.green,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'Добавки',
                                    style: TextHelper.sProDisplayMedium16w300,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 50,
                          child: InkWell(
                            onTap: () {},
                            child: CommonContainer(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              color: ThemeHelper.red,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Заказать',
                                    style: TextHelper.sProDisplayMedium16,
                                  ),
                                  Text(
                                    '250 С',
                                    style: TextHelper.sProDisplayMedium16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 20);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
