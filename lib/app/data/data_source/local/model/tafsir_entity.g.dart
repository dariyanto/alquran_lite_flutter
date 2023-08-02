// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tafsir_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTafsirCollection on Isar {
  IsarCollection<Tafsir> get tafsirs => this.collection();
}

const TafsirSchema = CollectionSchema(
  name: r'Tafsir',
  id: 760053279169641298,
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
    ),
    r'teks': PropertySchema(
      id: 2,
      name: r'teks',
      type: IsarType.string,
    )
  },
  estimateSize: _tafsirEstimateSize,
  serialize: _tafsirSerialize,
  deserialize: _tafsirDeserialize,
  deserializeProp: _tafsirDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _tafsirGetId,
  getLinks: _tafsirGetLinks,
  attach: _tafsirAttach,
  version: '3.1.0+1',
);

int _tafsirEstimateSize(
  Tafsir object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.teks;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _tafsirSerialize(
  Tafsir object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.ayatId);
  writer.writeLong(offsets[1], object.suratId);
  writer.writeString(offsets[2], object.teks);
}

Tafsir _tafsirDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Tafsir(
    ayatId: reader.readLongOrNull(offsets[0]),
    suratId: reader.readLongOrNull(offsets[1]),
    teks: reader.readStringOrNull(offsets[2]),
  );
  object.id = id;
  return object;
}

P _tafsirDeserializeProp<P>(
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
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tafsirGetId(Tafsir object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tafsirGetLinks(Tafsir object) {
  return [];
}

void _tafsirAttach(IsarCollection<dynamic> col, Id id, Tafsir object) {
  object.id = id;
}

extension TafsirQueryWhereSort on QueryBuilder<Tafsir, Tafsir, QWhere> {
  QueryBuilder<Tafsir, Tafsir, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TafsirQueryWhere on QueryBuilder<Tafsir, Tafsir, QWhereClause> {
  QueryBuilder<Tafsir, Tafsir, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Tafsir, Tafsir, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterWhereClause> idBetween(
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

extension TafsirQueryFilter on QueryBuilder<Tafsir, Tafsir, QFilterCondition> {
  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> ayatIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ayatId',
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> ayatIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ayatId',
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> ayatIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ayatId',
        value: value,
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> ayatIdGreaterThan(
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

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> ayatIdLessThan(
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

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> ayatIdBetween(
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

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> suratIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'suratId',
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> suratIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'suratId',
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> suratIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'suratId',
        value: value,
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> suratIdGreaterThan(
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

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> suratIdLessThan(
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

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> suratIdBetween(
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

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> teksIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'teks',
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> teksIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'teks',
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> teksEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> teksGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'teks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> teksLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'teks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> teksBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'teks',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> teksStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'teks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> teksEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'teks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> teksContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'teks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> teksMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'teks',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> teksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teks',
        value: '',
      ));
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterFilterCondition> teksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'teks',
        value: '',
      ));
    });
  }
}

extension TafsirQueryObject on QueryBuilder<Tafsir, Tafsir, QFilterCondition> {}

extension TafsirQueryLinks on QueryBuilder<Tafsir, Tafsir, QFilterCondition> {}

extension TafsirQuerySortBy on QueryBuilder<Tafsir, Tafsir, QSortBy> {
  QueryBuilder<Tafsir, Tafsir, QAfterSortBy> sortByAyatId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatId', Sort.asc);
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterSortBy> sortByAyatIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatId', Sort.desc);
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterSortBy> sortBySuratId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suratId', Sort.asc);
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterSortBy> sortBySuratIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suratId', Sort.desc);
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterSortBy> sortByTeks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teks', Sort.asc);
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterSortBy> sortByTeksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teks', Sort.desc);
    });
  }
}

extension TafsirQuerySortThenBy on QueryBuilder<Tafsir, Tafsir, QSortThenBy> {
  QueryBuilder<Tafsir, Tafsir, QAfterSortBy> thenByAyatId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatId', Sort.asc);
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterSortBy> thenByAyatIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatId', Sort.desc);
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterSortBy> thenBySuratId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suratId', Sort.asc);
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterSortBy> thenBySuratIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suratId', Sort.desc);
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterSortBy> thenByTeks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teks', Sort.asc);
    });
  }

  QueryBuilder<Tafsir, Tafsir, QAfterSortBy> thenByTeksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teks', Sort.desc);
    });
  }
}

extension TafsirQueryWhereDistinct on QueryBuilder<Tafsir, Tafsir, QDistinct> {
  QueryBuilder<Tafsir, Tafsir, QDistinct> distinctByAyatId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ayatId');
    });
  }

  QueryBuilder<Tafsir, Tafsir, QDistinct> distinctBySuratId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'suratId');
    });
  }

  QueryBuilder<Tafsir, Tafsir, QDistinct> distinctByTeks(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teks', caseSensitive: caseSensitive);
    });
  }
}

extension TafsirQueryProperty on QueryBuilder<Tafsir, Tafsir, QQueryProperty> {
  QueryBuilder<Tafsir, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Tafsir, int?, QQueryOperations> ayatIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ayatId');
    });
  }

  QueryBuilder<Tafsir, int?, QQueryOperations> suratIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'suratId');
    });
  }

  QueryBuilder<Tafsir, String?, QQueryOperations> teksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teks');
    });
  }
}
