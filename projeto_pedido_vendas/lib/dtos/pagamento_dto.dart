
class PagamentoDTO {
  int? id;
  double valorTotal;
  double desconto;
  String dataVencimento;
  int? pedidoId;

  PagamentoDTO({
    this.id,
    required this.valorTotal,
    required this.desconto,
    required this.dataVencimento,
    required this.pedidoId,
  });

  factory PagamentoDTO.fromJson(Map<String, dynamic> json) {
    return PagamentoDTO(
      id: json['id'],
      valorTotal: json['valorTotal'],
      desconto: json['desconto'],
      dataVencimento: json['dataVencimento'],
      pedidoId: json['pedidoId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'valorTotal': valorTotal,
      'desconto': desconto,
      'dataVencimento': dataVencimento,
      'pedidoId': pedidoId,
    };
  }
}
