// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aligner_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAlignerModelCollection on Isar {
  IsarCollection<AlignerModel> get alignerModels => this.collection();
}

const AlignerModelSchema = CollectionSchema(
  name: r'Aligner',
  id: 5594329613746203981,
  properties: {
    r'current': PropertySchema(
      id: 0,
      name: r'current',
      type: IsarType.bool,
    ),
    r'invisalingId': PropertySchema(
      id: 1,
      name: r'invisalingId',
      type: IsarType.long,
    ),
    r'notes': PropertySchema(
      id: 2,
      name: r'notes',
      type: IsarType.string,
    ),
    r'number': PropertySchema(
      id: 3,
      name: r'number',
      type: IsarType.long,
    ),
    r'numberOfDays': PropertySchema(
      id: 4,
      name: r'numberOfDays',
      type: IsarType.long,
    ),
    r'start': PropertySchema(
      id: 5,
      name: r'start',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _alignerModelEstimateSize,
  serialize: _alignerModelSerialize,
  deserialize: _alignerModelDeserialize,
  deserializeProp: _alignerModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _alignerModelGetId,
  getLinks: _alignerModelGetLinks,
  attach: _alignerModelAttach,
  version: '3.1.0+1',
);

int _alignerModelEstimateSize(
  AlignerModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.notes;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _alignerModelSerialize(
  AlignerModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.current);
  writer.writeLong(offsets[1], object.invisalingId);
  writer.writeString(offsets[2], object.notes);
  writer.writeLong(offsets[3], object.number);
  writer.writeLong(offsets[4], object.numberOfDays);
  writer.writeDateTime(offsets[5], object.start);
}

AlignerModel _alignerModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AlignerModel();
  object.current = reader.readBoolOrNull(offsets[0]);
  object.id = id;
  object.invisalingId = reader.readLongOrNull(offsets[1]);
  object.notes = reader.readStringOrNull(offsets[2]);
  object.number = reader.readLongOrNull(offsets[3]);
  object.numberOfDays = reader.readLongOrNull(offsets[4]);
  object.start = reader.readDateTimeOrNull(offsets[5]);
  return object;
}

P _alignerModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _alignerModelGetId(AlignerModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _alignerModelGetLinks(AlignerModel object) {
  return [];
}

void _alignerModelAttach(
    IsarCollection<dynamic> col, Id id, AlignerModel object) {
  object.id = id;
}

extension AlignerModelQueryWhereSort
    on QueryBuilder<AlignerModel, AlignerModel, QWhere> {
  QueryBuilder<AlignerModel, AlignerModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AlignerModelQueryWhere
    on QueryBuilder<AlignerModel, AlignerModel, QWhereClause> {
  QueryBuilder<AlignerModel, AlignerModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<AlignerModel, AlignerModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterWhereClause> idBetween(
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

extension AlignerModelQueryFilter
    on QueryBuilder<AlignerModel, AlignerModel, QFilterCondition> {
  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      currentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'current',
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      currentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'current',
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      currentEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'current',
        value: value,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      invisalingIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'invisalingId',
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      invisalingIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'invisalingId',
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      invisalingIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invisalingId',
        value: value,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      invisalingIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'invisalingId',
        value: value,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      invisalingIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'invisalingId',
        value: value,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      invisalingIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'invisalingId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      notesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      notesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition> notesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      notesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition> notesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition> notesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      notesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition> notesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition> notesContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition> notesMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      notesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      notesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      numberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'number',
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      numberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'number',
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition> numberEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      numberGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      numberLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition> numberBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      numberOfDaysIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'numberOfDays',
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      numberOfDaysIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'numberOfDays',
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      numberOfDaysEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberOfDays',
        value: value,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      numberOfDaysGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numberOfDays',
        value: value,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      numberOfDaysLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numberOfDays',
        value: value,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      numberOfDaysBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numberOfDays',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      startIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'start',
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      startIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'start',
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition> startEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'start',
        value: value,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition>
      startGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'start',
        value: value,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition> startLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'start',
        value: value,
      ));
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterFilterCondition> startBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'start',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AlignerModelQueryObject
    on QueryBuilder<AlignerModel, AlignerModel, QFilterCondition> {}

extension AlignerModelQueryLinks
    on QueryBuilder<AlignerModel, AlignerModel, QFilterCondition> {}

extension AlignerModelQuerySortBy
    on QueryBuilder<AlignerModel, AlignerModel, QSortBy> {
  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> sortByCurrent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'current', Sort.asc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> sortByCurrentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'current', Sort.desc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> sortByInvisalingId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invisalingId', Sort.asc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy>
      sortByInvisalingIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invisalingId', Sort.desc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> sortByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> sortByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> sortByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> sortByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> sortByNumberOfDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDays', Sort.asc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy>
      sortByNumberOfDaysDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDays', Sort.desc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> sortByStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'start', Sort.asc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> sortByStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'start', Sort.desc);
    });
  }
}

extension AlignerModelQuerySortThenBy
    on QueryBuilder<AlignerModel, AlignerModel, QSortThenBy> {
  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> thenByCurrent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'current', Sort.asc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> thenByCurrentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'current', Sort.desc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> thenByInvisalingId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invisalingId', Sort.asc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy>
      thenByInvisalingIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invisalingId', Sort.desc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> thenByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> thenByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> thenByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> thenByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> thenByNumberOfDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDays', Sort.asc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy>
      thenByNumberOfDaysDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfDays', Sort.desc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> thenByStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'start', Sort.asc);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QAfterSortBy> thenByStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'start', Sort.desc);
    });
  }
}

extension AlignerModelQueryWhereDistinct
    on QueryBuilder<AlignerModel, AlignerModel, QDistinct> {
  QueryBuilder<AlignerModel, AlignerModel, QDistinct> distinctByCurrent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'current');
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QDistinct> distinctByInvisalingId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invisalingId');
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QDistinct> distinctByNotes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QDistinct> distinctByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'number');
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QDistinct> distinctByNumberOfDays() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numberOfDays');
    });
  }

  QueryBuilder<AlignerModel, AlignerModel, QDistinct> distinctByStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'start');
    });
  }
}

extension AlignerModelQueryProperty
    on QueryBuilder<AlignerModel, AlignerModel, QQueryProperty> {
  QueryBuilder<AlignerModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AlignerModel, bool?, QQueryOperations> currentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'current');
    });
  }

  QueryBuilder<AlignerModel, int?, QQueryOperations> invisalingIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invisalingId');
    });
  }

  QueryBuilder<AlignerModel, String?, QQueryOperations> notesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notes');
    });
  }

  QueryBuilder<AlignerModel, int?, QQueryOperations> numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'number');
    });
  }

  QueryBuilder<AlignerModel, int?, QQueryOperations> numberOfDaysProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numberOfDays');
    });
  }

  QueryBuilder<AlignerModel, DateTime?, QQueryOperations> startProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'start');
    });
  }
}
