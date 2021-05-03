import 'package:my_uvs/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class StudentResultat extends StatefulWidget {
  @override
  _StudentResultat createState() => _StudentResultat ();
}

class _StudentResultat extends State<StudentResultat> {
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
                title: new Text('Souleymane Mes Notes',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 22.0)),
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
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'Mes Notes Annuelles et Semestrielles',
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
                                  "Code(UE)",
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                numeric: false,
                                tooltip: "This is First Name",

                              ),
                              DataColumn(
                                label: Text(
                                  "Nbre Crdit(UE)",
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                numeric: false,
                                tooltip: "This is Last Name",
                              ),
                              DataColumn(
                                label: Text(
                                  "Moyenne(UE)",
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                numeric: true,

                              ),
                              DataColumn(
                                label: Text(
                                  "Ressultat(UE)",
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                numeric: false,
                              ),
                            ],
                          rows: const <DataRow>[
                          DataRow(
                            selected: true,
                              cells: <DataCell>[
                                DataCell(Text('MRIV531')),
                                DataCell(Text('3')),
                                DataCell(Text('8')),
                                DataCell(Text('Non Validé')),
                              ],
                            ),
                            DataRow(


                              cells: <DataCell>[
                                DataCell(Text('MRIV532')),
                                DataCell(Text('8')),
                                DataCell(Text('15')),
                                DataCell(Text('Validé')),
                              ],
                            ),
                              DataRow(
                                selected: true,
                          cells: <DataCell>[
                          DataCell(Text('MRIV532')),
                    DataCell(Text('8')),
                    DataCell(Text('15')),
                    DataCell(Text('Validé')),
                    ],
                  ),

                        DataRow(
                            cells: <DataCell>[
                              DataCell(Text('MRIV534')),
                              DataCell(Text('9')),
                              DataCell(Text('14')),
                              DataCell(Text('Validé')),
                            ],
                          ),
                        ]
                      )
                  ),
                  )
                )
              ],

            ),
          ),


        )

    );
  }
}
