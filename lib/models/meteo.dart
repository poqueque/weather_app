import 'data_series.dart';

class Meteo {
  late String product;
  late String init;
  late List<DataSeries> dataseries;

  Meteo(this.product, this.init, this.dataseries);

  Meteo.fromJson(Map<String, dynamic> json) {
    product = json['product'];
    init = json['init'];
    if (json['dataseries'] != null) {
      dataseries = <DataSeries>[];
      json['dataseries'].forEach((v) {
        dataseries.add(DataSeries.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product'] = product;
    data['init'] = init;
    data['dataseries'] = dataseries.map((v) => v.toJson()).toList();
    return data;
  }
}
