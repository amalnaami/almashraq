// GENERATED CODE - DO NOT MODIFY BY HAND

part of base_book;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BaseBook> _$baseBookSerializer = new _$BaseBookSerializer();

class _$BaseBookSerializer implements StructuredSerializer<BaseBook> {
  @override
  final Iterable<Type> types = const [BaseBook, _$BaseBook];
  @override
  final String wireName = 'BaseBook';

  @override
  Iterable<Object> serialize(Serializers serializers, BaseBook object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Book)])));
    }
    if (object.paginator != null) {
      result
        ..add('paginator')
        ..add(serializers.serialize(object.paginator,
            specifiedType: const FullType(Paginator)));
    }
    return result;
  }

  @override
  BaseBook deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BaseBookBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Book)]))
              as BuiltList<Object>);
          break;
        case 'paginator':
          result.paginator.replace(serializers.deserialize(value,
              specifiedType: const FullType(Paginator)) as Paginator);
          break;
      }
    }

    return result.build();
  }
}

class _$BaseBook extends BaseBook {
  @override
  final BuiltList<Book> data;
  @override
  final Paginator paginator;

  factory _$BaseBook([void Function(BaseBookBuilder) updates]) =>
      (new BaseBookBuilder()..update(updates)).build();

  _$BaseBook._({this.data, this.paginator}) : super._();

  @override
  BaseBook rebuild(void Function(BaseBookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseBookBuilder toBuilder() => new BaseBookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseBook &&
        data == other.data &&
        paginator == other.paginator;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), paginator.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseBook')
          ..add('data', data)
          ..add('paginator', paginator))
        .toString();
  }
}

class BaseBookBuilder implements Builder<BaseBook, BaseBookBuilder> {
  _$BaseBook _$v;

  ListBuilder<Book> _data;
  ListBuilder<Book> get data => _$this._data ??= new ListBuilder<Book>();
  set data(ListBuilder<Book> data) => _$this._data = data;

  PaginatorBuilder _paginator;
  PaginatorBuilder get paginator =>
      _$this._paginator ??= new PaginatorBuilder();
  set paginator(PaginatorBuilder paginator) => _$this._paginator = paginator;

  BaseBookBuilder();

  BaseBookBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _paginator = _$v.paginator?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseBook other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BaseBook;
  }

  @override
  void update(void Function(BaseBookBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseBook build() {
    _$BaseBook _$result;
    try {
      _$result = _$v ??
          new _$BaseBook._(
              data: _data?.build(), paginator: _paginator?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'paginator';
        _paginator?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BaseBook', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
