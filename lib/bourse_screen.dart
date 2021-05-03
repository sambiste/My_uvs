import 'package:my_uvs/app_theme.dart';
import 'package:flutter/material.dart';

class SamaBourse extends StatefulWidget {
  @override
  _InviteFriendState createState() => _InviteFriendState();
}

class _InviteFriendState extends State<SamaBourse> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
              title: new Text('Sama Bourse',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 22.0)),
              elevation: 2.0,
              backgroundColor: Colors.white60,
              actions: <Widget>
              [
                FlatButton(
                  textColor: Colors.black45,
                  onPressed: () {},
                  child: Icon(Icons.person),
                  shape: CircleBorder(side: BorderSide(color: Colors.transparent)),

                ),
              ]
          ),

          backgroundColor: AppTheme.nearlyWhite,
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    left: 16,
                    right: 16),
                child: Image.asset('assets/images/bourse.jpg'),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'Sama Bourse',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
        Container(
    child: SingleChildScrollView(
               scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
               child: DataTable(
              dataRowHeight: 50,
              dividerThickness: 5,

             columns: [
            DataColumn(
                   label: Text(
                          "#",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                             color: Colors.deepOrange,
                        ),
                     ),
                      numeric: false,
                      tooltip: "This is First Name",

                      ),
                     DataColumn(
    label: Text(
    "Année Scolaire",
    style: TextStyle(
    fontStyle: FontStyle.italic,
    color: Colors.deepOrange,
    ),
    ),
    numeric: false,
    tooltip: "This is Last Name",
    ),
    DataColumn(
    label: Text(
    "Mois",
    style: TextStyle(
    fontStyle: FontStyle.italic,
    color: Colors.deepOrange,
    ),
    ),
    numeric: true,

    ),
    DataColumn(
    label: Text(
    "Montant",
    style: TextStyle(
    fontStyle: FontStyle.italic,
    color: Colors.deepOrange,
    ),
    ),
    numeric: false,
    ),
    ],
    rows: [
    DataRow(
    cells: [
    DataCell(
    Text("0"),
    ),
    DataCell(
    Text("2020-2021"),
    ),
    DataCell(
    Text("Janvier"),
    ),
    DataCell(
    Text("40 000"),
    ),
    ]),
    DataRow(
    cells: [
    DataCell(
    Text("1"),
    ),
    DataCell(
    Text("2020-2021"),
    ),
    DataCell(
    Text("Fevrier"),
    ),
    DataCell(
    Text("40 000"),
    ),
    ]),
    DataRow(
    cells: [
    DataCell(
    Text("2"),
    ),
    DataCell(
    Text("2020-2021"),
    ),
    DataCell(
    Text("Mars"),
    ),
    DataCell(
    Text("40 000"),
    ),
    ]),
    DataRow(
    cells: [
    DataCell(
    Text("4"),
    ),
    DataCell(
    Text("2020-2021"),
    ),
    DataCell(
    Text("Avril"
    ),
    ),
    DataCell(
    Text("40 000"),
    ),
    ]),
    ]),

    )
                           ),

                      )
                     ],

                   ),
                ),


              )

    );
  }
}
