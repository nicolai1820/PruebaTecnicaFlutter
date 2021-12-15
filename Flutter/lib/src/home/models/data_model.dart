// // To parse this JSON data, do
// //
// //     final dataModel = dataModelFromJson(jsonString);

// import 'dart:convert';

// List<DataModel> dataModelFromJson(String str) => List<DataModel>.from(json.decode(str).map((x) => DataModel.fromJson(x)));

// String dataModelToJson(List<DataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class DataModel {
//     DataModel({
//         this.codigo,
//         this.descripcion,
//     });

//     String? codigo;
//     String? descripcion;

//     factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
//         codigo: json["Codigo"],
//         descripcion: json["Descripcion"],
//     );

//     Map<String, dynamic> toJson() => {
//         "Codigo": codigo,
//         "Descripcion": descripcion,
//     };
// }

// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  DataModel({
    this.results,
  });

  List<Result>? results;

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
      results:
          List<Result>.from(json["results"].map((x) => Result.fromJson(x))));

  Map<String, dynamic> toJson() =>
      {"results": List<dynamic>.from(results!.map((x) => x.toJson()))};
}

class Result {
  Result({
    this.gender,
    this.name,
    this.location,
    this.email,
    this.dob,
    this.phone,
    this.cell,
    this.picture,
  });

  String? gender;
  Name? name;
  Location? location;
  String? email;

  Dob? dob;

  String? phone;
  String? cell;

  Picture? picture;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        gender: json["gender"],
        name: Name.fromJson(json["name"]),
        location: Location.fromJson(json["location"]),
        email: json["email"],
        dob: Dob.fromJson(json["dob"]),
        phone: json["phone"],
        cell: json["cell"],
        picture: Picture.fromJson(json["picture"]),
      );

  Map<String, dynamic> toJson() => {
        "gender": gender,
        "name": name!.toJson(),
        "location": location!.toJson(),
        "email": email,
        "dob": dob!.toJson(),
        "phone": phone,
        "cell": cell,
        "picture": picture!.toJson(),
      };
}

class Dob {
  Dob({
    this.date,
    this.age,
  });

  DateTime? date;
  int? age;

  factory Dob.fromJson(Map<String, dynamic> json) => Dob(
        date: DateTime.parse(json["date"]),
        age: json["age"],
      );

  Map<String, dynamic> toJson() => {
        "date": date!.toIso8601String(),
        "age": age,
      };
}

class Location {
  Location({
    this.city,
    this.state,
    this.country,
    this.postcode,
  });

  String? city;
  String? state;
  String? country;
  // ignore: unnecessary_question_mark
  dynamic? postcode;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        city: json["city"],
        state: json["state"],
        country: json["country"],
        postcode: json["postcode"],
      );

  Map<String, dynamic> toJson() => {
        "city": city,
        "state": state,
        "country": country,
        "postcode": postcode,
      };
}

class Name {
  Name({
    this.first,
    this.last,
  });

  String? first;
  String? last;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        first: json["first"],
        last: json["last"],
      );

  Map<String, dynamic> toJson() => {
        "first": first,
        "last": last,
      };
}

class Picture {
  Picture({
    this.large,
  });

  String? large;

  factory Picture.fromJson(Map<String, dynamic> json) => Picture(
        large: json["large"],
      );

  Map<String, dynamic> toJson() => {
        "large": large,
      };
}
