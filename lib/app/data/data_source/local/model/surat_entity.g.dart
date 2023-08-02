// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surat_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSuratCollection on Isar {
  IsarCollection<Surat> get surats => this.collection();
}

const SuratSchema = CollectionSchema(
  name: r'Surat',
  id: -4713738979277111048,
  properties: {
    r'arti': PropertySchema(
      id: 0,
      name: r'arti',
      type: IsarType.string,
    ),
    r'audio1': PropertySchema(
      id: 1,
      name: r'audio1',
      type: IsarType.string,
    ),
    r'audio2': PropertySchema(
      id: 2,
      name: r'audio2',
      type: IsarType.string,
    ),
    r'audio3': PropertySchema(
      id: 3,
      name: r'audio3',
      type: IsarType.string,
    ),
    r'audio4': PropertySchema(
      id: 4,
      name: r'audio4',
      type: IsarType.string,
    ),
    r'audio5': PropertySchema(
      id: 5,
      name: r'audio5',
      type: IsarType.string,
    ),
    r'deskripsi': PropertySchema(
      id: 6,
      name: r'deskripsi',
      type: IsarType.string,
    ),
    r'jumlahAyat': PropertySchema(
      id: 7,
      name: r'jumlahAyat',
      type: IsarType.string,
    ),
    r'nama': PropertySchema(
      id: 8,
      name: r'nama',
      type: IsarType.string,
    ),
    r'namaLatin': PropertySchema(
      id: 9,
      name: r'namaLatin',
      type: IsarType.string,
    ),
    r'tempatTurun': PropertySchema(
      id: 10,
      name: r'tempatTurun',
      type: IsarType.string,
    )
  },
  estimateSize: _suratEstimateSize,
  serialize: _suratSerialize,
  deserialize: _suratDeserialize,
  deserializeProp: _suratDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _suratGetId,
  getLinks: _suratGetLinks,
  attach: _suratAttach,
  version: '3.1.0+1',
);

int _suratEstimateSize(
  Surat object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.arti;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
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
    final value = object.deskripsi;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.jumlahAyat;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nama;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.namaLatin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tempatTurun;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _suratSerialize(
  Surat object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.arti);
  writer.writeString(offsets[1], object.audio1);
  writer.writeString(offsets[2], object.audio2);
  writer.writeString(offsets[3], object.audio3);
  writer.writeString(offsets[4], object.audio4);
  writer.writeString(offsets[5], object.audio5);
  writer.writeString(offsets[6], object.deskripsi);
  writer.writeString(offsets[7], object.jumlahAyat);
  writer.writeString(offsets[8], object.nama);
  writer.writeString(offsets[9], object.namaLatin);
  writer.writeString(offsets[10], object.tempatTurun);
}

Surat _suratDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Surat(
    arti: reader.readStringOrNull(offsets[0]),
    audio1: reader.readStringOrNull(offsets[1]),
    audio2: reader.readStringOrNull(offsets[2]),
    audio3: reader.readStringOrNull(offsets[3]),
    audio4: reader.readStringOrNull(offsets[4]),
    audio5: reader.readStringOrNull(offsets[5]),
    deskripsi: reader.readStringOrNull(offsets[6]),
    jumlahAyat: reader.readStringOrNull(offsets[7]),
    nama: reader.readStringOrNull(offsets[8]),
    namaLatin: reader.readStringOrNull(offsets[9]),
    tempatTurun: reader.readStringOrNull(offsets[10]),
  );
  object.id = id;
  return object;
}

