// GENERATED CODE - DO NOT MODIFY BY HAND

part of notifications;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Notifications> _$notificationsSerializer =
    new _$NotificationsSerializer();

class _$NotificationsSerializer implements StructuredSerializer<Notifications> {
  @override
  final Iterable<Type> types = const [Notifications, _$Notifications];
  @override
  final String wireName = 'Notifications';

  @override
  Iterable<Object> serialize(Serializers serializers, Notifications object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Notifications deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Notifications extends Notifications {
  @override
  final int id;
  @override
  final String title;
  @override
  final String body;
  @override
  final String image;

  factory _$Notifications([void Function(NotificationsBuilder) updates]) =>
      (new NotificationsBuilder()..update(updates)).build();

  _$Notifications._({this.id, this.title, this.body, this.image}) : super._();

  @override
  Notifications rebuild(void Function(NotificationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsBuilder toBuilder() => new NotificationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Notifications &&
        id == other.id &&
        title == other.title &&
        body == other.body &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, id.hashCode), title.hashCode), body.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Notifications')
          ..add('id', id)
          ..add('title', title)
          ..add('body', body)
          ..add('image', image))
        .toString();
  }
}

class NotificationsBuilder
    implements Builder<Notifications, NotificationsBuilder> {
  _$Notifications _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  NotificationsBuilder();

  NotificationsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _body = _$v.body;
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Notifications other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Notifications;
  }

  @override
  void update(void Function(NotificationsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Notifications build() {
    final _$result = _$v ??
        new _$Notifications._(id: id, title: title, body: body, image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
