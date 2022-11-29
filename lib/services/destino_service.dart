import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';
import '../models/destino.dart';

class DestinoService extends ChangeNotifier{
   final String _baseUrl = "viajesapp-bdb81-default-rtdb.firebaseio.com";
  
  final List<Destino> destinos = [];

  bool isLoading = true;
  bool isSaving = false;

  Destino? destinoSeleccionado;
  File? newPictureFile;

  //constructor
  DestinoService(){
    this.obtenerDestinos();
  }

  //metodo que obtiene los productos de la base de datos de firebase

  Future obtenerDestinos() async {
    this.isLoading = true;
    notifyListeners();
    final url = Uri.https(_baseUrl,'destinos.json');
    final resp = await http.get(url);

    final Map<String,dynamic> destinosMap = json.decode(resp.body);

    //print(productosMap);

    destinosMap.forEach((key, value) {
      final destinoTemp = Destino.fromMap(value);
      destinoTemp.id = key;
      this.destinos.add(destinoTemp);
    });
    this.isLoading= false;
    notifyListeners();

    //print(this.productos[0].nombre);
    return this.destinos;
  }

  //metodo para actualizar un producto en la BD
  Future<String> updateDestino(Destino destino) async {
    final url = Uri.https(_baseUrl, 'destinos/${destino.id}.json');

    final resp = await http.put(url,body: destino.toJson());

    final decodeData = resp.body;
    print(decodeData);
    //actualizar el listado de productos
    final index= this.destinos.indexWhere((element) => element.id==destino.id);
    this.destinos[index]=destino;
    return destino.id!;
  }

  //metodo para crear o actuaizar un producto
  Future saveOrCreateDestino(Destino destino) async{
    isSaving = true;

    notifyListeners();

    if(destino.id == null){
      //producto nuevo
      await this.createDestino(destino);
    }else{
      //actualizar
      await this.updateDestino(destino);
    }
    isSaving = false;
    notifyListeners();
  }
  //Metodo par crear un producto nuevo
  Future<String> createDestino(Destino destino) async{
    final url = Uri.https(_baseUrl, 'destinos.json');
    final resp = await http.post(url, body:destino.toJson());
    final decodeData= json.decode(resp.body);
    destino.id= decodeData['name'];
    this.destinos.add(destino);
    
    return destino.id!;
    
  }

  void updateImagen(String path){
    this.destinoSeleccionado!.imagen=path;
    this.newPictureFile = File.fromUri(Uri(path:path));
    notifyListeners();
  }
//
Future<String?> uploadImage()async{
  if(this.newPictureFile == null) return null;
  this.isSaving= true;
  notifyListeners();

  final url=Uri.parse('https://api.cloudinary.com/v1_1/dlvcour8k/image/upload?upload_preset=op16f8ya');
  final imageUploadRequest = http.MultipartRequest('POST', url);
  final file= await http.MultipartFile.fromPath('file', newPictureFile!.path);
    imageUploadRequest.files.add(file);
  final streamResponse= await imageUploadRequest.send();
  final resp=await http.Response.fromStream(streamResponse);
  
  //print(resp.body);

  //Validamos obtengamos una respuesta satisfactoria

  if(resp.statusCode!=200 && resp.statusCode!=201){
    print("Error en la peticion");
    return null;
  }

  this.newPictureFile=null;

  final decodedData= json.decode(resp.body);
  return decodedData['secure_url'];
}
}