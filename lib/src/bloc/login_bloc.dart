

import 'dart:async';
import 'package:validaciones_forms_practica/src/bloc/validators.dart';

class LoginBloc with Validators{
  
  final _emailController = StreamController<String>.broadcast();
  final _pswController = StreamController<String>.broadcast();


  //Recuperar los datos del Stream
  Stream<String> get emailStream    => _emailController.stream.transform(validarEmail);
  Stream<String> get passwordStream => _pswController.stream.transform(validarPassword);

  //Combinacion de Streams

  //Insertar valores al Stream
  Function(String)  get changeEmail     => _emailController.sink.add;
  Function(String)  get changePassword  => _pswController.sink.add;

  dispose(){
    _emailController?.close();
    _pswController?.close();
  }

}