import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    //dispositivo base
    //411px width
    //820px height
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Column(
        children: [
          Container(
            //Contenedor perfil
            width: double.infinity,
            height: screenHeight * 0.1219512195121951,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "21/Feb/2025",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                    Text("Hola, Elian",
                        style: TextStyle(
                            fontFamily: "Times New Roman",
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Container(
                  //contenedor de la imagen
                  width: 70,
                  height: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/avatar.jpg",
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.orange,
            child: Row(
              children: [
                Container(
                  width: 160,
                  height: double.infinity,
                  child: Column(children: [
                    Text(
                      textAlign: TextAlign.justify,
                      "¿Que juego deberías jugar hoy?",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Georgia"),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.pink,
                    )
                  ]),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/videojuegos.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
