// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_roll.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDiceRollCollection on Isar {
  IsarCollection<DiceRoll> get diceRolls => this.collection();
}

const DiceRollSchema = CollectionSchema(
  name: r'dice_roll_history',
  id: 3380783059516791628,
  properties: {
    r'count': PropertySchema(
      id: 0,
      name: r'count',
      type: IsarType.long,
    ),
    r'mod': PropertySchema(
      id: 1,
      name: r'mod',
      type: IsarType.long,
    ),
    r'result': PropertySchema(
      id: 2,
      name: r'result',
      type: IsarType.long,
    ),
    r'size': PropertySchema(
      id: 3,
      name: r'size',
      type: IsarType.long,
    )
  },
  estimateSize: _diceRollEstimateSize,
  serialize: _diceRollSerialize,
  deserialize: _diceRollDeserialize,
  deserializeProp: _diceRollDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _diceRollGetId,
  getLinks: _diceRollGetLinks,
  attach: _diceRollAttach,
  version: '3.1.0+1',
);

int _diceRollEstimateSize(
  DiceRoll object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _diceRollSerialize(
  DiceRoll object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.count);
  writer.writeLong(offsets[1], object.mod);
  writer.writeLong(offsets[2], object.result);
  writer.writeLong(offsets[3], object.size);
}

DiceRoll _diceRollDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DiceRoll(
    reader.readLong(offsets[0]),
    reader.readLong(offsets[3]),
    reader.readLong(offsets[1]),
    reader.readLong(offsets[2]),
  );
  object.id = id;
  return object;
}

P _diceRollDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _diceRollGetId(DiceRoll object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _diceRollGetLinks(DiceRoll object) {
  return [];
}

void _diceRollAttach(IsarCollection<dynamic> col, Id id, DiceRoll object) {
  object.id = id;
}

extension DiceRollQueryWhereSort on QueryBuilder<DiceRoll, DiceRoll, QWhere> {
  QueryBuilder<DiceRoll, DiceRoll, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DiceRollQueryWhere on QueryBuilder<DiceRoll, DiceRoll, QWhereClause> {
  QueryBuilder<DiceRoll, DiceRoll, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<DiceRoll, DiceRoll, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterWhereClause> idBetween(
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

extension DiceRollQueryFilter
    on QueryBuilder<DiceRoll, DiceRoll, QFilterCondition> {
  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> countEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> countGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> countLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> countBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'count',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> idGreaterThan(
    Id? value, {
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

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> idLessThan(
    Id? value, {
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

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> modEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mod',
        value: value,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> modGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mod',
        value: value,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> modLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mod',
        value: value,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> modBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mod',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> resultEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'result',
        value: value,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> resultGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'result',
        value: value,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> resultLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'result',
        value: value,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> resultBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'result',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> sizeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'size',
        value: value,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> sizeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'size',
        value: value,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> sizeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'size',
        value: value,
      ));
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterFilterCondition> sizeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'size',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DiceRollQueryObject
    on QueryBuilder<DiceRoll, DiceRoll, QFilterCondition> {}

extension DiceRollQueryLinks
    on QueryBuilder<DiceRoll, DiceRoll, QFilterCondition> {}

extension DiceRollQuerySortBy on QueryBuilder<DiceRoll, DiceRoll, QSortBy> {
  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> sortByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> sortByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> sortByMod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mod', Sort.asc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> sortByModDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mod', Sort.desc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> sortByResult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.asc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> sortByResultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.desc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> sortBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.asc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> sortBySizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.desc);
    });
  }
}

extension DiceRollQuerySortThenBy
    on QueryBuilder<DiceRoll, DiceRoll, QSortThenBy> {
  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> thenByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> thenByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> thenByMod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mod', Sort.asc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> thenByModDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mod', Sort.desc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> thenByResult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.asc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> thenByResultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.desc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> thenBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.asc);
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QAfterSortBy> thenBySizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.desc);
    });
  }
}

extension DiceRollQueryWhereDistinct
    on QueryBuilder<DiceRoll, DiceRoll, QDistinct> {
  QueryBuilder<DiceRoll, DiceRoll, QDistinct> distinctByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'count');
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QDistinct> distinctByMod() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mod');
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QDistinct> distinctByResult() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'result');
    });
  }

  QueryBuilder<DiceRoll, DiceRoll, QDistinct> distinctBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'size');
    });
  }
}

extension DiceRollQueryProperty
    on QueryBuilder<DiceRoll, DiceRoll, QQueryProperty> {
  QueryBuilder<DiceRoll, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DiceRoll, int, QQueryOperations> countProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'count');
    });
  }

  QueryBuilder<DiceRoll, int, QQueryOperations> modProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mod');
    });
  }

  QueryBuilder<DiceRoll, int, QQueryOperations> resultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'result');
    });
  }

  QueryBuilder<DiceRoll, int, QQueryOperations> sizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'size');
    });
  }
}
