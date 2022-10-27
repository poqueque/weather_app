class MeteoData {
  MeteoData({
    required this.product,
    required this.init,
    required this.dataseries,
  });
  late final String product;
  late final String init;
  late final List<Dataseries> dataseries;

  DateTime get initDateTime {
    final initDateWithProperFormat = "${init.substring(0,8)}T${init.substring(8)}0000";
    return DateTime.parse(initDateWithProperFormat);
  }

  MeteoData.fromJson(Map<String, dynamic> json){
    product = json['product'];
    init = json['init'];
    dataseries = List.from(json['dataseries']).map((e)=>Dataseries.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['product'] = product;
    data['init'] = init;
    data['dataseries'] = dataseries.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Dataseries {
  Dataseries({
    required this.timepoint,
    required this.cloudcover,
    required this.highcloud,
    required this.midcloud,
    required this.lowcloud,
    required this.rhProfile,
    required this.windProfile,
    required this.temp2m,
    required this.liftedIndex,
    required this.rh2m,
    required this.mslPressure,
    required this.wind10m,
    required this.precType,
    required this.precAmount,
    required this.snowDepth,
  });
  late final int timepoint;
  late final int cloudcover;
  late final int highcloud;
  late final int midcloud;
  late final int lowcloud;
  late final List<RhProfile> rhProfile;
  late final List<WindProfile> windProfile;
  late final int temp2m;
  late final int liftedIndex;
  late final int rh2m;
  late final int mslPressure;
  late final Wind10m wind10m;
  late final String precType;
  late final int precAmount;
  late final int snowDepth;

  Dataseries.fromJson(Map<String, dynamic> json){
    timepoint = json['timepoint'];
    cloudcover = json['cloudcover'];
    highcloud = json['highcloud'];
    midcloud = json['midcloud'];
    lowcloud = json['lowcloud'];
    rhProfile = List.from(json['rh_profile']).map((e)=>RhProfile.fromJson(e)).toList();
    windProfile = List.from(json['wind_profile']).map((e)=>WindProfile.fromJson(e)).toList();
    temp2m = json['temp2m'];
    liftedIndex = json['lifted_index'];
    rh2m = json['rh2m'];
    mslPressure = json['msl_pressure'];
    wind10m = Wind10m.fromJson(json['wind10m']);
    precType = json['prec_type'];
    precAmount = json['prec_amount'];
    snowDepth = json['snow_depth'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['timepoint'] = timepoint;
    data['cloudcover'] = cloudcover;
    data['highcloud'] = highcloud;
    data['midcloud'] = midcloud;
    data['lowcloud'] = lowcloud;
    data['rh_profile'] = rhProfile.map((e)=>e.toJson()).toList();
    data['wind_profile'] = windProfile.map((e)=>e.toJson()).toList();
    data['temp2m'] = temp2m;
    data['lifted_index'] = liftedIndex;
    data['rh2m'] = rh2m;
    data['msl_pressure'] = mslPressure;
    data['wind10m'] = wind10m.toJson();
    data['prec_type'] = precType;
    data['prec_amount'] = precAmount;
    data['snow_depth'] = snowDepth;
    return data;
  }
}

class RhProfile {
  RhProfile({
    required this.layer,
    required this.rh,
  });
  late final String layer;
  late final int rh;

  RhProfile.fromJson(Map<String, dynamic> json){
    layer = json['layer'];
    rh = json['rh'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['layer'] = layer;
    data['rh'] = rh;
    return data;
  }
}

class WindProfile {
  WindProfile({
    required this.layer,
    required this.direction,
    required this.speed,
  });
  late final String layer;
  late final int direction;
  late final int speed;

  WindProfile.fromJson(Map<String, dynamic> json){
    layer = json['layer'];
    direction = json['direction'];
    speed = json['speed'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['layer'] = layer;
    data['direction'] = direction;
    data['speed'] = speed;
    return data;
  }
}

class Wind10m {
  Wind10m({
    required this.direction,
    required this.speed,
  });
  late final String direction;
  late final int speed;

  Wind10m.fromJson(Map<String, dynamic> json){
    direction = json['direction'];
    speed = json['speed'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['direction'] = direction;
    data['speed'] = speed;
    return data;
  }
}