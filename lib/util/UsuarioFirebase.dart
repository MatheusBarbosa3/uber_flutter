import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uber_flutter/model/Usuario.dart';

class UsuarioFirebase {

  static Future<FirebaseUser> getUsuarioAtual() async {

    FirebaseAuth auth = FirebaseAuth.instance;
    return await auth.currentUser();

  }

  static Future<Usuario> getDadosUsuarioLogado() async {

    FirebaseUser firebaseUser = await getUsuarioAtual();
    String idUsuario = firebaseUser.uid;

    Firestore db = Firestore.instance;

    DocumentSnapshot snapshot = await db.collection("usuarios")
        .document( idUsuario )
        .get();

    Map<String, dynamic> dados = snapshot.data;
    String tipoUsuario = dados["tipoUsuario"];
    String email = dados["email"];
    String nome = dados["nome"];

    Usuario usuario = Usuario();
    usuario.idUsuario = idUsuario;
    usuario.tipoUsuario = tipoUsuario;
    usuario.email = email;
    usuario.nome = nome;

    return usuario;

  }

}