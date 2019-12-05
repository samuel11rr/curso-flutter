import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        // padding: EdgeInsets.symmetric( horizontal: 50.0, vertical: 10.0 ),
        padding: EdgeInsets.all( 10.0 ),
        children: <Widget>[
          _cardTipo1(),
          SizedBox( height: 30.0 ),
          _cardTipo2(),
          SizedBox( height: 30.0 ),
          _cardTipo1(),
          SizedBox( height: 30.0 ),
          _cardTipo2(),
          SizedBox( height: 30.0 ),
          _cardTipo1(),
          SizedBox( height: 30.0 ),
          _cardTipo2(),
          SizedBox( height: 30.0 ),
          _cardTipo1(),
          SizedBox( height: 30.0 ),
          _cardTipo2(),
          SizedBox( height: 30.0 ),
          _cardTipo1(),
          SizedBox( height: 30.0 ),
          _cardTipo2(),
          SizedBox( height: 30.0 ),
        ],
      ),
    );

  }


  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue ),
            title: Text('Titulo de tarjeta'),
            subtitle: Text('Este es el subtitulo de la tarjeta que estamos usando para ejemplificar el uso de las tarjetas'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );

  }


  Widget _cardTipo2() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://cdn.mos.cms.futurecdn.net/FUE7XiFApEqWZQ85wYcAfM.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Texto para la imagen')
          )
        ],

      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset( 2.0, 10.0 )
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}