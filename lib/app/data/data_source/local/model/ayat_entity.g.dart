// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayat_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAyatCollection on Isar {
  IsarCollection<Ayat> get ayats => this.collection();
}

const AyatSchema = CollectionSchema(
  name: r'Ayat',
  id: 2033321341854005869,
  properties: {
    r'audio1': PropertySchema(
      id: 0,
      name: r'audio1',
      type: IsarType.string,
    ),
    r'audio2': PropertySchema(
      id: 1,
      name: r'audio2',
      type: IsarType.string,
    ),
    r'audio3': PropertySchema(
      id: 2,
      name: r'audio3',
      type: IsarType.string,
    ),
    r'audio4': PropertySchema(
      id: 3,
      name: r'audio4',
      type: IsarType.string,
    ),
    r'audio5': PropertySchema(
      id: 4,
      name: r'audio5',
      type: IsarType.string,
    ),
    r'teksArab': PropertySchema(
      id: 5,
      name: r'teksArab',
      type: IsarType.string,
    ),
    r'teksIndonesia': PropertySchema(
      id: 6,
      name: r'teksIndonesia',
      type: IsarType.string,
    ),
    r'teksLatin': PropertySchema(
      id: 7,
      name: r'teksLatin',
      type: IsarType.string,
    )
  },
  estimateSize: _ayatEstimateSize,
  serialize: _ayatSerialize,
  deserialize: _ayatDeserialize,
  deserializeProp: _ayatDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _ayatGetId,
  getLinks: _ayatGetLinks,
  attach: _ayatAttach,
  version: '3.1.0+1',
);

int _ayatEstimateSize(
  Ayat object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.audio1;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.audio2;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.audio3;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.audio4;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.audio5;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.teksArab;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.teksIndonesia;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.teksLatin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _ayatSerialize(
  Ayat object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.audio1);
  writer.writeString(offsets[1], object.audio2);
  writer.writeString(offsets[2], object.audio3);
  writer.writeString(offsets[3], object.audio4);
  writer.writeString(offsets[4], object.audio5);
  writer.writeString(offsets[5], object.teksArab);
  writer.writeString(offsets[6], object.teksIndonesia);
  writer.writeString(offsets[7], object.teksLatin);
}

Ayat _ayatDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Ayat(
    audio1: reader.readStringOrNull(offsets[0]),
    audio2: reader.readStringOrNull(offsets[1]),
    audio3: reader.readStringOrNull(offsets[2]),
    audio4: reader.readStringOrNull(offsets[3]),
    audio5: reader.readStringOrNull(offsets[4]),
    teksArab: reader.readStringOrNull(offsets[5]),
    teksIndonesia: reader.readStringOrNull(offsets[6]),
    teksLatin: reader.readStringOrNull(offsets[7]),
  );
  object.id = id;
  return object;
}

P _ayatDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _ayatGetId(Ayat object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _ayatGetLinks(Ayat object) {
  return [];
}

void _ayatAttach(IsarCollection<dynamic> col, Id id, Ayat object) {
  object.id = id;
}

extension AyatQueryWhereSort on QueryBuilder<Ayat, Ayat, QWhere> {
  QueryBuilder<Ayat, Ayat, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AyatQueryWhere on QueryBuilder<Ayat, Ayat, QWhereClause> {
  QueryBuilder<Ayat, Ayat, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Ayat, Ayat, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterWhereClause> idBetween(
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

extension AyatQueryFilter on QueryBuilder<Ayat, Ayat, QFilterCondition> {
  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio1IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'audio1',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio1IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'audio1',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio1EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio1GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'audio1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio1LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'audio1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio1Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'audio1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio1StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'audio1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio1EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'audio1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio1Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'audio1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio1Matches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'audio1',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio1IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio1',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio1IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'audio1',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio2IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'audio2',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio2IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'audio2',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio2EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio2GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'audio2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio2LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'audio2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio2Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'audio2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio2StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'audio2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio2EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'audio2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio2Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'audio2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio2Matches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'audio2',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio2',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'audio2',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio3IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'audio3',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio3IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'audio3',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio3EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio3GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'audio3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio3LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'audio3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio3Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'audio3',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio3StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'audio3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio3EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'audio3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio3Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'audio3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio3Matches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'audio3',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio3IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio3',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio3IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'audio3',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio4IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'audio4',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio4IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'audio4',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio4EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio4GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'audio4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio4LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'audio4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio4Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'audio4',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio4StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'audio4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio4EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'audio4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio4Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'audio4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio4Matches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'audio4',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio4IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio4',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio4IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'audio4',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio5IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'audio5',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio5IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'audio5',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio5EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio5GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'audio5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio5LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'audio5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio5Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'audio5',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio5StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'audio5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio5EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'audio5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio5Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'audio5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio5Matches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'audio5',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio5IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio5',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> audio5IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'audio5',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksArabIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'teksArab',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksArabIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'teksArab',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksArabEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teksArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksArabGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'teksArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksArabLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'teksArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksArabBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'teksArab',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksArabStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'teksArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksArabEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'teksArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksArabContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'teksArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksArabMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'teksArab',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksArabIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teksArab',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksArabIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'teksArab',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksIndonesiaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'teksIndonesia',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksIndonesiaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'teksIndonesia',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksIndonesiaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teksIndonesia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksIndonesiaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'teksIndonesia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksIndonesiaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'teksIndonesia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksIndonesiaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'teksIndonesia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksIndonesiaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'teksIndonesia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksIndonesiaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'teksIndonesia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksIndonesiaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'teksIndonesia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksIndonesiaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'teksIndonesia',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksIndonesiaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teksIndonesia',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksIndonesiaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'teksIndonesia',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksLatinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'teksLatin',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksLatinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'teksLatin',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksLatinEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teksLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksLatinGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'teksLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksLatinLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'teksLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksLatinBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'teksLatin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksLatinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'teksLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksLatinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'teksLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksLatinContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'teksLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksLatinMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'teksLatin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksLatinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teksLatin',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterFilterCondition> teksLatinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'teksLatin',
        value: '',
      ));
    });
  }
}

