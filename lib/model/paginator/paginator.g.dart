// GENERATED CODE - DO NOT MODIFY BY HAND

part of paginator;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Paginator> _$paginatorSerializer = new _$PaginatorSerializer();

class _$PaginatorSerializer implements StructuredSerializer<Paginator> {
  @override
  final Iterable<Type> types = const [Paginator, _$Paginator];
  @override
  final String wireName = 'Paginator';

  @override
  Iterable<Object> serialize(Serializers serializers, Paginator object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.last_page != null) {
      result
        ..add('last_page')
        ..add(serializers.serialize(object.last_page,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Paginator deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaginatorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'last_page':
          result.last_page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Paginator extends Paginator {
  @override
  final int last_page;

  factory _$Paginator([void Function(PaginatorBuilder) updates]) =>
      (new PaginatorBuilder()..update(updates)).build();

  _$Paginator._({this.last_page}) : super._();

  @override
  Paginator rebuild(void Function(PaginatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatorBuilder toBuilder() => new PaginatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Paginator && last_page == other.last_page;
  }

  @override
  int get hashCode {
    return $jf($jc(0, last_page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Paginator')
          ..add('last_page', last_page))
        .toString();
  }
}

class PaginatorBuilder implements Builder<Paginator, PaginatorBuilder> {
  _$Paginator _$v;

  int _last_page;
  int get last_page => _$this._last_page;
  set last_page(int last_page) => _$this._last_page = last_page;

  PaginatorBuilder();

  PaginatorBuilder get _$this {
    if (_$v != null) {
      _last_page = _$v.last_page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Paginator other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Paginator;
  }

  @override
  void update(void Function(PaginatorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Paginator build() {
    final _$result = _$v ?? new _$Paginator._(last_page: last_page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
