import 'package:flutter/material.dart';
import 'package:my_app/data.dart';
void main() => runApp(MaterialApp(home: UiScreen()));



class UiScreen extends StatelessWidget{
  List<MapData> MapToMapDataClass(){
    return dataList.map((e) => MapData(e)).toList();
  }

  List<Widget> DataClassToDataWidget(){
    List<MapData> mapData = MapToMapDataClass();
    List<Widget> dataWidget = mapData.map((e) => DataWidget(e)).toList();
    return dataWidget;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: DataClassToDataWidget(),
        ),
      ),
    );
  }
}

class DataWidget extends StatelessWidget{
  MapData mapData;
  DataWidget(this.mapData);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          child: 
            Image.network(
              mapData.mainImage ?? '',
              height: 530,
            ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20,20,20,10),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text("Nusa Pendia",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5,20,5,10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(mapData.nusaPendia ?? 'no content'),
                ),
              )
            ],
          ),
        ),
        Container(
        margin: const EdgeInsets.fromLTRB(20,0,20,0),
        child:Column(children:
        [
          const Align(
            alignment: Alignment.topLeft,
            child: 
            Text("Picture",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              ...mapData.images?.map((e) { 
                return Container(
                  margin: const EdgeInsets.fromLTRB(5,20,5,20),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child:
                      Image.network(
                        e,
                        width: 50.0,
                      ),
                    )
                )
                ;}).toList() ??[]
            ]
          )
        ]),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20,10,20,20),
          child:
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'More in Bail >',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            )
        ),
      ],
    );
  }
}

class MapData{
  String? mainImage;
  String? nusaPendia;
  List<String>? images;
  MapData(Map map){
    mainImage = map["main-image"];
    nusaPendia = map["nusa-pendia"];
    images = map["images"];
  }
}