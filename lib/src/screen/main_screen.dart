import 'package:flutter/material.dart';
import 'package:speedfoodApp/src/admin/page/add_food_item.dart';
import 'package:speedfoodApp/src/scoped-model/food_model.dart';
import 'package:speedfoodApp/src/scoped-model/main_model.dart';
//page 
import '../page/home_page.dart';
import '../page/panier_page.dart';
import '../page/explore_page.dart';
import '../page/profil_page.dart';
import '../page/menus_page.dart';

class MainScreen extends StatefulWidget {

  final MainModel model;

  MainScreen({this.model} );

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTabIndex = 0;

  List<Widget> pages;
  Widget currentPage;

  HomePage homePage;
  PanierPage panierPage;
  ExplorePage explorePage;
  ProfilePage profilePage;
  MenusPage menusPage;

  @override
  void initState(){
    //widget.foodModel.fetchFoods();
     widget.model.fetchFoods();
    
    homePage = HomePage();
    panierPage = PanierPage();
    explorePage = ExplorePage();
    profilePage = ProfilePage();
    menusPage = MenusPage();
    pages = [homePage, panierPage, explorePage, profilePage, menusPage];

    currentPage = homePage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              ListTile(
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => AddFoodItem())
                  );
                },
                leading: Icon(Icons.list),
                title: Text("add food items", style: TextStyle(fontSize: 16.0),),
              )
            ]
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTabIndex,
          onTap: (int index){
            setState((){
              currentTabIndex = index;
              currentPage = pages[index];
            });
          },
          
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              title: Text("Panier"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text("Navigatoin"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
            ), 
          ],
        ),

        body: currentPage,
      ),
    );
  }
}
