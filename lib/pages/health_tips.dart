import 'package:dr_derm_frontend/models/health_tip_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'bottom_nav.dart';

class HealthTipsPage extends StatefulWidget {
  const HealthTipsPage({super.key});

  @override
  State<HealthTipsPage> createState() => _HealthTipsPageState();
}

class _HealthTipsPageState extends State<HealthTipsPage> {
  List<HealthTipModel> healthTips = [];

  void _getHealthTips() {
    healthTips = HealthTipModel.getHealthTips();
  }

  @override
  Widget build(BuildContext context) {
    _getHealthTips();
    return Scaffold(
      appBar: appBar(context),
      body: body(),
    );
  }

  Container body(){
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25),
      color: const Color(0xff0a0c16),
      child: ListView.separated(
        itemCount: healthTips.length,
        separatorBuilder: (context, index) => const SizedBox(height: 25,),
        itemBuilder: (context, index){
          return InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Center(
                    child: Container(
                      height: 25,
                      width: 25,
                      color: Colors.black,
                    )
                  ),
                ),
              );
            },
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: healthTips[index].boxColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: SvgPicture.asset(healthTips[index].imageUrl,),
                        ),
                      ),
                      SizedBox(
                        width: 180,
                        child: Text(
                          healthTips[index].title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 90,
                        width: 280,
                        padding: const EdgeInsets.only(left: 10, right: 5),
                        child: Text(
                          healthTips[index].description,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          color: Color(0xff0a0c16),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(19),
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/double-arrow-right.svg',
                          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  AppBar appBar(context) {
    return AppBar(
      title: const Text(
        'Health Tips',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      toolbarHeight: 100,
      centerTitle: true,
      backgroundColor: const Color(0xff0a0c16),
      elevation: 0,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> const BottomNavBar())
          );
        },
        child: Container(
          margin: const EdgeInsets.only(left: 35),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
          ),
          child: SvgPicture.asset(
            'assets/icons/double-arrow-left.svg',
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
