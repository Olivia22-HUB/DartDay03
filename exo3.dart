class Amulette {
  //Propriété
  String nom;
  int puissance;
  String materiaux;
  //méthodes

  //constructeur
  Amulette(this.nom, this.puissance, this.materiaux);
  @override
  String toString() {
    return ("L'amulette ${nom} fait à partir de ${materiaux} a une puissance de ${puissance}");
  }
}

Amulette amuletteFeu = Amulette("Flamme Eternelle", 50, "Obsidienne");
Amulette amuletteGlace = Amulette("Coeur Gelé", 40, "Glace");
Amulette amuletteOmbre = Amulette("Voile Nocturne", 60, "Onyx");
List<Amulette> amulettes = [amuletteFeu, amuletteGlace, amuletteOmbre];
trouverAmulette(String nomRecherche) {
  for (Amulette amulette in amulettes) {
    if (amulette.nom == nomRecherche) {
      return amulette;
    }
  }
  return null;
}

class Boutique {
  //propriétés
  List<String> inventaire = [" "];

  //méthodes
  ajouterAmulette(inventaire) {
    inventaire.add("new amulettes");
  }

  afficherAmulettes(inventaire) {
    print(inventaire);
  }

  Boutique(this.inventaire);
}

void main() {
  print(amuletteFeu);
  print(amuletteGlace);
  print(amuletteOmbre);

  var reponse = trouverAmulette("Nocturne Gelé");
  if (reponse == null) {
    print("Cette amulette n'existe pas encore dans l'atelier");
  } else {
    print("Disponible dans l'atelier");
  }
  List inventaire = ["Flamme Eternelle", "Coeur Gelé", "Voile Nocturne"];
  Boutique boutique =
      Boutique(["Flamme Eternelle", "Coeur Gelé", "Voile Nocturne"]);
  print(inventaire);
  boutique.ajouterAmulette("Gloire Magnifique");
}
