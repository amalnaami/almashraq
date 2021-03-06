// GENERATED CODE - DO NOT MODIFY BY HAND

part of home_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeState extends HomeState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<Book> latestBooks;
  @override
  final BuiltList<Book> mostReviewedBooks;
  @override
  final BuiltList<Book> featuredBooks;
  @override
  final BuiltList<Book> allBooks;
  @override
  final BuiltList<Quote> allQuote;
  @override
  final BuiltList<Review> allReview;
  @override
  final BuiltList<Author> authors;
  @override
  final BuiltList<Category> categories;
  @override
  final Quote todayQuote;
  @override
  final Review todayReview;
  @override
  final bool isLogin;
  @override
  final BookByCategoryModel sectionBook;
  @override
  final bool success;
  @override
  final bool successAddQuote;

  factory _$HomeState([void Function(HomeStateBuilder) updates]) =>
      (new HomeStateBuilder()..update(updates)).build();

  _$HomeState._(
      {this.isLoading,
      this.error,
      this.latestBooks,
      this.mostReviewedBooks,
      this.featuredBooks,
      this.allBooks,
      this.allQuote,
      this.allReview,
      this.authors,
      this.categories,
      this.todayQuote,
      this.todayReview,
      this.isLogin,
      this.sectionBook,
      this.success,
      this.successAddQuote})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('HomeState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('HomeState', 'error');
    }
    if (latestBooks == null) {
      throw new BuiltValueNullFieldError('HomeState', 'latestBooks');
    }
    if (mostReviewedBooks == null) {
      throw new BuiltValueNullFieldError('HomeState', 'mostReviewedBooks');
    }
    if (featuredBooks == null) {
      throw new BuiltValueNullFieldError('HomeState', 'featuredBooks');
    }
    if (allBooks == null) {
      throw new BuiltValueNullFieldError('HomeState', 'allBooks');
    }
    if (allQuote == null) {
      throw new BuiltValueNullFieldError('HomeState', 'allQuote');
    }
    if (allReview == null) {
      throw new BuiltValueNullFieldError('HomeState', 'allReview');
    }
    if (authors == null) {
      throw new BuiltValueNullFieldError('HomeState', 'authors');
    }
    if (categories == null) {
      throw new BuiltValueNullFieldError('HomeState', 'categories');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('HomeState', 'isLogin');
    }
    if (sectionBook == null) {
      throw new BuiltValueNullFieldError('HomeState', 'sectionBook');
    }
    if (success == null) {
      throw new BuiltValueNullFieldError('HomeState', 'success');
    }
    if (successAddQuote == null) {
      throw new BuiltValueNullFieldError('HomeState', 'successAddQuote');
    }
  }

  @override
  HomeState rebuild(void Function(HomeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeStateBuilder toBuilder() => new HomeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeState &&
        isLoading == other.isLoading &&
        error == other.error &&
        latestBooks == other.latestBooks &&
        mostReviewedBooks == other.mostReviewedBooks &&
        featuredBooks == other.featuredBooks &&
        allBooks == other.allBooks &&
        allQuote == other.allQuote &&
        allReview == other.allReview &&
        authors == other.authors &&
        categories == other.categories &&
        todayQuote == other.todayQuote &&
        todayReview == other.todayReview &&
        isLogin == other.isLogin &&
        sectionBook == other.sectionBook &&
        success == other.success &&
        successAddQuote == other.successAddQuote;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    isLoading
                                                                        .hashCode),
                                                                error.hashCode),
                                                            latestBooks
                                                                .hashCode),
                                                        mostReviewedBooks
                                                            .hashCode),
                                                    featuredBooks.hashCode),
                                                allBooks.hashCode),
                                            allQuote.hashCode),
                                        allReview.hashCode),
                                    authors.hashCode),
                                categories.hashCode),
                            todayQuote.hashCode),
                        todayReview.hashCode),
                    isLogin.hashCode),
                sectionBook.hashCode),
            success.hashCode),
        successAddQuote.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('latestBooks', latestBooks)
          ..add('mostReviewedBooks', mostReviewedBooks)
          ..add('featuredBooks', featuredBooks)
          ..add('allBooks', allBooks)
          ..add('allQuote', allQuote)
          ..add('allReview', allReview)
          ..add('authors', authors)
          ..add('categories', categories)
          ..add('todayQuote', todayQuote)
          ..add('todayReview', todayReview)
          ..add('isLogin', isLogin)
          ..add('sectionBook', sectionBook)
          ..add('success', success)
          ..add('successAddQuote', successAddQuote))
        .toString();
  }
}

class HomeStateBuilder implements Builder<HomeState, HomeStateBuilder> {
  _$HomeState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<Book> _latestBooks;
  ListBuilder<Book> get latestBooks =>
      _$this._latestBooks ??= new ListBuilder<Book>();
  set latestBooks(ListBuilder<Book> latestBooks) =>
      _$this._latestBooks = latestBooks;

