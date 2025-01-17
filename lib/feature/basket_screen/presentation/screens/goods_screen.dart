import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task/feature/basket_screen/presentation/widget/column_content_widget.dart';
import 'package:test_task/internal/commons/common_container.dart';
import 'package:test_task/internal/theme/text_theme.dart';
import 'package:test_task/internal/theme/theme_helper.dart';

class GoodsScreen extends StatelessWidget {
  const GoodsScreen({super.key});

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
      body: Expanded(
        child: ListView.separated(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          shrinkWrap: true,
          itemCount: 4,
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
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, int index) {
                      return CommonContainer(
                        color: Colors.transparent,
                        child: Row(
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
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 10);
                    },
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 50,
                    child: InkWell(
                      onTap: () {},
                      child: CommonContainer(
                        color: ThemeHelper.whiteGrey,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
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
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        color: ThemeHelper.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            return SizedBox(height: 16);
          },
        ),
      ),
    );
  }
}
