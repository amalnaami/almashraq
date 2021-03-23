library invoice;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/user/user.dart';

part 'invoice.g.dart';

abstract class Invoice implements Built<Invoice, InvoiceBuilder> {
  @nullable
  String get url;
  @nullable
  String get invoiceKey;
  @nullable
  int get invoiceId;

  Invoice._();

  factory Invoice([updates(InvoiceBuilder b)]) = _$Invoice;

  String toJson() {
    return json.encode(serializers.serializeWith(Invoice.serializer, this));
  }

  static Invoice fromJson(String jsonString) {
    return serializers.deserializeWith(
        Invoice.serializer, json.decode(jsonString));
  }

  static Serializer<Invoice> get serializer => _$invoiceSerializer;
}
