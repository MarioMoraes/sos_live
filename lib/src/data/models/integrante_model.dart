import 'dart:convert';

class IntegranteModel {
  final String tipo;
  final String quantidade;

  IntegranteModel({
    required this.tipo,
    required this.quantidade,
  });

  IntegranteModel copyWith({
    String? tipo,
    String? quantidade,
  }) {
    return IntegranteModel(
      tipo: tipo ?? this.tipo,
      quantidade: quantidade ?? this.quantidade,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tipo': tipo,
      'quantidade': quantidade,
    };
  }

  factory IntegranteModel.fromMap(Map<String, dynamic> map) {
    return IntegranteModel(
      tipo: map['tipo'] as String,
      quantidade: map['quantidade'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory IntegranteModel.fromJson(String source) =>
      IntegranteModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'IntegranteModel(tipo: $tipo, quantidade: $quantidade)';

  @override
  bool operator ==(covariant IntegranteModel other) {
    if (identical(this, other)) return true;

    return other.tipo == tipo && other.quantidade == quantidade;
  }

  @override
  int get hashCode => tipo.hashCode ^ quantidade.hashCode;
}
