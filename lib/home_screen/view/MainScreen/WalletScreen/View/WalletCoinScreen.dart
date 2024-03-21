import 'package:flutter/material.dart';
import '../../../../../Utilities/styles.dart';
import '../Model/WalletModel.dart';

class WalletCoinWidget extends StatelessWidget {
  const WalletCoinWidget(
      {Key? key, required this.dailywalletdetail,})
      : super(key: key);
  final WalletCoinsDetails dailywalletdetail;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          controller: ScrollController(),
          itemCount: dailywalletdetail.walletCoinsdetailsList?.length,
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
                        (dailywalletdetail.walletCoinsdetailsList?[index].image)
                            .toString(),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text(
                      (dailywalletdetail.walletCoinsdetailsList?[index].title)
                          .toString(),
                      style: TextStyle(
                        color: white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      (dailywalletdetail.walletCoinsdetailsList?[index].currency)
                          .toString(),
                      style: TextStyle(color: gray, fontSize: 8),
                      textAlign: TextAlign.left,
                    ),
                    Spacer(),
                    Text(
                      (dailywalletdetail
                          .walletCoinsdetailsList?[index].tradepercent)
                          .toString(),
                      style: TextStyle(
                          color: termsCheckBox
                              ),
                      textAlign: TextAlign.left,
                    ),
                    Spacer(),
                    Text(
                      (dailywalletdetail
                          .walletCoinsdetailsList?[index].InDecPercent)
                          .toString(),
                      style: TextStyle(color: white),
                      textAlign: TextAlign.left,
                    ),
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
