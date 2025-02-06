// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'settings_model.dart';

// // **************************************************************************
// // IsarCollectionGenerator
// // **************************************************************************

// // coverage:ignore-file
// // ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

// extension GetSettingsModelCollection on Isar {
//   IsarCollection<SettingsModel> get settingsModels => this.collection();
// }

// const SettingsModelSchema = CollectionSchema(
//   name: r'SettingsModel',
//   id: 4013777327486952906,
//   properties: {
//     r'email': PropertySchema(
//       id: 0,
//       name: r'email',
//       type: IsarType.string,
//     ),
//     r'id': PropertySchema(
//       id: 1,
//       name: r'id',
//       type: IsarType.string,
//     ),
//     r'isFirstTime': PropertySchema(
//       id: 2,
//       name: r'isFirstTime',
//       type: IsarType.bool,
//     ),
//     r'loggedIn': PropertySchema(
//       id: 3,
//       name: r'loggedIn',
//       type: IsarType.bool,
//     ),
//     r'password': PropertySchema(
//       id: 4,
//       name: r'password',
//       type: IsarType.string,
//     )
//   },
//   estimateSize: _settingsModelEstimateSize,
//   serialize: _settingsModelSerialize,
//   deserialize: _settingsModelDeserialize,
//   deserializeProp: _settingsModelDeserializeProp,
//   idName: r'isarId',
//   indexes: {},
//   links: {},
//   embeddedSchemas: {},
//   getId: _settingsModelGetId,
//   getLinks: _settingsModelGetLinks,
//   attach: _settingsModelAttach,
//   version: '3.1.8',
// );

// int _settingsModelEstimateSize(
//   SettingsModel object,
//   List<int> offsets,
//   Map<Type, List<int>> allOffsets,
// ) {
//   var bytesCount = offsets.last;
//   {
//     final value = object.email;
//     if (value != null) {
//       bytesCount += 3 + value.length * 3;
//     }
//   }
//   {
//     final value = object.id;
//     if (value != null) {
//       bytesCount += 3 + value.length * 3;
//     }
//   }
//   {
//     final value = object.password;
//     if (value != null) {
//       bytesCount += 3 + value.length * 3;
//     }
//   }
//   return bytesCount;
// }

// void _settingsModelSerialize(
//   SettingsModel object,
//   IsarWriter writer,
//   List<int> offsets,
//   Map<Type, List<int>> allOffsets,
// ) {
//   writer.writeString(offsets[0], object.email);
//   writer.writeString(offsets[1], object.id);
//   writer.writeBool(offsets[2], object.isFirstTime);
//   writer.writeBool(offsets[3], object.loggedIn);
//   writer.writeString(offsets[4], object.password);
// }

// SettingsModel _settingsModelDeserialize(
//   Id id,
//   IsarReader reader,
//   List<int> offsets,
//   Map<Type, List<int>> allOffsets,
// ) {
//   final object = SettingsModel(
//     email: reader.readStringOrNull(offsets[0]),
//     id: reader.readStringOrNull(offsets[1]),
//     isFirstTime: reader.readBoolOrNull(offsets[2]),
//     loggedIn: reader.readBoolOrNull(offsets[3]),
//     password: reader.readStringOrNull(offsets[4]),
//   );
//   return object;
// }

// P _settingsModelDeserializeProp<P>(
//   IsarReader reader,
//   int propertyId,
//   int offset,
//   Map<Type, List<int>> allOffsets,
// ) {
//   switch (propertyId) {
//     case 0:
//       return (reader.readStringOrNull(offset)) as P;
//     case 1:
//       return (reader.readStringOrNull(offset)) as P;
//     case 2:
//       return (reader.readBoolOrNull(offset)) as P;
//     case 3:
//       return (reader.readBoolOrNull(offset)) as P;
//     case 4:
//       return (reader.readStringOrNull(offset)) as P;
//     default:
//       throw IsarError('Unknown property with id $propertyId');
//   }
// }

// Id _settingsModelGetId(SettingsModel object) {
//   return object.isarId;
// }

