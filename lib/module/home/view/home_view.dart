import 'package:google_fonts/google_fonts.dart';
import 'package:exam_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:exam_app/core.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          SizedBox(
            height: 100.0,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.email_outlined,
                    color: darkColor,
                    size: 28.0,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_outlined,
                    color: darkColor,
                    size: 28.0,
                  ),
                ),
              ],
            ),
          ),
        ],
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: darkColor,
              size: 28.0,
            ),
          );
        }),
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 48.0,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5.0,
                  ),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        6.0,
                      ),
                    ),
                  ),
                  child: Center(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.grey[800],
                      ),
                      decoration: InputDecoration(
                        helperStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: darkColor),
                        hintText: "Search exam test",
                        prefixIcon: Icon(
                          Icons.search,
                          color: darkColor,
                        ),
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text("Hi, Rivai",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: darkColor)),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text("Here your progress last week",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: greyColor)),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Stack(
                children: [
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: primayPurple),
                  ),
                  SizedBox(
                    height: 100.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                  "You beat 95% of the \nother students",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      color: whiteColor)),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ExamListView()),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Read more",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.poppins(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                        color: whiteColor)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 14,
                    bottom: 1,
                    child: Container(
                      height: 111,
                      width: 136,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        color: thirdPurple,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: Image.asset(
                        "lib/assets/images/human_1.png",
                        width: 138.0,
                        height: 110.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text("Today test",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: darkColor)),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text("Here is your test list for today",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: greyColor)),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 176.0,
                child: ListView.builder(
                  itemCount: controller.examList.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.examList[index];
                    int time = item["time"];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Stack(
                            children: [
                              Container(
                                height: 176.0,
                                width: 144.0,
                                decoration: BoxDecoration(
                                  color: primayPurple,
                                  image: DecorationImage(
                                    image: AssetImage(item["photo"]),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                bottom: 10,
                                child: Container(
                                  height: 92,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: thirdPurple.withOpacity(0.8),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(9.0),
                                          bottomLeft: Radius.circular(9.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(item["subject"],
                                              textAlign: TextAlign.left,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: whiteColor)),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.timer_sharp,
                                              size: 24.0,
                                              color: whiteColor,
                                            ),
                                            const SizedBox(
                                              width: 3.0,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text("$time Minutes",
                                                  textAlign: TextAlign.left,
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: whiteColor)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text("Last exam done",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: darkColor)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 68.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(9.0),
                    ),
                    color: whiteColor),
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
                    "Physics daily quiz",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: darkColor),
                  ),
                  subtitle: Text(
                    "45 Minutes",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: greyColor),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: secondaryPurple,
                    child: Icon(
                      Icons.check,
                      color: thirdPurple,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
