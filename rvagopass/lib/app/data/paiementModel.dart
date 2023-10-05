// ignore_for_file: public_member_api_docs, sort_constructors_first
class PaiementModel {
  int? id;
   String?  motif;
   String? datepaiement;
   String? passager;
   String? genre;
   String? emailPassager;
   int? agePassager;
   String? agent;
    
   
  PaiementModel(
      {this.id,
      this.motif,
      this.datepaiement,
      this.passager,
      this.emailPassager,
      this.agePassager,
      this.agent,
      
      });
  factory PaiementModel.fromJson(Map<String, dynamic> json) {
    return PaiementModel(
      id: json['id'],
      motif: json['motif'],
      datepaiement: json['datepaiement'],
      passager: json['passager'],
      emailPassager: json['emailpass'],
      agePassager: json['age_passager'],
      agent: json['agent'], 
    );
  }
}