  ListBuilder<Book> _mostReviewedBooks;
  ListBuilder<Book> get mostReviewedBooks =>
      _$this._mostReviewedBooks ??= new ListBuilder<Book>();
  set mostReviewedBooks(ListBuilder<Book> mostReviewedBooks) =>
      _$this._mostReviewedBooks = mostReviewedBooks;

  ListBuilder<Book> _featuredBooks;
  ListBuilder<Book> get featuredBooks =>
      _$this._featuredBooks ??= new ListBuilder<Book>();
  set featuredBooks(ListBuilder<Book> featuredBooks) =>
      _$this._featuredBooks = featuredBooks;

  ListBuilder<Book> _allBooks;
  ListBuilder<Book> get allBooks =>
      _$this._allBooks ??= new ListBuilder<Book>();
  set allBooks(ListBuilder<Book> allBooks) => _$this._allBooks = allBooks;

  ListBuilder<Quote> _allQuote;
  ListBuilder<Quote> get allQuote =>
      _$this._allQuote ??= new ListBuilder<Quote>();
  set allQuote(ListBuilder<Quote> allQuote) => _$this._allQuote = allQuote;

  ListBuilder<Review> _allReview;
  ListBuilder<Review> get allReview =>
      _$this._allReview ??= new ListBuilder<Review>();
  set allReview(ListBuilder<Review> allReview) => _$this._allReview = allReview;

  ListBuilder<Author> _authors;
  ListBuilder<Author> get authors =>
      _$this._authors ??= new ListBuilder<Author>();
  set authors(ListBuilder<Author> authors) => _$this._authors = authors;

  ListBuilder<Category> _categories;
  ListBuilder<Category> get categories =>
      _$this._categories ??= new ListBuilder<Category>();
  set categories(ListBuilder<Category> categories) =>
      _$this._categories = categories;

  QuoteBuilder _todayQuote;
  QuoteBuilder get todayQuote => _$this._todayQuote ??= new QuoteBuilder();
  set todayQuote(QuoteBuilder todayQuote) => _$this._todayQuote = todayQuote;

  ReviewBuilder _todayReview;
  ReviewBuilder get todayReview => _$this._todayReview ??= new ReviewBuilder();
  set todayReview(ReviewBuilder todayReview) =>
      _$this._todayReview = todayReview;

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  BookByCategoryModelBuilder _sectionBook;
  BookByCategoryModelBuilder get sectionBook =>
      _$this._sectionBook ??= new BookByCategoryModelBuilder();
  set sectionBook(BookByCategoryModelBuilder sectionBook) =>
      _$this._sectionBook = sectionBook;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _successAddQuote;
  bool get successAddQuote => _$this._successAddQuote;
  set successAddQuote(bool successAddQuote) =>
      _$this._successAddQuote = successAddQuote;

  HomeStateBuilder();

  HomeStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _latestBooks = _$v.latestBooks?.toBuilder();
      _mostReviewedBooks = _$v.mostReviewedBooks?.toBuilder();
      _featuredBooks = _$v.featuredBooks?.toBuilder();
      _allBooks = _$v.allBooks?.toBuilder();
      _allQuote = _$v.allQuote?.toBuilder();
      _allReview = _$v.allReview?.toBuilder();
      _authors = _$v.authors?.toBuilder();
      _categories = _$v.categories?.toBuilder();
      _todayQuote = _$v.todayQuote?.toBuilder();
      _todayReview = _$v.todayReview?.toBuilder();
      _isLogin = _$v.isLogin;
      _sectionBook = _$v.sectionBook?.toBuilder();
      _success = _$v.success;
      _successAddQuote = _$v.successAddQuote;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HomeState;
  }

  @override
  void update(void Function(HomeStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeState build() {
    _$HomeState _$result;
    try {
      _$result = _$v ??
          new _$HomeState._(
              isLoading: isLoading,
              error: error,
              latestBooks: latestBooks.build(),
              mostReviewedBooks: mostReviewedBooks.build(),
              featuredBooks: featuredBooks.build(),
              allBooks: allBooks.build(),
              allQuote: allQuote.build(),
              allReview: allReview.build(),
              authors: authors.build(),
              categories: categories.build(),
              todayQuote: _todayQuote?.build(),
              todayReview: _todayReview?.build(),
              isLogin: isLogin,
              sectionBook: sectionBook.build(),
              success: success,
              successAddQuote: successAddQuote);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'latestBooks';
        latestBooks.build();
        _$failedField = 'mostReviewedBooks';
        mostReviewedBooks.build();
        _$failedField = 'featuredBooks';
        featuredBooks.build();
        _$failedField = 'allBooks';
        allBooks.build();
        _$failedField = 'allQuote';
        allQuote.build();
        _$failedField = 'allReview';
        allReview.build();
        _$failedField = 'authors';
        authors.build();
        _$failedField = 'categories';
        categories.build();
        _$failedField = 'todayQuote';
        _todayQuote?.build();
        _$failedField = 'todayReview';
        _todayReview?.build();

        _$failedField = 'sectionBook';
        sectionBook.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HomeState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
