import 'package:flutter/material.dart';

import '../../../../core/assets.dart';
import '../../../../core/theme.dart';
import '../../../../core/widgets/item_card.dart';
import '../../../../core/widgets/padding.dart';
import '../../../../core/widgets/text.dart';

class HomeNews extends StatelessWidget {
  const HomeNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CPadding(
        padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CText(
                  "Todays News",
                  style: CFonts.inter(7, 16, black),
                ),
                CText(
                  "Lihat Semua",
                  style: CFonts.inter(7, 14, primary),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (_, index) {
                return CItemCard(
                  onTap: () {},
                  image: imgNews,
                  title: "Menuju Pertanian yang Efisian dan Berkelanjutan",
                  author: "Linggar Amanda",
                  date: "22/01/2023",
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
