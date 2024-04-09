import 'package:child_care/components/AppBarWidget.dart';
import 'package:child_care/components/CategoriesWidget.dart';
import 'package:child_care/components/PopularPlacesWidget.dart';
import 'package:child_care/components/businessesWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
@override
Widget build(BuildContext context){

return Scaffold(
  body: ListView(
    children: [
      AppBarWidget(),

      Padding(padding: EdgeInsets.symmetric(
        vertical: 10,
       horizontal: 15,
       ),
       child: Container(
        width: double.infinity,
        height: 50,
        decoration:BoxDecoration(
          color:Colors.white ,
          borderRadius: BorderRadius.circular(20),
           boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10, 
                offset: Offset(0, 3),
              )
            ],
        ),
        child: Padding(padding: EdgeInsets.symmetric(
          horizontal: 10,),
          child: Row(children: [
            Icon(CupertinoIcons.search,
            color: Colors.red, ),
            Container(
              height: 50,
              width: 300,
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 15,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "What place would you like to find?",
                  border: InputBorder.none,

                ),
              ),
              ),
            ),
            Icon(Icons.filter_list),
          ],),
          ),
       
       ),
       ),

       Padding(padding: EdgeInsets.only(top:20, left: 10), 
       child: Text("categories", 
       style: TextStyle(
      fontWeight: FontWeight.bold, fontSize: 20, ), 
        ),
       ),

        CategoriesWidget(

        ),

        Padding(padding: EdgeInsets.only(top:20, left: 10), 
       child: Text("popular places", 
       style: TextStyle(
      fontWeight: FontWeight.bold, fontSize: 20, ), 
        ),
       ),

       PopularPlacesWidget(
        
       ),

       Padding(padding: EdgeInsets.only(top:20, left: 10), 
       child: Text("All businesses ", 
       style: TextStyle(
      fontWeight: FontWeight.bold, fontSize: 20, ), 
        ),
       ),

        businessesWidget(

        ),




    ],
  ),

);


}

}