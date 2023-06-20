import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:exam_app/constant/colors.dart';
import 'package:exam_app/core.dart';

class ExamListView extends StatefulWidget {
  const ExamListView({Key? key}) : super(key: key);

  Widget build(context, ExamListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: thirdPurple,
        elevation: 0.0,
        title: Text("All Exam",
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: whiteColor)),
        actions: [
          SizedBox(
            height: 100.0,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.email_outlined,
                    color: whiteColor,
                    size: 28.0,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LeaderboardView()),
                    );
                  },
                  icon: Icon(
                    Icons.notifications_none_outlined,
                    color: whiteColor,
                    size: 28.0,
                  ),
                ),
              ],
            ),
          ),
        ],
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Builder(builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: whiteColor,
                  size: 28.0,
                ),
              );
            }),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Akhmad Rivai"),
              accountEmail: const Text("contact@rivai.my.id"),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1600486913747-55e5470d6f40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
              ),
              decoration: BoxDecoration(
                color: darkColor,
              ),
              otherAccountsPictures: const [
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: NetworkImage(
                //       "https://randomuser.me/api/portraits/women/74.jpg"),
                // ),
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: NetworkImage(
                //       "https://randomuser.me/api/portraits/men/47.jpg"),
                // ),
              ],
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Setting"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text("Friends"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.support_agent),
              title: const Text("Support"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text("Privacy Policy"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: const Text("Logout"),
              onTap: () {},
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  physics: const ScrollPhysics(),
                  itemCount: controller.englishExam.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.englishExam[index];
                    int time = controller.englishExam[index]["time"];
                    return Card(
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      child: ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(6.0),
                            ),
                            color: primayPurple,
                          ),
                        ),
                        title: Text(
                          item["subject"],
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: darkColor),
                        ),
                        subtitle: Text(
                          "$time Minutes",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: greyColor),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuestionView()),
                            );
                          },
                          child: CircleAvatar(
                            backgroundColor: secondaryPurple,
                            child: Icon(
                              Icons.play_arrow_rounded,
                              color: thirdPurple,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ExamListView> createState() => ExamListController();
}
