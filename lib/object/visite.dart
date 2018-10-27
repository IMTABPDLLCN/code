import 'package:flutter/material.dart';
import 'dart:math';

class Visite {

  var id;
  var ville;
  var date;
  var prix;
  var note;
  var etat;
  var activite;
  var guide;
  var touristes;
  final nbTouristeMax;


  
  Visite(this.ville,this.date,this.prix,this.note,this.etat,this.activite,this.guide,this.touristes,this.nbTouristeMax);

  int generateId() {
    var i=Random();
    var estDejaPris=false;
    var id=i.nextInt(250);
    estDejaPris=verifieId(id);
    while (estDejaPris) {
      id=i.nextInt(250);
    }
    return id;
  }
  bool verifieId(id) {
    //To do
    return true;
  }
}