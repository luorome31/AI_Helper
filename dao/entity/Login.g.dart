// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Login.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLoginCollection on Isar {
  IsarCollection<Login> get logins => this.collection();
}

const LoginSchema = CollectionSchema(
  name: r'Login',
  id: 7934634443166946965,
  properties: {},
  estimateSize: _loginEstimateSize,
  serialize: _loginSerialize,
  deserialize: _loginDeserialize,
  deserializeProp: _loginDeserializeProp,
  idName: r'isLogin',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _loginGetId,
  getLinks: _loginGetLinks,
  attach: _loginAttach,
  version: '3.1.0+1',
);

int _loginEstimateSize(
  Login object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _loginSerialize(
  Login object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
Login _loginDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Login(
    isLogin: id,
  );
  return object;
}

P _loginDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _loginGetId(Login object) {
  return object.isLogin ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _loginGetLinks(Login object) {
  return [];
}

void _loginAttach(IsarCollection<dynamic> col, Id id, Login object) {
  object.isLogin = id;
}

extension LoginQueryWhereSort on QueryBuilder<Login, Login, QWhere> {
  QueryBuilder<Login, Login, QAfterWhere> anyIsLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LoginQueryWhere on QueryBuilder<Login, Login, QWhereClause> {
  QueryBuilder<Login, Login, QAfterWhereClause> isLoginEqualTo(Id isLogin) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isLogin,
        upper: isLogin,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterWhereClause> isLoginNotEqualTo(Id isLogin) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isLogin, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isLogin, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isLogin, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isLogin, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Login, Login, QAfterWhereClause> isLoginGreaterThan(Id isLogin,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isLogin, includeLower: include),
      );
    });
  }

  QueryBuilder<Login, Login, QAfterWhereClause> isLoginLessThan(Id isLogin,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isLogin, includeUpper: include),
      );
    });
  }

  QueryBuilder<Login, Login, QAfterWhereClause> isLoginBetween(
    Id lowerIsLogin,
    Id upperIsLogin, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsLogin,
        includeLower: includeLower,
        upper: upperIsLogin,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LoginQueryFilter on QueryBuilder<Login, Login, QFilterCondition> {
  QueryBuilder<Login, Login, QAfterFilterCondition> isLoginIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isLogin',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> isLoginIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isLogin',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> isLoginEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isLogin',
        value: value,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> isLoginGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isLogin',
        value: value,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> isLoginLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isLogin',
        value: value,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> isLoginBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isLogin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LoginQueryObject on QueryBuilder<Login, Login, QFilterCondition> {}

extension LoginQueryLinks on QueryBuilder<Login, Login, QFilterCondition> {}

extension LoginQuerySortBy on QueryBuilder<Login, Login, QSortBy> {}

extension LoginQuerySortThenBy on QueryBuilder<Login, Login, QSortThenBy> {
  QueryBuilder<Login, Login, QAfterSortBy> thenByIsLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLogin', Sort.asc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> thenByIsLoginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLogin', Sort.desc);
    });
  }
}

extension LoginQueryWhereDistinct on QueryBuilder<Login, Login, QDistinct> {}

extension LoginQueryProperty on QueryBuilder<Login, Login, QQueryProperty> {
  QueryBuilder<Login, int, QQueryOperations> isLoginProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isLogin');
    });
  }
}
