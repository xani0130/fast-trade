
class BitCoinsDetails {
  BitCoinsDetails({this.bitCoinsdetailsList});

  final List<CoinsList>? bitCoinsdetailsList;
}

class CoinsList {
  CoinsList(
      {this.title, this.currency, this.image, this.InDecPercent, this.tradepercent,this.isColor});
  final String? title;
  final String? currency;
  final String? image;
  final bool? isColor;
  final String? tradepercent;
  final String? InDecPercent;
}

class CoinsData {
  List<BitCoinsDetails> CoinsDatadetails = [
    BitCoinsDetails(
      bitCoinsdetailsList: [
        CoinsList(
            image: 'assets/icons/BTC.png',
            title: 'BTC',
            currency: '/USDT',
            tradepercent: '14231.15',
            InDecPercent: '+0.31%',
        isColor: false),

        CoinsList(
            image: 'assets/icons/ETH.png',
            title: 'ETH',
            currency: '/USDT',
            tradepercent: '14231.15',
            InDecPercent: '+1.33%',
            isColor: false),
        CoinsList(
            image: 'assets/icons/binance.png',
            title: 'BNB',
            currency: '/USDT',
            tradepercent: '12200.15',
            InDecPercent: '-1.21%',
            isColor: true),
        CoinsList(
            image: 'assets/icons/BTC.png',
            title: 'BTC',
            currency: '/USDT',
            tradepercent: '14231.15',
            InDecPercent: '+0.31%',
            isColor: false),
        CoinsList(
            image: 'assets/icons/ETH.png',
            title: 'ETH',
            currency: '/USDT',
            tradepercent: '14231.15',
            InDecPercent: '+1.33%',
            isColor: true),
        CoinsList(
            image: 'assets/icons/binance.png',
            title: 'BNB',
            currency: '/USDT',
            tradepercent: '12200.15',
            InDecPercent: '-1.21%',
            isColor: false),
      ],
    ),
  ];
}
