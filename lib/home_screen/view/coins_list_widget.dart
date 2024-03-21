import 'package:flutter/material.dart';
import '../../Utilities/styles.dart';
import '../Model/CoinsdataModel.dart';

class CoinDetailWidget extends StatelessWidget {
  const CoinDetailWidget(
      {Key? key, required this.dailycoinsdetail,})
      : super(key: key);
  final BitCoinsDetails dailycoinsdetail;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          controller: ScrollController(),
          itemCount: dailycoinsdetail.bitCoinsdetailsList?.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(
                        (dailycoinsdetail.bitCoinsdetailsList?[index].image)
                            .toString(),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text(
                      (dailycoinsdetail.bitCoinsdetailsList?[index].title)
                          .toString(),
                      style: TextStyle(
                        color: white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      (dailycoinsdetail.bitCoinsdetailsList?[index].currency)
                          .toString(),
                      style: TextStyle(color: gray, fontSize: 8),
                      textAlign: TextAlign.left,
                    ),
                    Spacer(),
                    Text(
                      (dailycoinsdetail
                              .bitCoinsdetailsList?[index].tradepercent)
                          .toString(),
                      style: TextStyle(
                          color: (dailycoinsdetail
                                      .bitCoinsdetailsList?[index].isColor) ==
                                  false
                              ? termsCheckBox
                              : tradingratio),
                      textAlign: TextAlign.left,
                    ),
                    Spacer(),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 4, bottom: 4, left: 8, right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: (dailycoinsdetail
                            .bitCoinsdetailsList?[index].isColor) ==
                            false
                            ? termsCheckBox
                            : tradingratio,
                      ),
                      child: Center(
                        child: Text(
                          (dailycoinsdetail
                                  .bitCoinsdetailsList?[index].InDecPercent)
                              .toString(),
                          style: TextStyle(color: white),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
