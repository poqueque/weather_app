class DataSeries {
  late int timepoint;
  late int cloudcover;
  late int temp2m;

  DataSeries(this.timepoint, this.cloudcover, this.temp2m);

  DataSeries.fromJson(Map<String, dynamic> json) {
    timepoint = json['timepoint'];
    cloudcover = json['cloudcover'];
    temp2m = json['temp2m'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['timepoint'] = timepoint;
    data['cloudcover'] = cloudcover;
    data['temp2m'] = temp2m;
    return data;
  }
}
