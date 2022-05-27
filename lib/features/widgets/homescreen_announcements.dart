import 'package:flutter/material.dart';
import '../Screens/announcements_detail_page.dart';

class HomescreenAnnouncements extends StatelessWidget {
  const HomescreenAnnouncements({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 150,
        left: 30,
        child: Container(
          width: 320,
          height: 210,
          child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => AnnouncementsDetailPage()),
                      );
                    },
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        height: 100,
                        width: 200,
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Text(
                              'Announcement title',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Text('Subject name'),
                              SizedBox(width: 110),
                              Text('Date')
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
        ));
  }
}
