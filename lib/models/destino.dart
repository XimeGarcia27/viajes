import 'dart:convert';

class Destino {
    Destino({
        required this.disponible,
        this.imagen,
        required this.nombre,
        required this.precio,
        this.id,
        this.descripcion,
        this.ubicacion,


    });

    bool disponible;
    String? imagen;
    String nombre;
    double precio;
    String? id;
    String? descripcion;
    String? ubicacion;

    factory Destino.fromJson(String str) => Destino.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Destino.fromMap(Map<String, dynamic> json) => Destino(
        disponible: json["disponible"],
        imagen: json["imagen"],
        nombre: json["nombre"],
        precio: json["precio"].toDouble(),
        descripcion: json["descripcion"],
        ubicacion: json["ubicacion"],
            );

    Map<String, dynamic> toMap() => {
        "disponible": disponible,
        "imagen": imagen,
        "nombre": nombre,
        "precio": precio,
        "descripcion": descripcion,
        "ubicacion": ubicacion,

    };

    Destino copy()=> Destino(
      disponible: this.disponible, 
      nombre: this.nombre, 
      imagen: this.imagen,
      precio: this.precio,
      descripcion: this.descripcion,
      ubicacion: this.ubicacion,
      id: this.id,

      

      );
}
