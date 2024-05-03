class Singleuser{
String? id;
String? address;
String? city;
String? current_balance;
String? expiration_date;
String? fullname;
String? package_type;
String? package_value;
String? payment_method;
String? phone;
String? user_type;


Singleuser(
    {this.id,
      this.address,
      this.city,
      this.current_balance,
      this.expiration_date,
      this.fullname,
      this.package_type,
      this.package_value,
      this.payment_method,
      this.phone,
      this.user_type
    });

Singleuser.fromJson(Map<String, dynamic> json) {
  id = json['id'];
  address = json['address'];
  city = json['city'];
  current_balance = json['current_balance'];
  expiration_date = json['expiration_date'];
  fullname = json['fullname'];
  package_type = json['package_type'];
  package_value = json['package_value'];
  payment_method = json['payment_method'];
  phone = json['phone'];
  user_type = json['user_type'];
}
Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['address'] = address;
  data['city'] = city;
  data['current_balance'] = current_balance;
  data['expiration_date'] = expiration_date;
  data['fullname'] = fullname;
  data['package_type'] = package_type;
  data['package_value'] = package_value;
  data['payment_method'] = payment_method;
  data['phone'] = phone;
  data['user_type'] = user_type;
  return data;
}


}

