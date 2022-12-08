import 'package:moor_flutter/moor_flutter.dart';
part 'absen_db.g.dart';

class Kelas extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get kelas => text().withLength(min: 1, max: 100)();
  TextColumn get desc => text().withLength(min: 1, max: 250)();
}

class Siswatab extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get nama => text().withLength(min: 1, max: 100)();
  IntColumn get nis => integer()();
  TextColumn get kelamin => text().withLength(min: 1, max: 40).nullable()();
}

@UseMoor(tables: [Kelas, Siswatab])
class AbsenManager extends _$AbsenManager {
  AbsenManager()
      : super(FlutterQueryExecutor.inDatabaseFolder(path: "absenku.sqlite"));

  @override
  int get schemaVersion => 8;

  // CRUD Kelas
  // Create
  Future<int> insertKelas(Kela kela) => into(kelas).insert(kela);
  // Read
  Stream<List<Kela>> fetchAllKelas() => select(kelas).watch();
  // Update
  Future<bool> updateKelas(Kela kela) => update(kelas).replace(kela);
  // Delete
  Future<int> deleteKelas(Kela kela) => delete(kelas).delete(kela);

  // CRUD Kelas
  // Create
  Future<int> insertSiswa(SiswatabData siswatabData) =>
      into(siswatab).insert(siswatabData);
  // Read
  Stream<List<SiswatabData>> fetchAllSiswa() => select(siswatab).watch();
  // Update
  Future<bool> updateSiswa(SiswatabData siswatabData) =>
      update(siswatab).replace(siswatabData);
  // Delete
  Future<int> deleteSiswa(SiswatabData siswatabData) =>
      delete(siswatab).delete(siswatabData);
}
