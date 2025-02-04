
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
    print("Oups ! Il te reste ${vies} vies.");
  }
class 
  if (vies== 0){
    print("la partie est terminée");
  }else{
  print("tu n'as plus de vies");
  }
}
}

void main(){
 Aventurier aventurier1= Aventurier("modupe",3);
  aventurier1.perdreVie(); 
}