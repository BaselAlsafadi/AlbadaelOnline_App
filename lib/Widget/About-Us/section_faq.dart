import 'package:albadael/Constant/api_connection.dart';
import 'package:albadael/Models/About-Us/autogenerated_about-us.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Section_Faq extends StatefulWidget {
  const Section_Faq({Key? key}) : super(key: key);

  @override
  _Section_FaqState createState() => _Section_FaqState();
}

// ignore: camel_case_types
class _Section_FaqState extends State<Section_Faq> {
  late Future<Autogenerated_team?> datateam;
  @override
  void initState() {
    super.initState();
    datateam = getdatateam();
  }

  bool visibile1 = false;
  bool visibile2 = false;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Autogenerated_team?>(
        future: datateam,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  primary: false,
                  shrinkWrap: true,
                  itemCount: snapshot.data!.data.partner.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Card(
                          margin: EdgeInsets.all(5),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                snapshot.data!.data.faq[index].id == 6
                                    ? visibile1 = !visibile1
                                    : snapshot.data!.data.faq[index].id == 7
                                        ? visibile2 = !visibile2
                                        : visibile2 = !visibile2;
                              });
                            },
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color(0xff1daad2),
                                //  Color(0xff2c4755),
                                child: Text(
                                  snapshot.data!.data.faq[index].id.toString(),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              title: Text(
                                snapshot.data!.data.faq[index].question,
                                style: TextStyle(color: Color(0xff2c4755)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Visibility(
                              visible: snapshot.data!.data.faq[index].id == 6
                                  ? visibile1
                                  : visibile2,
                              child:
                                  Text(snapshot.data!.data.faq[index].answer)),
                        )
                      ],
                    );
                  }),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(
              child: Container(
            height: MediaQuery.of(context).size.height / 50,
            width: MediaQuery.of(context).size.width / 4,
          ));
        });
  }
}
