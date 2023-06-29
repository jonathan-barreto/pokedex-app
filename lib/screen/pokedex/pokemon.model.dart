class PokemonModel {
  PokemonModel({
    required this.name,
    required this.height,
    required this.id,
    required this.stats,
    required this.types,
    required this.weight,
  });
  late final String name;
  late final int height;
  late final int id;
  late final List<Stats> stats;
  late final List<Types> types;
  late final int weight;

  PokemonModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    height = json['height'];
    id = json['id'];
    stats = List.from(json['stats']).map((e) => Stats.fromJson(e)).toList();
    types = List.from(json['types']).map((e) => Types.fromJson(e)).toList();
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['height'] = height;
    data['id'] = id;
    data['stats'] = stats.map((e) => e.toJson()).toList();
    data['types'] = types.map((e) => e.toJson()).toList();
    data['weight'] = weight;
    return data;
  }
}

class Stats {
  Stats({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });
  late final int baseStat;
  late final int effort;
  late final Stat stat;

  Stats.fromJson(Map<String, dynamic> json) {
    baseStat = json['base_stat'];
    effort = json['effort'];
    stat = Stat.fromJson(json['stat']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['base_stat'] = baseStat;
    data['effort'] = effort;
    data['stat'] = stat.toJson();
    return data;
  }
}

class Stat {
  Stat({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Stat.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class Types {
  Types({
    required this.slot,
    required this.type,
  });
  late final int slot;
  late final Type type;

  Types.fromJson(Map<String, dynamic> json) {
    slot = json['slot'];
    type = Type.fromJson(json['type']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['slot'] = slot;
    data['type'] = type.toJson();
    return data;
  }
}

class Type {
  Type({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Type.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}
