

import 'dart:async';

class LoginBloc {
  
  final _emailController = StreamController<String>.broadcast();
  final _pswController = StreamController<String>.broadcast();


  //Recuperar los datos del Stream

  Stream<String> get emailStream    => _emailController.stream;

  Stream<String> get passwordStream => _pswController.stream;

  //Insertar valores al Stream

  Function(String)  get changeEmail     => _emailController.sink.add;
  
  Function(String)  get changePassword  => _pswController.sink.add;

  dispose(){
    _emailController?.close();
    _pswController?.close();
  }

}