extension AyatQueryObject on QueryBuilder<Ayat, Ayat, QFilterCondition> {}

extension AyatQueryLinks on QueryBuilder<Ayat, Ayat, QFilterCondition> {}

extension AyatQuerySortBy on QueryBuilder<Ayat, Ayat, QSortBy> {
  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByAudio1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio1', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByAudio1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio1', Sort.desc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByAudio2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio2', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByAudio2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio2', Sort.desc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByAudio3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio3', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByAudio3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio3', Sort.desc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByAudio4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio4', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByAudio4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio4', Sort.desc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByAudio5() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio5', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByAudio5Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio5', Sort.desc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByTeksArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teksArab', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByTeksArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teksArab', Sort.desc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByTeksIndonesia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teksIndonesia', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByTeksIndonesiaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teksIndonesia', Sort.desc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByTeksLatin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teksLatin', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> sortByTeksLatinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teksLatin', Sort.desc);
    });
  }
}

extension AyatQuerySortThenBy on QueryBuilder<Ayat, Ayat, QSortThenBy> {
  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByAudio1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio1', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByAudio1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio1', Sort.desc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByAudio2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio2', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByAudio2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio2', Sort.desc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByAudio3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio3', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByAudio3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio3', Sort.desc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByAudio4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio4', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByAudio4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio4', Sort.desc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByAudio5() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio5', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByAudio5Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio5', Sort.desc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByTeksArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teksArab', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByTeksArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teksArab', Sort.desc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByTeksIndonesia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teksIndonesia', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByTeksIndonesiaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teksIndonesia', Sort.desc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByTeksLatin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teksLatin', Sort.asc);
    });
  }

  QueryBuilder<Ayat, Ayat, QAfterSortBy> thenByTeksLatinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teksLatin', Sort.desc);
    });
  }
}

extension AyatQueryWhereDistinct on QueryBuilder<Ayat, Ayat, QDistinct> {
  QueryBuilder<Ayat, Ayat, QDistinct> distinctByAudio1(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'audio1', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayat, Ayat, QDistinct> distinctByAudio2(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'audio2', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayat, Ayat, QDistinct> distinctByAudio3(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'audio3', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayat, Ayat, QDistinct> distinctByAudio4(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'audio4', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayat, Ayat, QDistinct> distinctByAudio5(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'audio5', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayat, Ayat, QDistinct> distinctByTeksArab(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teksArab', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayat, Ayat, QDistinct> distinctByTeksIndonesia(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teksIndonesia',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayat, Ayat, QDistinct> distinctByTeksLatin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teksLatin', caseSensitive: caseSensitive);
    });
  }
}

extension AyatQueryProperty on QueryBuilder<Ayat, Ayat, QQueryProperty> {
  QueryBuilder<Ayat, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Ayat, String?, QQueryOperations> audio1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'audio1');
    });
  }

  QueryBuilder<Ayat, String?, QQueryOperations> audio2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'audio2');
    });
  }

  QueryBuilder<Ayat, String?, QQueryOperations> audio3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'audio3');
    });
  }

  QueryBuilder<Ayat, String?, QQueryOperations> audio4Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'audio4');
    });
  }

  QueryBuilder<Ayat, String?, QQueryOperations> audio5Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'audio5');
    });
  }

  QueryBuilder<Ayat, String?, QQueryOperations> teksArabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teksArab');
    });
  }

  QueryBuilder<Ayat, String?, QQueryOperations> teksIndonesiaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teksIndonesia');
    });
  }

  QueryBuilder<Ayat, String?, QQueryOperations> teksLatinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teksLatin');
    });
  }
}
