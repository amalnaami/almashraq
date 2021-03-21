// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_result_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClearState extends ClearState {
  factory _$ClearState([void Function(ClearStateBuilder) updates]) =>
      (new ClearStateBuilder()..update(updates)).build();

  _$ClearState._() : super._();

  @override
  ClearState rebuild(void Function(ClearStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearStateBuilder toBuilder() => new ClearStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearState;
  }

  @override
  int get hashCode {
    return 338996177;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearState').toString();
  }
}

class ClearStateBuilder implements Builder<ClearState, ClearStateBuilder> {
  _$ClearState _$v;

  ClearStateBuilder();

  @override
  void replace(ClearState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClearState;
  }

  @override
  void update(void Function(ClearStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearState build() {
    final _$result = _$v ?? new _$ClearState._();
    replace(_$result);
    return _$result;
  }
}

class _$ClearError extends ClearError {
  factory _$ClearError([void Function(ClearErrorBuilder) updates]) =>
      (new ClearErrorBuilder()..update(updates)).build();

  _$ClearError._() : super._();

  @override
  ClearError rebuild(void Function(ClearErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearErrorBuilder toBuilder() => new ClearErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearError;
  }

  @override
  int get hashCode {
    return 507656265;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearError').toString();
  }
}

class ClearErrorBuilder implements Builder<ClearError, ClearErrorBuilder> {
  _$ClearError _$v;

  ClearErrorBuilder();

  @override
  void replace(ClearError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClearError;
  }

  @override
  void update(void Function(ClearErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearError build() {
    final _$result = _$v ?? new _$ClearError._();
    replace(_$result);
    return _$result;
  }
}

class _$PostSearch extends PostSearch {
  @override
  final String bookName;
  @override
  final List<int> sectionId;
  @override
  final int authorId;
  @override
  final String searchWord;

  factory _$PostSearch([void Function(PostSearchBuilder) updates]) =>
      (new PostSearchBuilder()..update(updates)).build();

  _$PostSearch._(
      {this.bookName, this.sectionId, this.authorId, this.searchWord})
      : super._();

  @override
  PostSearch rebuild(void Function(PostSearchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostSearchBuilder toBuilder() => new PostSearchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostSearch &&
        bookName == other.bookName &&
        sectionId == other.sectionId &&
        authorId == other.authorId &&
        searchWord == other.searchWord;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, bookName.hashCode), sectionId.hashCode),
            authorId.hashCode),
        searchWord.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostSearch')
          ..add('bookName', bookName)
          ..add('sectionId', sectionId)
          ..add('authorId', authorId)
          ..add('searchWord', searchWord))
        .toString();
  }
}

class PostSearchBuilder implements Builder<PostSearch, PostSearchBuilder> {
  _$PostSearch _$v;

  String _bookName;
  String get bookName => _$this._bookName;
  set bookName(String bookName) => _$this._bookName = bookName;

  List<int> _sectionId;
  List<int> get sectionId => _$this._sectionId;
  set sectionId(List<int> sectionId) => _$this._sectionId = sectionId;

  int _authorId;
  int get authorId => _$this._authorId;
  set authorId(int authorId) => _$this._authorId = authorId;

  String _searchWord;
  String get searchWord => _$this._searchWord;
  set searchWord(String searchWord) => _$this._searchWord = searchWord;

  PostSearchBuilder();

  PostSearchBuilder get _$this {
    if (_$v != null) {
      _bookName = _$v.bookName;
      _sectionId = _$v.sectionId;
      _authorId = _$v.authorId;
      _searchWord = _$v.searchWord;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostSearch other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PostSearch;
  }

  @override
  void update(void Function(PostSearchBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostSearch build() {
    final _$result = _$v ??
        new _$PostSearch._(
            bookName: bookName,
            sectionId: sectionId,
            authorId: authorId,
            searchWord: searchWord);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
