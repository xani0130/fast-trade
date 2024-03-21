class TeamDetails {
  TeamDetails({this.teamDataList});

  final List<TeamList>? teamDataList;
}

class TeamList {
  TeamList(
      {this.title,
        this.image,
        this.InDecPercent,
        this.IconImage,
      });
  final String? title;
  final String? image;
  final String? IconImage;
  final String? InDecPercent;
}

class TeamData {
  List<TeamDetails> teamserviceDatadetails = [
    TeamDetails(
      teamDataList: [
        TeamList(
          image: 'assets/images/person.jfif',
          title: 'Elen duke',
          IconImage: 'assets/icons/crown.png',
          InDecPercent: 'Yesterday',
        ),
        TeamList(
          image: 'assets/images/person.jfif',
          title: 'Alizabbeth',
          IconImage: 'assets/icons/cross.png',
          InDecPercent: '2 min ago',
        ),
        TeamList(
          image: 'assets/images/person.jfif',
          title: 'Goven',
          IconImage: 'assets/icons/crown.png',
          InDecPercent: '2 days ago',
        ),
        TeamList(
          image: 'assets/images/person.jfif',
          title: 'Simon Boi',
          IconImage: 'assets/icons/cross.png',
          InDecPercent: 'A week ago',
        ),
        TeamList(
          image: 'assets/images/person.jfif',
          title: 'John Robert',
          IconImage: 'assets/icons/crown.png',
          InDecPercent: '02 year ago',
        ),
        TeamList(
          image: 'assets/images/person.jfif',
          title: 'Tina Silver',
          IconImage: 'assets/icons/cross.png',
          InDecPercent: '05 year ago',
        ),
      ],
    ),
  ];
}
