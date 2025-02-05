
import 'dart:io';

class Aventurier{
  //propriete
  String nom;
  int vies=3;

  // constructeur
  Aventurier(this.nom,this.vies);
  
  // methode
 void perdreVie() {
  if (vies>0){
    vies--;
    print("Oups ! Il te reste $vies vies.");
  }
  if (vies== 0){
    print("la partie est terminée");
  }else{
  print("tu n'as plus de vies");
  }
}
}
 abstract class Obstacle{
//mathode abstraite que toutes les sous-classes devront implémenter.
Future<void> affronter ( aventurierjoueur);
 }
// sous classe enigme
class Enigme extends Obstacle{
  // propriete
  String question;
  String reponseCorrecte;
  //methode
  @override
  Future<void> affronter(aventurierjoueur)async{
    bool reussi= false ;

    while (!reussi && aventurierjoueur.vies > 0) {
      print(question);
      String? reponseUtilisateur = stdin.readLineSync();

      if (reponseUtilisateur == reponseCorrecte) {
        print('${aventurierjoueur.nom} a résolu l\'énigme !');
        reussi = true;
      } 
      else {
        aventurierjoueur.perdreVie();
        print('${aventurierjoueur.nom} a donné une mauvaise réponse. Il reste ${aventurierjoueur.vies} vies.');
        if (aventurierjoueur.vies > 0) {
          print('Essayez encore !');
        }
      }
      // Attendre un moment avant de redemander
      await Future.delayed(Duration(seconds: 1));

    if (aventurierjoueur.vies == 0) {
      print('${aventurierjoueur.nom} n\'a plus de vies. Game Over !');
    }
    }
    
  }
  // constructeur 
  Enigme(this.question,this.reponseCorrecte);
}


void main() async{
 //Aventurier aventurier1= Aventurier("modupe",3);
  //aventurier1.perdreVie(); 
 Enigme enigme=Enigme("Joueur, donnez moi la capitale de Lagos?", 'Ikeja');
  await enigme.affronter ;
}