import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:straggery_project2/screen/staggered_app/provider/staggered_provider.dart';

class staggered_screen extends StatefulWidget {
  const staggered_screen({Key? key}) : super(key: key);

  @override
  State<staggered_screen> createState() => _staggered_screenState();
}
Home_provider?home_providertrue,home_providerfalse;
class _staggered_screenState extends State<staggered_screen> {
  @override
  Widget build(BuildContext context) {
    home_providerfalse=Provider.of<Home_provider>(context,listen: false);
    home_providertrue=Provider.of<Home_provider>(context,listen: true);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Straged Grid View"),
        centerTitle: true,
      ),
      body: GridView.custom(
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          pattern: [
            WovenGridTile(1),
            WovenGridTile(
              5 / 7,
              crossAxisRatio: 0.9,
              alignment: AlignmentDirectional.centerEnd,
            ),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: 5,
          (context, index) => Tile(index: index),
        ),
      ),
    ),
    );
  }

  Tile({required int index}) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.black38,
      child: Image.asset(
        "${home_providerfalse!.Images[index]}",
        fit: BoxFit.cover,
      ),
    );
  }
}
