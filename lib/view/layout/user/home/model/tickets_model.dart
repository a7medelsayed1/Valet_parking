class TicketsModel {
  int? id;
  int? categoryTypeId;
  String? categoryTypeTitle;
  int? categoryId;
  String? categoryTitle;
  int? gateId;
  String? gateTitle;
  int? slotId;
  String? slotTitle;
  int? userId;
  String? userName;
  String? userMobile;
  int? userCarId;
  String? carModel;
  String? carColor;
  String? carPlate;
  String? status;

  String? entryDate;
  String? exitDate;
  String? createdAt;

  String? ticketQr;
  List<CarImages>? carImages;

  List<Services>? services;

  TicketsModel({
    this.id,
    this.categoryTypeId,
    this.categoryTypeTitle,
    this.categoryId,
    this.categoryTitle,
    this.gateId,
    this.gateTitle,
    this.slotId,
    this.slotTitle,
    this.userId,
    this.userName,
    this.userMobile,
    this.userCarId,
    this.carModel,
    this.carColor,
    this.carPlate,
    this.status,
    this.entryDate,
    this.exitDate,
    this.createdAt,
    this.ticketQr,
    this.services,
    this.carImages,
  });

  TicketsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryTypeId = json['category_type_id'];
    categoryTypeTitle = json['category_type_title'];
    categoryId = json['category_id'];
    categoryTitle = json['category_title'];
    gateId = json['gate_id'];
    gateTitle = json['gate_title'];
    slotId = json['slot_id'];
    slotTitle = json['slot_title'];
    userId = json['user_id'];
    userName = json['user_name'];
    userMobile = json['user_mobile'];
    userCarId = json['user_car_id'];
    carModel = json['car_model'];
    carColor = json['car_color'];
    carPlate = json['car_plate'];
    status = json['status'];
    entryDate = json['entry_date'];
    exitDate = json['exit_date'];
    createdAt = json['created_at'];
    ticketQr = json['ticket_qr'];

    if (json['car_images'] != null) {
      carImages = <CarImages>[];
      json['car_images'].forEach((v) {
        carImages!.add(CarImages.fromJson(v));
      });
    }

    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(Services.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['category_type_id'] = categoryTypeId;
    data['category_type_title'] = categoryTypeTitle;
    data['category_id'] = categoryId;
    data['category_title'] = categoryTitle;
    data['gate_id'] = gateId;
    data['gate_title'] = gateTitle;
    data['slot_id'] = slotId;
    data['slot_title'] = slotTitle;
    data['user_id'] = userId;
    data['user_name'] = userName;
    data['user_mobile'] = userMobile;
    data['user_car_id'] = userCarId;
    data['car_model'] = carModel;
    data['car_color'] = carColor;
    data['car_plate'] = carPlate;
    data['status'] = status;

    data['entry_date'] = entryDate;
    data['exit_date'] = exitDate;
    data['created_at'] = createdAt;

    data['ticket_qr'] = ticketQr;
    if (carImages != null) {
      data['car_images'] = carImages!.map((v) => v.toJson()).toList();
    }
    if (services != null) {
      data['services'] = services!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Services {
  int? id;
  int? serviceId;
  String? serviceTitle;
  String? notes;
  String? userMobile;
  String? createdAt;

  Services(
      {this.id,
      this.serviceId,
      this.serviceTitle,
      this.notes,
      this.userMobile,
      this.createdAt});

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceId = json['service_id'];
    serviceTitle = json['service_title'];
    notes = json['notes'];
    userMobile = json['user_mobile'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['service_id'] = serviceId;
    data['service_title'] = serviceTitle;
    data['notes'] = notes;
    data['user_mobile'] = userMobile;
    data['created_at'] = createdAt;
    return data;
  }
}

class CarImages {
  int? id;
  String? url;

  CarImages({this.id, this.url});

  CarImages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['url'] = url;
    return data;
  }
}
