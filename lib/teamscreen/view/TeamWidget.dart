import 'package:flutter/material.dart';
import '../../../../../Utilities/styles.dart';
import '../Model/TeamModel.dart';

class TeamWidget extends StatelessWidget {
  const TeamWidget(
      {Key? key, required this.teamdetail,})
      : super(key: key);
  final TeamDetails teamdetail;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Account",style: TextStyle(color: white,fontSize: 16),),
                  Text("VIP",style: TextStyle(color: white,fontSize: 16),),
                  Text("Reg.Time",style: TextStyle(color: white,fontSize: 14),)
                ],
              ),
              SizedBox(
                height: height * 0.02,
                ),
              ListView.builder(
                controller: ScrollController(),
                itemCount: teamdetail.teamDataList?.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage(
                                  (teamdetail.teamDataList?[index].image)
                                      .toString(),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Expanded(
                                child: Text(
                                  (teamdetail.teamDataList?[index].title)
                                      .toString(),
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.25,
                        ),
                        Image.asset(
                          (teamdetail
                              .teamDataList?[index].IconImage)
                              .toString(),
                          scale: 4,
                        ),
                        SizedBox(
                          width: width * 0.25,
                        ),
                        Expanded(
                          child: Text(
                            (teamdetail
                                .teamDataList?[index].InDecPercent)
                                .toString(),
                            style: TextStyle(color: offline.withOpacity(0.8),fontSize: 10),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