// List<IsarLinkBase<dynamic>> _settingsModelGetLinks(SettingsModel object) {
//   return [];
// }

// void _settingsModelAttach(
//     IsarCollection<dynamic> col, Id id, SettingsModel object) {}

// extension SettingsModelQueryWhereSort
//     on QueryBuilder<SettingsModel, SettingsModel, QWhere> {
//   QueryBuilder<SettingsModel, SettingsModel, QAfterWhere> anyIsarId() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addWhereClause(const IdWhereClause.any());
//     });
//   }
// }

// extension SettingsModelQueryWhere
//     on QueryBuilder<SettingsModel, SettingsModel, QWhereClause> {
//   QueryBuilder<SettingsModel, SettingsModel, QAfterWhereClause> isarIdEqualTo(
//       Id isarId) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addWhereClause(IdWhereClause.between(
//         lower: isarId,
//         upper: isarId,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterWhereClause>
//       isarIdNotEqualTo(Id isarId) {
//     return QueryBuilder.apply(this, (query) {
//       if (query.whereSort == Sort.asc) {
//         return query
//             .addWhereClause(
//               IdWhereClause.lessThan(upper: isarId, includeUpper: false),
//             )
//             .addWhereClause(
//               IdWhereClause.greaterThan(lower: isarId, includeLower: false),
//             );
//       } else {
//         return query
//             .addWhereClause(
//               IdWhereClause.greaterThan(lower: isarId, includeLower: false),
//             )
//             .addWhereClause(
//               IdWhereClause.lessThan(upper: isarId, includeUpper: false),
//             );
//       }
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterWhereClause>
//       isarIdGreaterThan(Id isarId, {bool include = false}) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addWhereClause(
//         IdWhereClause.greaterThan(lower: isarId, includeLower: include),
//       );
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterWhereClause> isarIdLessThan(
//       Id isarId,
//       {bool include = false}) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addWhereClause(
//         IdWhereClause.lessThan(upper: isarId, includeUpper: include),
//       );
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterWhereClause> isarIdBetween(
//     Id lowerIsarId,
//     Id upperIsarId, {
//     bool includeLower = true,
//     bool includeUpper = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addWhereClause(IdWhereClause.between(
//         lower: lowerIsarId,
//         includeLower: includeLower,
//         upper: upperIsarId,
//         includeUpper: includeUpper,
//       ));
//     });
//   }
// }

// extension SettingsModelQueryFilter
//     on QueryBuilder<SettingsModel, SettingsModel, QFilterCondition> {
//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       emailIsNull() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(const FilterCondition.isNull(
//         property: r'email',
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       emailIsNotNull() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(const FilterCondition.isNotNull(
//         property: r'email',
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       emailEqualTo(
//     String? value, {
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.equalTo(
//         property: r'email',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       emailGreaterThan(
//     String? value, {
//     bool include = false,
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.greaterThan(
//         include: include,
//         property: r'email',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       emailLessThan(
//     String? value, {
//     bool include = false,
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.lessThan(
//         include: include,
//         property: r'email',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       emailBetween(
//     String? lower,
//     String? upper, {
//     bool includeLower = true,
//     bool includeUpper = true,
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.between(
//         property: r'email',
//         lower: lower,
//         includeLower: includeLower,
//         upper: upper,
//         includeUpper: includeUpper,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       emailStartsWith(
//     String value, {
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.startsWith(
//         property: r'email',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       emailEndsWith(
//     String value, {
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.endsWith(
//         property: r'email',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       emailContains(String value, {bool caseSensitive = true}) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.contains(
//         property: r'email',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       emailMatches(String pattern, {bool caseSensitive = true}) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.matches(
//         property: r'email',
//         wildcard: pattern,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       emailIsEmpty() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.equalTo(
//         property: r'email',
//         value: '',
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       emailIsNotEmpty() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.greaterThan(
//         property: r'email',
//         value: '',
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idIsNull() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(const FilterCondition.isNull(
//         property: r'id',
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       idIsNotNull() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(const FilterCondition.isNotNull(
//         property: r'id',
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idEqualTo(
//     String? value, {
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.equalTo(
//         property: r'id',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       idGreaterThan(
//     String? value, {
//     bool include = false,
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.greaterThan(
//         include: include,
//         property: r'id',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idLessThan(
//     String? value, {
//     bool include = false,
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.lessThan(
//         include: include,
//         property: r'id',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idBetween(
//     String? lower,
//     String? upper, {
//     bool includeLower = true,
//     bool includeUpper = true,
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.between(
//         property: r'id',
//         lower: lower,
//         includeLower: includeLower,
//         upper: upper,
//         includeUpper: includeUpper,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       idStartsWith(
//     String value, {
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.startsWith(
//         property: r'id',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idEndsWith(
//     String value, {
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.endsWith(
//         property: r'id',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idContains(
//       String value,
//       {bool caseSensitive = true}) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.contains(
//         property: r'id',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idMatches(
//       String pattern,
//       {bool caseSensitive = true}) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.matches(
//         property: r'id',
//         wildcard: pattern,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       idIsEmpty() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.equalTo(
//         property: r'id',
//         value: '',
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       idIsNotEmpty() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.greaterThan(
//         property: r'id',
//         value: '',
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       isFirstTimeIsNull() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(const FilterCondition.isNull(
//         property: r'isFirstTime',
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       isFirstTimeIsNotNull() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(const FilterCondition.isNotNull(
//         property: r'isFirstTime',
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       isFirstTimeEqualTo(bool? value) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.equalTo(
//         property: r'isFirstTime',
//         value: value,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       isarIdEqualTo(Id value) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.equalTo(
//         property: r'isarId',
//         value: value,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       isarIdGreaterThan(
//     Id value, {
//     bool include = false,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.greaterThan(
//         include: include,
//         property: r'isarId',
//         value: value,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       isarIdLessThan(
//     Id value, {
//     bool include = false,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.lessThan(
//         include: include,
//         property: r'isarId',
//         value: value,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       isarIdBetween(
//     Id lower,
//     Id upper, {
//     bool includeLower = true,
//     bool includeUpper = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.between(
//         property: r'isarId',
//         lower: lower,
//         includeLower: includeLower,
//         upper: upper,
//         includeUpper: includeUpper,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       loggedInIsNull() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(const FilterCondition.isNull(
//         property: r'loggedIn',
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       loggedInIsNotNull() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(const FilterCondition.isNotNull(
//         property: r'loggedIn',
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       loggedInEqualTo(bool? value) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.equalTo(
//         property: r'loggedIn',
//         value: value,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       passwordIsNull() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(const FilterCondition.isNull(
//         property: r'password',
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       passwordIsNotNull() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(const FilterCondition.isNotNull(
//         property: r'password',
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       passwordEqualTo(
//     String? value, {
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.equalTo(
//         property: r'password',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       passwordGreaterThan(
//     String? value, {
//     bool include = false,
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.greaterThan(
//         include: include,
//         property: r'password',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       passwordLessThan(
//     String? value, {
//     bool include = false,
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.lessThan(
//         include: include,
//         property: r'password',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       passwordBetween(
//     String? lower,
//     String? upper, {
//     bool includeLower = true,
//     bool includeUpper = true,
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.between(
//         property: r'password',
//         lower: lower,
//         includeLower: includeLower,
//         upper: upper,
//         includeUpper: includeUpper,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       passwordStartsWith(
//     String value, {
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.startsWith(
//         property: r'password',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       passwordEndsWith(
//     String value, {
//     bool caseSensitive = true,
//   }) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.endsWith(
//         property: r'password',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       passwordContains(String value, {bool caseSensitive = true}) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.contains(
//         property: r'password',
//         value: value,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       passwordMatches(String pattern, {bool caseSensitive = true}) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.matches(
//         property: r'password',
//         wildcard: pattern,
//         caseSensitive: caseSensitive,
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       passwordIsEmpty() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.equalTo(
//         property: r'password',
//         value: '',
//       ));
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
//       passwordIsNotEmpty() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addFilterCondition(FilterCondition.greaterThan(
//         property: r'password',
//         value: '',
//       ));
//     });
//   }
// }

// extension SettingsModelQueryObject
//     on QueryBuilder<SettingsModel, SettingsModel, QFilterCondition> {}

// extension SettingsModelQueryLinks
//     on QueryBuilder<SettingsModel, SettingsModel, QFilterCondition> {}

// extension SettingsModelQuerySortBy
//     on QueryBuilder<SettingsModel, SettingsModel, QSortBy> {
//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> sortByEmail() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'email', Sort.asc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> sortByEmailDesc() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'email', Sort.desc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> sortById() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'id', Sort.asc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> sortByIdDesc() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'id', Sort.desc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> sortByIsFirstTime() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'isFirstTime', Sort.asc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy>
//       sortByIsFirstTimeDesc() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'isFirstTime', Sort.desc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> sortByLoggedIn() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'loggedIn', Sort.asc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy>
//       sortByLoggedInDesc() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'loggedIn', Sort.desc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> sortByPassword() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'password', Sort.asc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy>
//       sortByPasswordDesc() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'password', Sort.desc);
//     });
//   }
// }

// extension SettingsModelQuerySortThenBy
//     on QueryBuilder<SettingsModel, SettingsModel, QSortThenBy> {
//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenByEmail() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'email', Sort.asc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenByEmailDesc() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'email', Sort.desc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenById() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'id', Sort.asc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenByIdDesc() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'id', Sort.desc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenByIsFirstTime() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'isFirstTime', Sort.asc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy>
//       thenByIsFirstTimeDesc() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'isFirstTime', Sort.desc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenByIsarId() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'isarId', Sort.asc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenByIsarIdDesc() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'isarId', Sort.desc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenByLoggedIn() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'loggedIn', Sort.asc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy>
//       thenByLoggedInDesc() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'loggedIn', Sort.desc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenByPassword() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'password', Sort.asc);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy>
//       thenByPasswordDesc() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addSortBy(r'password', Sort.desc);
//     });
//   }
// }

// extension SettingsModelQueryWhereDistinct
//     on QueryBuilder<SettingsModel, SettingsModel, QDistinct> {
//   QueryBuilder<SettingsModel, SettingsModel, QDistinct> distinctByEmail(
//       {bool caseSensitive = true}) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QDistinct> distinctById(
//       {bool caseSensitive = true}) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QDistinct>
//       distinctByIsFirstTime() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addDistinctBy(r'isFirstTime');
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QDistinct> distinctByLoggedIn() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addDistinctBy(r'loggedIn');
//     });
//   }

//   QueryBuilder<SettingsModel, SettingsModel, QDistinct> distinctByPassword(
//       {bool caseSensitive = true}) {
//     return QueryBuilder.apply(this, (query) {
//       return query.addDistinctBy(r'password', caseSensitive: caseSensitive);
//     });
//   }
// }

// extension SettingsModelQueryProperty
//     on QueryBuilder<SettingsModel, SettingsModel, QQueryProperty> {
//   QueryBuilder<SettingsModel, int, QQueryOperations> isarIdProperty() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addPropertyName(r'isarId');
//     });
//   }

//   QueryBuilder<SettingsModel, String?, QQueryOperations> emailProperty() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addPropertyName(r'email');
//     });
//   }

//   QueryBuilder<SettingsModel, String?, QQueryOperations> idProperty() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addPropertyName(r'id');
//     });
//   }

//   QueryBuilder<SettingsModel, bool?, QQueryOperations> isFirstTimeProperty() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addPropertyName(r'isFirstTime');
//     });
//   }

//   QueryBuilder<SettingsModel, bool?, QQueryOperations> loggedInProperty() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addPropertyName(r'loggedIn');
//     });
//   }

//   QueryBuilder<SettingsModel, String?, QQueryOperations> passwordProperty() {
//     return QueryBuilder.apply(this, (query) {
//       return query.addPropertyName(r'password');
//     });
//   }
// }
