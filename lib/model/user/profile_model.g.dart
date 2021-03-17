// GENERATED CODE - DO NOT MODIFY BY HAND

part of profile_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProfileModel> _$profileModelSerializer =
    new _$ProfileModelSerializer();

class _$ProfileModelSerializer implements StructuredSerializer<ProfileModel> {
  @override
  final Iterable<Type> types = const [ProfileModel, _$ProfileModel];
  @override
  final String wireName = 'ProfileModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ProfileModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(bool)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(User)));
    }
    return result;
  }

  @override
  ProfileModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
      }
    }

    return result.build();
  }
}

class _$ProfileModel extends ProfileModel {
  @override
  final bool status;
  @override
  final String message;
  @override
  final User data;

  factory _$ProfileModel([void Function(ProfileModelBuilder) updates]) =>
      (new ProfileModelBuilder()..update(updates)).build();

  _$ProfileModel._({this.status, this.message, this.data}) : super._();

  @override
  ProfileModel rebuild(void Function(ProfileModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileModelBuilder toBuilder() => new ProfileModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileModel &&
        status == other.status &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, status.hashCode), message.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProfileModel')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class ProfileModelBuilder
    implements Builder<ProfileModel, ProfileModelBuilder> {
  _$ProfileModel _$v;

  bool _status;
  bool get status => _$this._status;
  set status(bool status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  UserBuilder _data;
  UserBuilder get data => _$this._data ??= new UserBuilder();
  set data(UserBuilder data) => _$this._data = data;

  ProfileModelBuilder();

  ProfileModelBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProfileModel;
  }

  @override
  void update(void Function(ProfileModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProfileModel build() {
    _$ProfileModel _$result;
    try {
      _$result = _$v ??
          new _$ProfileModel._(
              status: status, message: message, data: _data?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProfileModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