P _suratDeserializeProp<P>(
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
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _suratGetId(Surat object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _suratGetLinks(Surat object) {
  return [];
}

void _suratAttach(IsarCollection<dynamic> col, Id id, Surat object) {
  object.id = id;
}

extension SuratQueryWhereSort on QueryBuilder<Surat, Surat, QWhere> {
  QueryBuilder<Surat, Surat, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SuratQueryWhere on QueryBuilder<Surat, Surat, QWhereClause> {
  QueryBuilder<Surat, Surat, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Surat, Surat, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Surat, Surat, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Surat, Surat, QAfterWhereClause> idBetween(
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

extension SuratQueryFilter on QueryBuilder<Surat, Surat, QFilterCondition> {
  QueryBuilder<Surat, Surat, QAfterFilterCondition> artiIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'arti',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> artiIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'arti',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> artiEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arti',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> artiGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'arti',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> artiLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'arti',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> artiBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'arti',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> artiStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'arti',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> artiEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'arti',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> artiContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'arti',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> artiMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'arti',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> artiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arti',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> artiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'arti',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio1IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'audio1',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio1IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'audio1',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio1EqualTo(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio1GreaterThan(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio1LessThan(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio1Between(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio1StartsWith(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio1EndsWith(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio1Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'audio1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio1Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'audio1',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio1IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio1',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio1IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'audio1',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio2IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'audio2',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio2IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'audio2',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio2EqualTo(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio2GreaterThan(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio2LessThan(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio2Between(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio2StartsWith(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio2EndsWith(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio2Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'audio2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio2Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'audio2',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio2',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'audio2',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio3IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'audio3',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio3IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'audio3',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio3EqualTo(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio3GreaterThan(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio3LessThan(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio3Between(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio3StartsWith(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio3EndsWith(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio3Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'audio3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio3Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'audio3',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio3IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio3',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio3IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'audio3',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio4IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'audio4',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio4IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'audio4',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio4EqualTo(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio4GreaterThan(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio4LessThan(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio4Between(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio4StartsWith(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio4EndsWith(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio4Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'audio4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio4Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'audio4',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio4IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio4',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio4IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'audio4',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio5IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'audio5',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio5IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'audio5',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio5EqualTo(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio5GreaterThan(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio5LessThan(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio5Between(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio5StartsWith(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio5EndsWith(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio5Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'audio5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio5Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'audio5',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio5IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio5',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> audio5IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'audio5',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> deskripsiIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deskripsi',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> deskripsiIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deskripsi',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> deskripsiEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deskripsi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> deskripsiGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deskripsi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> deskripsiLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deskripsi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> deskripsiBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deskripsi',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> deskripsiStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deskripsi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> deskripsiEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deskripsi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> deskripsiContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deskripsi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> deskripsiMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deskripsi',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> deskripsiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deskripsi',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> deskripsiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deskripsi',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Surat, Surat, QAfterFilterCondition> jumlahAyatIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'jumlahAyat',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> jumlahAyatIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'jumlahAyat',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> jumlahAyatEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jumlahAyat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> jumlahAyatGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'jumlahAyat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> jumlahAyatLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'jumlahAyat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> jumlahAyatBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'jumlahAyat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> jumlahAyatStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'jumlahAyat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> jumlahAyatEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'jumlahAyat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> jumlahAyatContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'jumlahAyat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> jumlahAyatMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'jumlahAyat',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> jumlahAyatIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jumlahAyat',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> jumlahAyatIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'jumlahAyat',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nama',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nama',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nama',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nama',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nama',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nama',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nama',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nama',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nama',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nama',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nama',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nama',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaLatinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'namaLatin',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaLatinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'namaLatin',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaLatinEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'namaLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaLatinGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'namaLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaLatinLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'namaLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaLatinBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'namaLatin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaLatinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'namaLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaLatinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'namaLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaLatinContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'namaLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaLatinMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'namaLatin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaLatinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'namaLatin',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> namaLatinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'namaLatin',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> tempatTurunIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tempatTurun',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> tempatTurunIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tempatTurun',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> tempatTurunEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tempatTurun',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> tempatTurunGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tempatTurun',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> tempatTurunLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tempatTurun',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> tempatTurunBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tempatTurun',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> tempatTurunStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tempatTurun',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> tempatTurunEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tempatTurun',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> tempatTurunContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tempatTurun',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> tempatTurunMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tempatTurun',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> tempatTurunIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tempatTurun',
        value: '',
      ));
    });
  }

  QueryBuilder<Surat, Surat, QAfterFilterCondition> tempatTurunIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tempatTurun',
        value: '',
      ));
    });
  }
}

extension SuratQueryObject on QueryBuilder<Surat, Surat, QFilterCondition> {}

extension SuratQueryLinks on QueryBuilder<Surat, Surat, QFilterCondition> {}

extension SuratQuerySortBy on QueryBuilder<Surat, Surat, QSortBy> {
  QueryBuilder<Surat, Surat, QAfterSortBy> sortByArti() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arti', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByArtiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arti', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByAudio1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio1', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByAudio1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio1', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByAudio2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio2', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByAudio2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio2', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByAudio3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio3', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByAudio3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio3', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByAudio4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio4', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByAudio4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio4', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByAudio5() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio5', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByAudio5Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio5', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByDeskripsi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deskripsi', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByDeskripsiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deskripsi', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByJumlahAyat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jumlahAyat', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByJumlahAyatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jumlahAyat', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByNama() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nama', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByNamaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nama', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByNamaLatin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namaLatin', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByNamaLatinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namaLatin', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByTempatTurun() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempatTurun', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> sortByTempatTurunDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempatTurun', Sort.desc);
    });
  }
}

extension SuratQuerySortThenBy on QueryBuilder<Surat, Surat, QSortThenBy> {
  QueryBuilder<Surat, Surat, QAfterSortBy> thenByArti() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arti', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByArtiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arti', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByAudio1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio1', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByAudio1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio1', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByAudio2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio2', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByAudio2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio2', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByAudio3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio3', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByAudio3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio3', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByAudio4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio4', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByAudio4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio4', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByAudio5() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio5', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByAudio5Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio5', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByDeskripsi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deskripsi', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByDeskripsiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deskripsi', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByJumlahAyat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jumlahAyat', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByJumlahAyatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jumlahAyat', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByNama() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nama', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByNamaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nama', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByNamaLatin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namaLatin', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByNamaLatinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namaLatin', Sort.desc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByTempatTurun() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempatTurun', Sort.asc);
    });
  }

  QueryBuilder<Surat, Surat, QAfterSortBy> thenByTempatTurunDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempatTurun', Sort.desc);
    });
  }
}

extension SuratQueryWhereDistinct on QueryBuilder<Surat, Surat, QDistinct> {
  QueryBuilder<Surat, Surat, QDistinct> distinctByArti(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'arti', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Surat, Surat, QDistinct> distinctByAudio1(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'audio1', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Surat, Surat, QDistinct> distinctByAudio2(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'audio2', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Surat, Surat, QDistinct> distinctByAudio3(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'audio3', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Surat, Surat, QDistinct> distinctByAudio4(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'audio4', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Surat, Surat, QDistinct> distinctByAudio5(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'audio5', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Surat, Surat, QDistinct> distinctByDeskripsi(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deskripsi', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Surat, Surat, QDistinct> distinctByJumlahAyat(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jumlahAyat', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Surat, Surat, QDistinct> distinctByNama(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nama', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Surat, Surat, QDistinct> distinctByNamaLatin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'namaLatin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Surat, Surat, QDistinct> distinctByTempatTurun(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tempatTurun', caseSensitive: caseSensitive);
    });
  }
}

extension SuratQueryProperty on QueryBuilder<Surat, Surat, QQueryProperty> {
  QueryBuilder<Surat, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Surat, String?, QQueryOperations> artiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'arti');
    });
  }

  QueryBuilder<Surat, String?, QQueryOperations> audio1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'audio1');
    });
  }

  QueryBuilder<Surat, String?, QQueryOperations> audio2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'audio2');
    });
  }

  QueryBuilder<Surat, String?, QQueryOperations> audio3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'audio3');
    });
  }

  QueryBuilder<Surat, String?, QQueryOperations> audio4Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'audio4');
    });
  }

  QueryBuilder<Surat, String?, QQueryOperations> audio5Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'audio5');
    });
  }

  QueryBuilder<Surat, String?, QQueryOperations> deskripsiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deskripsi');
    });
  }

  QueryBuilder<Surat, String?, QQueryOperations> jumlahAyatProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jumlahAyat');
    });
  }

  QueryBuilder<Surat, String?, QQueryOperations> namaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nama');
    });
  }

  QueryBuilder<Surat, String?, QQueryOperations> namaLatinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'namaLatin');
    });
  }

  QueryBuilder<Surat, String?, QQueryOperations> tempatTurunProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tempatTurun');
    });
  }
}
