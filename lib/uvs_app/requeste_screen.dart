import 'package:flutter/material.dart';

  class RequeteScreen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  title: "PageRequete",
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
  primarySwatch: Colors.blue,
  ),
  home: HomePage(),
  );
  }
  }

  class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {

  String value = "";
  List<DropdownMenuItem<String>> menuitems = List();
  bool disabledropdown = true;

  final web = {
  "1" : "Bourse",
  "2" : "Changement cohorte",
  "3" : "Changement Opérateur",
  };

  final app = {
  "1" : "Bourse",
  "2" : "Bourse",
  "3" : "Bourse",
  };

  final desktop = {
  "1" : "Bourse",
  "2" : "Bourser",
  "3" : "Bourse",
  };

  void populateweb(){
  for(String key in web.keys){
  menuitems.add(DropdownMenuItem<String>(
  child : Center(
  child: Text(
  web[key]
  ),
  ),
  value: web[key],
  ));
  }
  }

  void populateapp(){
  for(String key in app.keys){
  menuitems.add(DropdownMenuItem<String>(
    child : Center(
  child: Text(
  app[key]
  ),
  ),
  value: app[key],
  ));
  }
  }

  void populatedesktop(){
  for(String key in desktop.keys){
  menuitems.add(DropdownMenuItem<String>(
  child : Center(
  child: Text(
  desktop[key]
  ),
  ),
  value: desktop[key],
  ));
  }
  }

  void selected(_value){
  if(_value == "Bourse"){
  menuitems = [];
  populateweb();
  }else if(_value == "Changement cohorte"){
  menuitems = [];
  populateapp();
  }else if(_value == "Changement Opérateur"){
  menuitems = [];
  populatedesktop();
  }
  setState(() {
  value = _value;
  disabledropdown = false;
  });
  }

  void secondselected(_value){
  setState(() {
  value = _value;
  });
  }


    @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text(
  "PageRequete",
  ),
  centerTitle: true,
  ),
  body: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
  DropdownButton<String>(
  items: [
  DropdownMenuItem<String>(
  value: "form Bourse",
  child: Center(
  child: Text("Bourse"),
  ),
  ),
  DropdownMenuItem<String>(
  value: "form cohorte",
  child: Center(
  child: Text("Changement cohorte"),
  ),
  ),
  DropdownMenuItem<String>(
  value: "Changement Opérateur",
  child: Center(
  child: Text("form Opérateur"),
  ),
  ),
    DropdownMenuItem<String>(
      value: "formFiliére",
      child: Center(
        child: Text("Changement de filiére"),
      ),
    ),
    DropdownMenuItem<String>(
      value: "form Stage",
      child: Center(
        child: Text("Convention de Stage"),
      ),
    ),
    DropdownMenuItem<String>(
      value: "form forfait",
      child: Center(
        child: Text("Forfait non positionné"),
      ),
    ),
    DropdownMenuItem<String>(
      value: "form  recommandation",
      child: Center(
        child: Text("Lettre de recommandation"),
      ),
    ),
    DropdownMenuItem<String>(
      value: "form SIm",
      child: Center(
        child: Text("Lettre de Recupération de SIM"),
      ),
    ),
    DropdownMenuItem<String>(
      value: "form attribut",
      child: Center(
        child: Text("Nouvelle attribution cle/modem"),
      ),
    ),

  ],

  onChanged: (_value) => selected(_value),
  hint: Text(
  "Choisir un type de requete"
  ),
  ),

  Text(
  "$value",
  style: TextStyle(
  fontSize: 20.0,
  ),
  ),
  ],
  ),
  ),
  );
  }
  }
