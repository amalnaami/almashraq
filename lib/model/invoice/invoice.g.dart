// GENERATED CODE - DO NOT MODIFY BY HAND

part of invoice;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Invoice> _$invoiceSerializer = new _$InvoiceSerializer();

class _$InvoiceSerializer implements StructuredSerializer<Invoice> {
  @override
  final Iterable<Type> types = const [Invoice, _$Invoice];
  @override
  final String wireName = 'Invoice';

  @override
  Iterable<Object> serialize(Serializers serializers, Invoice object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.invoiceKey != null) {
      result
        ..add('invoiceKey')
        ..add(serializers.serialize(object.invoiceKey,
            specifiedType: const FullType(String)));
    }
    if (object.invoiceId != null) {
      result
        ..add('invoiceId')
        ..add(serializers.serialize(object.invoiceId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Invoice deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InvoiceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'invoiceKey':
          result.invoiceKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'invoiceId':
          result.invoiceId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Invoice extends Invoice {
  @override
  final String url;
  @override
  final String invoiceKey;
  @override
  final int invoiceId;

  factory _$Invoice([void Function(InvoiceBuilder) updates]) =>
      (new InvoiceBuilder()..update(updates)).build();

  _$Invoice._({this.url, this.invoiceKey, this.invoiceId}) : super._();

  @override
  Invoice rebuild(void Function(InvoiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvoiceBuilder toBuilder() => new InvoiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Invoice &&
        url == other.url &&
        invoiceKey == other.invoiceKey &&
        invoiceId == other.invoiceId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, url.hashCode), invoiceKey.hashCode), invoiceId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Invoice')
          ..add('url', url)
          ..add('invoiceKey', invoiceKey)
          ..add('invoiceId', invoiceId))
        .toString();
  }
}

class InvoiceBuilder implements Builder<Invoice, InvoiceBuilder> {
  _$Invoice _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _invoiceKey;
  String get invoiceKey => _$this._invoiceKey;
  set invoiceKey(String invoiceKey) => _$this._invoiceKey = invoiceKey;

  int _invoiceId;
  int get invoiceId => _$this._invoiceId;
  set invoiceId(int invoiceId) => _$this._invoiceId = invoiceId;

  InvoiceBuilder();

  InvoiceBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _invoiceKey = _$v.invoiceKey;
      _invoiceId = _$v.invoiceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Invoice other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Invoice;
  }

  @override
  void update(void Function(InvoiceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Invoice build() {
    final _$result = _$v ??
        new _$Invoice._(url: url, invoiceKey: invoiceKey, invoiceId: invoiceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
