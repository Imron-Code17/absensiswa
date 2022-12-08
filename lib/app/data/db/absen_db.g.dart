// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absen_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Kela extends DataClass implements Insertable<Kela> {
  final int? id;
  final String kelas;
  final String desc;
  Kela({this.id, required this.kelas, required this.desc});
  factory Kela.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Kela(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      kelas: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}kelas'])!,
      desc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}desc'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['kelas'] = Variable<String>(kelas);
    map['desc'] = Variable<String>(desc);
    return map;
  }

  KelasCompanion toCompanion(bool nullToAbsent) {
    return KelasCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      kelas: Value(kelas),
      desc: Value(desc),
    );
  }

  factory Kela.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Kela(
      id: serializer.fromJson<int?>(json['id']),
      kelas: serializer.fromJson<String>(json['kelas']),
      desc: serializer.fromJson<String>(json['desc']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'kelas': serializer.toJson<String>(kelas),
      'desc': serializer.toJson<String>(desc),
    };
  }

  Kela copyWith({int? id, String? kelas, String? desc}) => Kela(
        id: id ?? this.id,
        kelas: kelas ?? this.kelas,
        desc: desc ?? this.desc,
      );
  @override
  String toString() {
    return (StringBuffer('Kela(')
          ..write('id: $id, ')
          ..write('kelas: $kelas, ')
          ..write('desc: $desc')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, kelas, desc);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Kela &&
          other.id == this.id &&
          other.kelas == this.kelas &&
          other.desc == this.desc);
}

class KelasCompanion extends UpdateCompanion<Kela> {
  final Value<int?> id;
  final Value<String> kelas;
  final Value<String> desc;
  const KelasCompanion({
    this.id = const Value.absent(),
    this.kelas = const Value.absent(),
    this.desc = const Value.absent(),
  });
  KelasCompanion.insert({
    this.id = const Value.absent(),
    required String kelas,
    required String desc,
  })  : kelas = Value(kelas),
        desc = Value(desc);
  static Insertable<Kela> custom({
    Expression<int?>? id,
    Expression<String>? kelas,
    Expression<String>? desc,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (kelas != null) 'kelas': kelas,
      if (desc != null) 'desc': desc,
    });
  }

  KelasCompanion copyWith(
      {Value<int?>? id, Value<String>? kelas, Value<String>? desc}) {
    return KelasCompanion(
      id: id ?? this.id,
      kelas: kelas ?? this.kelas,
      desc: desc ?? this.desc,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (kelas.present) {
      map['kelas'] = Variable<String>(kelas.value);
    }
    if (desc.present) {
      map['desc'] = Variable<String>(desc.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KelasCompanion(')
          ..write('id: $id, ')
          ..write('kelas: $kelas, ')
          ..write('desc: $desc')
          ..write(')'))
        .toString();
  }
}

class $KelasTable extends Kelas with TableInfo<$KelasTable, Kela> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KelasTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _kelasMeta = const VerificationMeta('kelas');
  @override
  late final GeneratedColumn<String?> kelas = GeneratedColumn<String?>(
      'kelas', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _descMeta = const VerificationMeta('desc');
  @override
  late final GeneratedColumn<String?> desc = GeneratedColumn<String?>(
      'desc', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 250),
      type: const StringType(),
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, kelas, desc];
  @override
  String get aliasedName => _alias ?? 'kelas';
  @override
  String get actualTableName => 'kelas';
  @override
  VerificationContext validateIntegrity(Insertable<Kela> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('kelas')) {
      context.handle(
          _kelasMeta, kelas.isAcceptableOrUnknown(data['kelas']!, _kelasMeta));
    } else if (isInserting) {
      context.missing(_kelasMeta);
    }
    if (data.containsKey('desc')) {
      context.handle(
          _descMeta, desc.isAcceptableOrUnknown(data['desc']!, _descMeta));
    } else if (isInserting) {
      context.missing(_descMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Kela map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Kela.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $KelasTable createAlias(String alias) {
    return $KelasTable(attachedDatabase, alias);
  }
}

class SiswatabData extends DataClass implements Insertable<SiswatabData> {
  final int? id;
  final String nama;
  final int nis;
  final String? kelamin;
  SiswatabData({this.id, required this.nama, required this.nis, this.kelamin});
  factory SiswatabData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SiswatabData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nama: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nama'])!,
      nis: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nis'])!,
      kelamin: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}kelamin']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['nama'] = Variable<String>(nama);
    map['nis'] = Variable<int>(nis);
    if (!nullToAbsent || kelamin != null) {
      map['kelamin'] = Variable<String?>(kelamin);
    }
    return map;
  }

  SiswatabCompanion toCompanion(bool nullToAbsent) {
    return SiswatabCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nama: Value(nama),
      nis: Value(nis),
      kelamin: kelamin == null && nullToAbsent
          ? const Value.absent()
          : Value(kelamin),
    );
  }

  factory SiswatabData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SiswatabData(
      id: serializer.fromJson<int?>(json['id']),
      nama: serializer.fromJson<String>(json['nama']),
      nis: serializer.fromJson<int>(json['nis']),
      kelamin: serializer.fromJson<String?>(json['kelamin']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'nama': serializer.toJson<String>(nama),
      'nis': serializer.toJson<int>(nis),
      'kelamin': serializer.toJson<String?>(kelamin),
    };
  }

  SiswatabData copyWith({int? id, String? nama, int? nis, String? kelamin}) =>
      SiswatabData(
        id: id ?? this.id,
        nama: nama ?? this.nama,
        nis: nis ?? this.nis,
        kelamin: kelamin ?? this.kelamin,
      );
  @override
  String toString() {
    return (StringBuffer('SiswatabData(')
          ..write('id: $id, ')
          ..write('nama: $nama, ')
          ..write('nis: $nis, ')
          ..write('kelamin: $kelamin')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nama, nis, kelamin);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SiswatabData &&
          other.id == this.id &&
          other.nama == this.nama &&
          other.nis == this.nis &&
          other.kelamin == this.kelamin);
}

