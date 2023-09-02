// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riwayat_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRiwayatCollection on Isar {
  IsarCollection<Riwayat> get riwayats => this.collection();
}

const RiwayatSchema = CollectionSchema(
  name: r'Riwayat',
  id: -1499772530633941267,
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
  estimateSize: _riwayatEstimateSize,
  serialize: _riwayatSerialize,
  deserialize: _riwayatDeserialize,
  deserializeProp: _riwayatDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _riwayatGetId,
  getLinks: _riwayatGetLinks,
  attach: _riwayatAttach,
  version: '3.1.0+1',
);

int _riwayatEstimateSize(
  Riwayat object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _riwayatSerialize(
  Riwayat object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.ayatId);
  writer.writeLong(offsets[1], object.suratId);
}

Riwayat _riwayatDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Riwayat(
    ayatId: reader.readLongOrNull(offsets[0]),
    suratId: reader.readLongOrNull(offsets[1]),
  );
  object.id = id;
  return object;
}

P _riwayatDeserializeProp<P>(
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

Id _riwayatGetId(Riwayat object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _riwayatGetLinks(Riwayat object) {
  return [];
}

void _riwayatAttach(IsarCollection<dynamic> col, Id id, Riwayat object) {
  object.id = id;
}

extension RiwayatQueryWhereSort on QueryBuilder<Riwayat, Riwayat, QWhere> {
  QueryBuilder<Riwayat, Riwayat, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RiwayatQueryWhere on QueryBuilder<Riwayat, Riwayat, QWhereClause> {
  QueryBuilder<Riwayat, Riwayat, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Riwayat, Riwayat, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterWhereClause> idBetween(
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

extension RiwayatQueryFilter
    on QueryBuilder<Riwayat, Riwayat, QFilterCondition> {
  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> ayatIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ayatId',
      ));
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> ayatIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ayatId',
      ));
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> ayatIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ayatId',
        value: value,
      ));
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> ayatIdGreaterThan(
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

  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> ayatIdLessThan(
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

  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> ayatIdBetween(
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

  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> suratIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'suratId',
      ));
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> suratIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'suratId',
      ));
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> suratIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'suratId',
        value: value,
      ));
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> suratIdGreaterThan(
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

  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> suratIdLessThan(
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

  QueryBuilder<Riwayat, Riwayat, QAfterFilterCondition> suratIdBetween(
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

extension RiwayatQueryObject
    on QueryBuilder<Riwayat, Riwayat, QFilterCondition> {}

extension RiwayatQueryLinks
    on QueryBuilder<Riwayat, Riwayat, QFilterCondition> {}

extension RiwayatQuerySortBy on QueryBuilder<Riwayat, Riwayat, QSortBy> {
  QueryBuilder<Riwayat, Riwayat, QAfterSortBy> sortByAyatId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatId', Sort.asc);
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterSortBy> sortByAyatIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatId', Sort.desc);
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterSortBy> sortBySuratId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suratId', Sort.asc);
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterSortBy> sortBySuratIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suratId', Sort.desc);
    });
  }
}

extension RiwayatQuerySortThenBy
    on QueryBuilder<Riwayat, Riwayat, QSortThenBy> {
  QueryBuilder<Riwayat, Riwayat, QAfterSortBy> thenByAyatId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatId', Sort.asc);
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterSortBy> thenByAyatIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatId', Sort.desc);
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterSortBy> thenBySuratId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suratId', Sort.asc);
    });
  }

  QueryBuilder<Riwayat, Riwayat, QAfterSortBy> thenBySuratIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suratId', Sort.desc);
    });
  }
}

extension RiwayatQueryWhereDistinct
    on QueryBuilder<Riwayat, Riwayat, QDistinct> {
  QueryBuilder<Riwayat, Riwayat, QDistinct> distinctByAyatId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ayatId');
    });
  }

  QueryBuilder<Riwayat, Riwayat, QDistinct> distinctBySuratId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'suratId');
    });
  }
}

extension RiwayatQueryProperty
    on QueryBuilder<Riwayat, Riwayat, QQueryProperty> {
  QueryBuilder<Riwayat, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Riwayat, int?, QQueryOperations> ayatIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ayatId');
    });
  }

  QueryBuilder<Riwayat, int?, QQueryOperations> suratIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'suratId');
    });
  }
}
