// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBookmarkCollection on Isar {
  IsarCollection<Bookmark> get bookmarks => this.collection();
}

const BookmarkSchema = CollectionSchema(
  name: r'Bookmark',
  id: 6727227738202460809,
  properties: {
    r'ayatId': PropertySchema(
      id: 0,
      name: r'ayatId',
      type: IsarType.long,
    ),
    r'suratId': PropertySchema(
      id: 1,
      name: r'suratId',
      type: IsarType.long,
    )
  },
  estimateSize: _bookmarkEstimateSize,
  serialize: _bookmarkSerialize,
  deserialize: _bookmarkDeserialize,
  deserializeProp: _bookmarkDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _bookmarkGetId,
  getLinks: _bookmarkGetLinks,
  attach: _bookmarkAttach,
  version: '3.1.0+1',
);

int _bookmarkEstimateSize(
  Bookmark object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _bookmarkSerialize(
  Bookmark object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.ayatId);
  writer.writeLong(offsets[1], object.suratId);
}

Bookmark _bookmarkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Bookmark(
    ayatId: reader.readLongOrNull(offsets[0]),
    suratId: reader.readLongOrNull(offsets[1]),
  );
  object.id = id;
  return object;
}

P _bookmarkDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _bookmarkGetId(Bookmark object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _bookmarkGetLinks(Bookmark object) {
  return [];
}

void _bookmarkAttach(IsarCollection<dynamic> col, Id id, Bookmark object) {
  object.id = id;
}

extension BookmarkQueryWhereSort on QueryBuilder<Bookmark, Bookmark, QWhere> {
  QueryBuilder<Bookmark, Bookmark, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BookmarkQueryWhere on QueryBuilder<Bookmark, Bookmark, QWhereClause> {
  QueryBuilder<Bookmark, Bookmark, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BookmarkQueryFilter
    on QueryBuilder<Bookmark, Bookmark, QFilterCondition> {
  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> ayatIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ayatId',
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> ayatIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ayatId',
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> ayatIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ayatId',
        value: value,
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> ayatIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ayatId',
        value: value,
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> ayatIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ayatId',
        value: value,
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> ayatIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ayatId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> suratIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'suratId',
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> suratIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'suratId',
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> suratIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'suratId',
        value: value,
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> suratIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'suratId',
        value: value,
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> suratIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'suratId',
        value: value,
      ));
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterFilterCondition> suratIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'suratId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BookmarkQueryObject
    on QueryBuilder<Bookmark, Bookmark, QFilterCondition> {}

extension BookmarkQueryLinks
    on QueryBuilder<Bookmark, Bookmark, QFilterCondition> {}

extension BookmarkQuerySortBy on QueryBuilder<Bookmark, Bookmark, QSortBy> {
  QueryBuilder<Bookmark, Bookmark, QAfterSortBy> sortByAyatId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatId', Sort.asc);
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterSortBy> sortByAyatIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatId', Sort.desc);
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterSortBy> sortBySuratId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suratId', Sort.asc);
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterSortBy> sortBySuratIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suratId', Sort.desc);
    });
  }
}

extension BookmarkQuerySortThenBy
    on QueryBuilder<Bookmark, Bookmark, QSortThenBy> {
  QueryBuilder<Bookmark, Bookmark, QAfterSortBy> thenByAyatId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatId', Sort.asc);
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterSortBy> thenByAyatIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatId', Sort.desc);
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterSortBy> thenBySuratId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suratId', Sort.asc);
    });
  }

  QueryBuilder<Bookmark, Bookmark, QAfterSortBy> thenBySuratIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suratId', Sort.desc);
    });
  }
}

extension BookmarkQueryWhereDistinct
    on QueryBuilder<Bookmark, Bookmark, QDistinct> {
  QueryBuilder<Bookmark, Bookmark, QDistinct> distinctByAyatId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ayatId');
    });
  }

  QueryBuilder<Bookmark, Bookmark, QDistinct> distinctBySuratId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'suratId');
    });
  }
}

extension BookmarkQueryProperty
    on QueryBuilder<Bookmark, Bookmark, QQueryProperty> {
  QueryBuilder<Bookmark, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Bookmark, int?, QQueryOperations> ayatIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ayatId');
    });
  }

  QueryBuilder<Bookmark, int?, QQueryOperations> suratIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'suratId');
    });
  }
}
