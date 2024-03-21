class WalletCoinsDetails {
  WalletCoinsDetails({this.walletCoinsdetailsList});

  final List<WalletList>? walletCoinsdetailsList;
}

class WalletList {
  WalletList(
      {this.title,
      this.currency,
      this.image,
      this.InDecPercent,
      this.tradepercent,
      });
  final String? title;
  final String? currency;
  final String? image;
  final String? tradepercent;
  final String? InDecPercent;
}

class WalletData {
  List<WalletCoinsDetails> WalletDatadetails = [
    WalletCoinsDetails(
      walletCoinsdetailsList: [
        WalletList(
            image: 'assets/icons/BTC.png',
            title: 'BTC',
            currency: '/USDT',
            tradepercent: '14231.15',
            InDecPercent: 'Yesterday',
          ),
        WalletList(
            image: 'assets/icons/ETH.png',
            title: 'ETH',
            currency: '/USDT',
            tradepercent: '14231.15',
            InDecPercent: '14.03.23',
       ),
        WalletList(
            image: 'assets/icons/BNB.png',
            title: 'BTC',
            currency: '/USDT',
            tradepercent: '12200.15',
            InDecPercent: '19.09.22',
           ),
        WalletList(
            image: 'assets/icons/BTC.png',
            title: 'BTC',
            currency: '/USDT',
            tradepercent: '14231.15',
            InDecPercent: '12.12.23',
     ),
        WalletList(
            image: 'assets/icons/ETH.png',
            title: 'ETH',
            currency: '/USDT',
            tradepercent: '14231.15',
            InDecPercent: '01.07.22',
          ),
        WalletList(
            image: 'assets/icons/BNB.png',
            title: 'BTC',
            currency: '/USDT',
            tradepercent: '12200.15',
            InDecPercent: '18.03.23',
            ),
      ],
    ),
  ];
}
