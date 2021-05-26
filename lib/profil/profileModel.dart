class Profile {
  final int id;
  final String ine;
  final String nom;
  final String prenom;
  final String dateNaiss;
  final String lieuNaiss;
  final String mailInstitutionnel;
  final String tel;

Profile(
      this.id,
      this.ine,
      this.nom,
      this.prenom,
    this.dateNaiss,
    this.lieuNaiss,
    this.mailInstitutionnel,
    this.tel,
      );
  factory Profile.fromMap(Map<String, dynamic> json) {
    return Profile(json['id'], json['ine'], json['nom'],json['dateNaiss'],json['lieuNaiss'],json['mailInstitutionnel'],json['tel'], json['prenom']);
  }
  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(json['id'], json['ine'], json['nom'],json['mailInstitutionnel'],json['dateNaiss'],json['lieuNaiss'],json['tel'], json['prenom']);
  }
}