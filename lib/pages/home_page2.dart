import 'package:flutter/material.dart';
import 'package:tarea4/models/country_models.dart';

class HomePage2 extends StatefulWidget {
  @override
  State<HomePage2> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  PaisModel paisModelo1 = PaisModel(
      titulo: 'Thailand',
      imagen:
          'https://images.pexels.com/photos/3538245/pexels-photo-3538245.jpeg',
      precio: '\$ 245.50',
      puntaje: 4.5);

  PaisModel paisModelo2 = PaisModel(
      titulo: 'Argentina',
      imagen:
          'https://ichef.bbci.co.uk/news/800/cpsprodpb/a4e2/live/524bca40-6921-11ee-99df-dd674d5e8274.png',
      precio: '\$ 150.50',
      puntaje: 6.0);

  PaisModel paisModelo3 = PaisModel(
      titulo: 'Egipto',
      imagen:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Egypt.Giza.Sphinx.02.jpg/450px-Egypt.Giza.Sphinx.02.jpg',
      precio: '\$ 356.00',
      puntaje: 7.5);

  PaisModel paisModelo4 = PaisModel(
      titulo: 'Francia',
      imagen:
          'https://img.freepik.com/fotos-premium/rio-sena-torre-eiffel-paris-francia_219717-3008.jpg',
      precio: '\$ 450.50',
      puntaje: 8.0);

  List<PaisModel> paises = [];

  @override
  void initState() {
    super.initState();
    paises = [paisModelo1, paisModelo2, paisModelo3, paisModelo4];
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.rocket,
                color: Colors.orange,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                "Discount Tour",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Country",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: paises.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          width: 190,
                          height: 220,
                          padding: EdgeInsets.all(11),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(paises[index].imagen),
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 60,
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.27),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      "New",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                    width: 98,
                                    height: 40,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          right: 0,
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundImage: NetworkImage(
                                                "https://www.dzoom.org.es/wp-content/uploads/2020/02/portada-foto-perfil-redes-sociales-consejos-1024x682.jpg"),
                                          ),
                                        ),
                                        Positioned(
                                          right: 25,
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundImage: NetworkImage(
                                                "https://cristypalacios.com/wp-content/uploads/2023/03/Pose-para-hombre-1-1170x1463.jpg"),
                                          ),
                                        ),
                                        Positioned(
                                          right: 50,
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundImage: NetworkImage(
                                                "https://img.freepik.com/fotos-premium/avatar-masculino-anime_950633-978.jpg"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 75,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          paises[index].titulo,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "18 Tours",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 45,
                                    height: 80,
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.27),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          paises[index].puntaje.toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Icon(Icons.star, color: Colors.white),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  "Popular Tours",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 320,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: paises.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 202, 215, 238),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 120,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                paises[index].imagen))),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      paises[index].titulo,
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      width: 175,
                                      child: Text(
                                        "10 nigths for two/all inclusive",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    Text(
                                      paises[index].precio,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 45,
                                    height: 90,
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          paises[index].puntaje.toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Icon(Icons.star, color: Colors.white),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
