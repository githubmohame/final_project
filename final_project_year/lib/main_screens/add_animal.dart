import 'package:final_project_year/bloc/choice/cubit/choice_cubit.dart';
import 'package:final_project_year/common_component/main_diwer.dart';
import 'package:final_project_year/main_screens/screen_location/screen_gavernorate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ScreenAddAnimal extends StatelessWidget {
  const ScreenAddAnimal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('تعديل في النوع',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          Container(
            child: BlocProvider(
              create: (context) =>
                  ChoiceCubit(city: 0, gavernorate: 0, village: 0),
              child: SelectGavernorate(title: 'النوع'),
            ),
          ),
          const TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: "تعديل الاسم",
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 5)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2)),
                  focusColor: Colors.brown,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2)))),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(200, 50)),
                    shape: MaterialStateProperty.resolveWith((states) =>
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.grey),
                    overlayColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.red)),
                onPressed: () {},
                child: const Text(
                  "مسح",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(200, 50)),
                    shape: MaterialStateProperty.resolveWith((states) =>
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.grey),
                    overlayColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.brown)),
                onPressed: () {},
                child: const Text(
                  "حفظ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}




class ScreenAddAnimalSubtype extends StatelessWidget {
  const ScreenAddAnimalSubtype({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('تعديل في الفصيلة',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          Container(
            child: BlocProvider(
              create: (context) =>
                  ChoiceCubit(city: 0, gavernorate: 0, village: 0),
              child: SelectCity(titles: ['النوع','الفصيلة'],list: [
                    {"id": 0, "name": "اسيوط"},
                    {"id": 1, "name": "القاهرة"},
                    {"id": 2, "name": "المنةفية"}
                  ],),
            ),
          ),
          const TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: "تعديل الاسم",
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 5)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2)),
                  focusColor: Colors.brown,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2)))),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(200, 50)),
                    shape: MaterialStateProperty.resolveWith((states) =>
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.grey),
                    overlayColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.red)),
                onPressed: () {},
                child: const Text(
                  "مسح",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(200, 50)),
                    shape: MaterialStateProperty.resolveWith((states) =>
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.grey),
                    overlayColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.brown)),
                onPressed: () {},
                child: const Text(
                  "حفظ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class UpdateAnimal extends StatefulWidget {
  UpdateAnimal({Key? key}) : super(key: key);

  @override
  State<UpdateAnimal> createState() => _UpdateAnimalState();
}

class _UpdateAnimalState extends State<UpdateAnimal> {
  List<Widget> list = [const ScreenAddAnimal(),  const ScreenAddAnimalSubtype()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
      child: Container(decoration:BoxDecoration(color: Colors.transparent,image: DecorationImage(fit: BoxFit.cover,image: AssetImage('assets/images/farm.jpg'))),
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(backgroundColor: Color.fromARGB(255, 202, 197, 197).withOpacity(0.5),unselectedItemColor: Colors.white,
              currentIndex: index,
              onTap: (value) {
                setState(() {
                  index = value;
                });
              },selectedItemColor: Colors.white,selectedLabelStyle: const TextStyle(  color: Colors.brown,fontSize: 20),
              items: [
                BottomNavigationBarItem(
                  label: 'تعديل النوع',
                  icon: Container()
                ),
                BottomNavigationBarItem(
                  label: "تعديل الفصيلة",
                  icon:Container(),
                ),
              ]),
          backgroundColor: Colors.transparent,
          appBar: AppBar(title:const Text("تعديل الفصيلة او النوع"),elevation: 0, backgroundColor: Colors.transparent),
          drawer: MainDrawer(index: 7),
          body: list[index],
        ),
      ),
    );
  }
}