class SiswatabCompanion extends UpdateCompanion<SiswatabData> {
  final Value<int?> id;
  final Value<String> nama;
  final Value<int> nis;
  final Value<String?> kelamin;
  const SiswatabCompanion({
    this.id = const Value.absent(),
    this.nama = const Value.absent(),
    this.nis = const Value.absent(),
    this.kelamin = const Value.absent(),
  });
  SiswatabCompanion.insert({
    this.id = const Value.absent(),
    required String nama,
    required int nis,
    this.kelamin = const Value.absent(),
  })  : nama = Value(nama),
        nis = Value(nis);
  static Insertable<SiswatabData> custom({
    Expression<int?>? id,
    Expression<String>? nama,
    Expression<int>? nis,
    Expression<String?>? kelamin,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nama != null) 'nama': nama,
      if (nis != null) 'nis': nis,
      if (kelamin != null) 'kelamin': kelamin,
    });
  }

  SiswatabCompanion copyWith(
      {Value<int?>? id,
      Value<String>? nama,
      Value<int>? nis,
      Value<String?>? kelamin}) {
    return SiswatabCompanion(
      id: id ?? this.id,
      nama: nama ?? this.nama,
      nis: nis ?? this.nis,
      kelamin: kelamin ?? this.kelamin,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (nama.present) {
      map['nama'] = Variable<String>(nama.value);
    }
    if (nis.present) {
      map['nis'] = Variable<int>(nis.value);
    }
    if (kelamin.present) {
      map['kelamin'] = Variable<String?>(kelamin.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SiswatabCompanion(')
          ..write('id: $id, ')
          ..write('nama: $nama, ')
          ..write('nis: $nis, ')
          ..write('kelamin: $kelamin')
          ..write(')'))
        .toString();
  }
}

class $SiswatabTable extends Siswatab
    with TableInfo<$SiswatabTable, SiswatabData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SiswatabTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _namaMeta = const VerificationMeta('nama');
  @override
  late final GeneratedColumn<String?> nama = GeneratedColumn<String?>(
      'nama', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _nisMeta = const VerificationMeta('nis');
  @override
  late final GeneratedColumn<int?> nis = GeneratedColumn<int?>(
      'nis', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _kelaminMeta = const VerificationMeta('kelamin');
  @override
  late final GeneratedColumn<String?> kelamin = GeneratedColumn<String?>(
      'kelamin', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 40),
      type: const StringType(),
      requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, nama, nis, kelamin];
  @override
  String get aliasedName => _alias ?? 'siswatab';
  @override
  String get actualTableName => 'siswatab';
  @override
  VerificationContext validateIntegrity(Insertable<SiswatabData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nama')) {
      context.handle(
          _namaMeta, nama.isAcceptableOrUnknown(data['nama']!, _namaMeta));
    } else if (isInserting) {
      context.missing(_namaMeta);
    }
    if (data.containsKey('nis')) {
      context.handle(
          _nisMeta, nis.isAcceptableOrUnknown(data['nis']!, _nisMeta));
    } else if (isInserting) {
      context.missing(_nisMeta);
    }
    if (data.containsKey('kelamin')) {
      context.handle(_kelaminMeta,
          kelamin.isAcceptableOrUnknown(data['kelamin']!, _kelaminMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SiswatabData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SiswatabData.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SiswatabTable createAlias(String alias) {
    return $SiswatabTable(attachedDatabase, alias);
  }
}

abstract class _$AbsenManager extends GeneratedDatabase {
  _$AbsenManager(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $KelasTable kelas = $KelasTable(this);
  late final $SiswatabTable siswatab = $SiswatabTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [kelas, siswatab];
}
