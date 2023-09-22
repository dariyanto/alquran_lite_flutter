// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  SuratDao? _suratDaoInstance;

  AyatDao? _ayatDaoInstance;

  BookmarkAyatDao? _bookmarkAyatDaoInstance;

  BookmarkSuratDao? _bookmarkSuratDaoInstance;

  RiwayatDao? _riwayatDaoInstance;

  TafsirDao? _tafsirDaoInstance;

  StatistikDao? _statistikDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Ayat` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `suratId` INTEGER, `ayatId` INTEGER, `teksArab` TEXT, `teksLatin` TEXT, `teksIndonesia` TEXT, `audio1` TEXT, `audio2` TEXT, `audio3` TEXT, `audio4` TEXT, `audio5` TEXT, `timestamp` INTEGER NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BookmarkAyat` (`suratId` INTEGER, `ayatId` INTEGER, `userId` INTEGER, PRIMARY KEY (`suratId`, `ayatId`, `userId`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BookmarkSurat` (`suratId` INTEGER, `userId` INTEGER, PRIMARY KEY (`suratId`, `userId`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Riwayat` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `suratId` INTEGER, `ayatId` INTEGER, `userId` INTEGER, `timestamp` INTEGER NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Surat` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `suratId` INTEGER, `nama` TEXT, `namaLatin` TEXT, `jumlahAyat` TEXT, `tempatTurun` TEXT, `arti` TEXT, `deskripsi` TEXT, `audio1` TEXT, `audio2` TEXT, `audio3` TEXT, `audio4` TEXT, `audio5` TEXT, `timestamp` INTEGER NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Tafsir` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `suratId` INTEGER, `ayatId` INTEGER, `teks` TEXT, `timestamp` INTEGER NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Statistik` (`id` INTEGER, `suratId` INTEGER, `ayatId` INTEGER, `userId` INTEGER, `timestamp` INTEGER NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  SuratDao get suratDao {
    return _suratDaoInstance ??= _$SuratDao(database, changeListener);
  }

  @override
  AyatDao get ayatDao {
    return _ayatDaoInstance ??= _$AyatDao(database, changeListener);
  }

  @override
  BookmarkAyatDao get bookmarkAyatDao {
    return _bookmarkAyatDaoInstance ??=
        _$BookmarkAyatDao(database, changeListener);
  }

  @override
  BookmarkSuratDao get bookmarkSuratDao {
    return _bookmarkSuratDaoInstance ??=
        _$BookmarkSuratDao(database, changeListener);
  }

  @override
  RiwayatDao get riwayatDao {
    return _riwayatDaoInstance ??= _$RiwayatDao(database, changeListener);
  }

  @override
  TafsirDao get tafsirDao {
    return _tafsirDaoInstance ??= _$TafsirDao(database, changeListener);
  }

  @override
  StatistikDao get statistikDao {
    return _statistikDaoInstance ??= _$StatistikDao(database, changeListener);
  }
}

class _$SuratDao extends SuratDao {
  _$SuratDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _suratInsertionAdapter = InsertionAdapter(
            database,
            'Surat',
            (Surat item) => <String, Object?>{
                  'id': item.id,
                  'suratId': item.suratId,
                  'nama': item.nama,
                  'namaLatin': item.namaLatin,
                  'jumlahAyat': item.jumlahAyat,
                  'tempatTurun': item.tempatTurun,
                  'arti': item.arti,
                  'deskripsi': item.deskripsi,
                  'audio1': item.audio1,
                  'audio2': item.audio2,
                  'audio3': item.audio3,
                  'audio4': item.audio4,
                  'audio5': item.audio5,
                  'timestamp': _dateTimeConverter.encode(item.timestamp)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Surat> _suratInsertionAdapter;

  @override
  Future<List<Surat>> findAllSurat() async {
    return _queryAdapter.queryList('SELECT * FROM Surat',
        mapper: (Map<String, Object?> row) => Surat(
            row['id'] as int?,
            row['suratId'] as int?,
            row['nama'] as String?,
            row['namaLatin'] as String?,
            row['jumlahAyat'] as String?,
            row['tempatTurun'] as String?,
            row['arti'] as String?,
            row['deskripsi'] as String?,
            row['audio1'] as String?,
            row['audio2'] as String?,
            row['audio3'] as String?,
            row['audio4'] as String?,
            row['audio5'] as String?,
            _dateTimeConverter.decode(row['timestamp'] as int)));
  }

  @override
  Future<Surat?> findSuratById(int id) async {
    return _queryAdapter.query('SELECT * FROM Surat WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Surat(
            row['id'] as int?,
            row['suratId'] as int?,
            row['nama'] as String?,
            row['namaLatin'] as String?,
            row['jumlahAyat'] as String?,
            row['tempatTurun'] as String?,
            row['arti'] as String?,
            row['deskripsi'] as String?,
            row['audio1'] as String?,
            row['audio2'] as String?,
            row['audio3'] as String?,
            row['audio4'] as String?,
            row['audio5'] as String?,
            _dateTimeConverter.decode(row['timestamp'] as int)),
        arguments: [id]);
  }

  @override
  Future<int> insertSurat(Surat ayat) {
    return _suratInsertionAdapter.insertAndReturnId(
        ayat, OnConflictStrategy.replace);
  }

  @override
  Future<List<int>> insertSurats(List<Surat> ayats) {
    return _suratInsertionAdapter.insertListAndReturnIds(
        ayats, OnConflictStrategy.replace);
  }
}

class _$AyatDao extends AyatDao {
  _$AyatDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _ayatInsertionAdapter = InsertionAdapter(
            database,
            'Ayat',
            (Ayat item) => <String, Object?>{
                  'id': item.id,
                  'suratId': item.suratId,
                  'ayatId': item.ayatId,
                  'teksArab': item.teksArab,
                  'teksLatin': item.teksLatin,
                  'teksIndonesia': item.teksIndonesia,
                  'audio1': item.audio1,
                  'audio2': item.audio2,
                  'audio3': item.audio3,
                  'audio4': item.audio4,
                  'audio5': item.audio5,
                  'timestamp': _dateTimeConverter.encode(item.timestamp)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Ayat> _ayatInsertionAdapter;

  @override
  Future<List<Ayat>> findAllAyat() async {
    return _queryAdapter.queryList('SELECT * FROM Ayat',
        mapper: (Map<String, Object?> row) => Ayat(
            row['id'] as int?,
            row['suratId'] as int?,
            row['ayatId'] as int?,
            row['teksArab'] as String?,
            row['teksLatin'] as String?,
            row['teksIndonesia'] as String?,
            row['audio1'] as String?,
            row['audio2'] as String?,
            row['audio3'] as String?,
            row['audio4'] as String?,
            row['audio5'] as String?,
            _dateTimeConverter.decode(row['timestamp'] as int)));
  }

  @override
  Future<Ayat?> findAyatById(int id) async {
    return _queryAdapter.query('SELECT * FROM Ayat WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Ayat(
            row['id'] as int?,
            row['suratId'] as int?,
            row['ayatId'] as int?,
            row['teksArab'] as String?,
            row['teksLatin'] as String?,
            row['teksIndonesia'] as String?,
            row['audio1'] as String?,
            row['audio2'] as String?,
            row['audio3'] as String?,
            row['audio4'] as String?,
            row['audio5'] as String?,
            _dateTimeConverter.decode(row['timestamp'] as int)),
        arguments: [id]);
  }

  @override
  Future<List<Ayat>> findAllAyatBySuratId(int suratId) async {
    return _queryAdapter.queryList('SELECT * FROM Ayat WHERE suratId = ?1',
        mapper: (Map<String, Object?> row) => Ayat(
            row['id'] as int?,
            row['suratId'] as int?,
            row['ayatId'] as int?,
            row['teksArab'] as String?,
            row['teksLatin'] as String?,
            row['teksIndonesia'] as String?,
            row['audio1'] as String?,
            row['audio2'] as String?,
            row['audio3'] as String?,
            row['audio4'] as String?,
            row['audio5'] as String?,
            _dateTimeConverter.decode(row['timestamp'] as int)),
        arguments: [suratId]);
  }

  @override
  Future<int> insertAyat(Ayat ayat) {
    return _ayatInsertionAdapter.insertAndReturnId(
        ayat, OnConflictStrategy.replace);
  }

  @override
  Future<List<int>> insertAyats(List<Ayat> ayats) {
    return _ayatInsertionAdapter.insertListAndReturnIds(
        ayats, OnConflictStrategy.replace);
  }
}

class _$BookmarkAyatDao extends BookmarkAyatDao {
  _$BookmarkAyatDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _bookmarkAyatInsertionAdapter = InsertionAdapter(
            database,
            'BookmarkAyat',
            (BookmarkAyat item) => <String, Object?>{
                  'suratId': item.suratId,
                  'ayatId': item.ayatId,
                  'userId': item.userId
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<BookmarkAyat> _bookmarkAyatInsertionAdapter;

  @override
  Future<List<BookmarkAyat>> findAllBookmark() async {
    return _queryAdapter.queryList('SELECT * FROM BookmarkAyat',
        mapper: (Map<String, Object?> row) => BookmarkAyat(
            row['suratId'] as int?,
            row['ayatId'] as int?,
            row['userId'] as int?));
  }

  @override
  Future<BookmarkAyat?> findBookmarkById(int id) async {
    return _queryAdapter.query('SELECT * FROM BookmarkAyat WHERE id = ?1',
        mapper: (Map<String, Object?> row) => BookmarkAyat(
            row['suratId'] as int?,
            row['ayatId'] as int?,
            row['userId'] as int?),
        arguments: [id]);
  }

  @override
  Future<void> deleteBookmarkBySuratIdAndAyatId(
    int suratId,
    int ayatId,
  ) async {
    await _queryAdapter.queryNoReturn(
        'DELETE FROM BookmarkAyat WHERE suratId = ?1 AND ayatId = ?2',
        arguments: [suratId, ayatId]);
  }

  @override
  Future<void> deleteAllBookmark() async {
    await _queryAdapter.queryNoReturn('DELETE FROM BookmarkAyat');
  }

  @override
  Future<int> insertBookmark(BookmarkAyat ayat) {
    return _bookmarkAyatInsertionAdapter.insertAndReturnId(
        ayat, OnConflictStrategy.ignore);
  }
}

class _$BookmarkSuratDao extends BookmarkSuratDao {
  _$BookmarkSuratDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _bookmarkSuratInsertionAdapter = InsertionAdapter(
            database,
            'BookmarkSurat',
            (BookmarkSurat item) => <String, Object?>{
                  'suratId': item.suratId,
                  'userId': item.userId
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<BookmarkSurat> _bookmarkSuratInsertionAdapter;

  @override
  Future<List<BookmarkSurat>> findAllBookmark() async {
    return _queryAdapter.queryList('SELECT * FROM BookmarkSurat',
        mapper: (Map<String, Object?> row) =>
            BookmarkSurat(row['suratId'] as int?, row['userId'] as int?));
  }

  @override
  Future<BookmarkSurat?> findBookmarkById(int id) async {
    return _queryAdapter.query('SELECT * FROM BookmarkSurat WHERE id = ?1',
        mapper: (Map<String, Object?> row) =>
            BookmarkSurat(row['suratId'] as int?, row['userId'] as int?),
        arguments: [id]);
  }

  @override
  Future<void> deleteBookmarkBySuratIdAndAyatId(int suratId) async {
    await _queryAdapter.queryNoReturn(
        'DELETE FROM BookmarkSurat WHERE suratId = ?1',
        arguments: [suratId]);
  }

  @override
  Future<void> deleteAllBookmark() async {
    await _queryAdapter.queryNoReturn('DELETE FROM BookmarkSurat');
  }

  @override
  Future<int> insertBookmark(BookmarkSurat ayat) {
    return _bookmarkSuratInsertionAdapter.insertAndReturnId(
        ayat, OnConflictStrategy.ignore);
  }
}

class _$RiwayatDao extends RiwayatDao {
  _$RiwayatDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _riwayatInsertionAdapter = InsertionAdapter(
            database,
            'Riwayat',
            (Riwayat item) => <String, Object?>{
                  'id': item.id,
                  'suratId': item.suratId,
                  'ayatId': item.ayatId,
                  'userId': item.userId,
                  'timestamp': _dateTimeConverter.encode(item.timestamp)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Riwayat> _riwayatInsertionAdapter;

  @override
  Future<List<Riwayat>> findAllRiwayat() async {
    return _queryAdapter.queryList('SELECT * FROM Riwayat',
        mapper: (Map<String, Object?> row) => Riwayat(
            row['id'] as int?,
            row['suratId'] as int?,
            row['ayatId'] as int?,
            row['userId'] as int?,
            _dateTimeConverter.decode(row['timestamp'] as int)));
  }

  @override
  Future<Riwayat?> findRiwayatById(int id) async {
    return _queryAdapter.query('SELECT * FROM Riwayat WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Riwayat(
            row['id'] as int?,
            row['suratId'] as int?,
            row['ayatId'] as int?,
            row['userId'] as int?,
            _dateTimeConverter.decode(row['timestamp'] as int)),
        arguments: [id]);
  }

  @override
  Future<void> deleteRiwayatBySuratIdAndAyatId(
    int suratId,
    int ayatId,
  ) async {
    await _queryAdapter.queryNoReturn(
        'DELETE FROM Riwayat WHERE suratId = ?1 AND ayatId = ?2',
        arguments: [suratId, ayatId]);
  }

  @override
  Future<void> deleteAllRiwayat() async {
    await _queryAdapter.queryNoReturn('DELETE FROM Riwayat');
  }

  @override
  Future<int> insertRiwayat(Riwayat ayat) {
    return _riwayatInsertionAdapter.insertAndReturnId(
        ayat, OnConflictStrategy.abort);
  }

  @override
  Future<List<int>> insertRiwayats(List<Riwayat> ayats) {
    return _riwayatInsertionAdapter.insertListAndReturnIds(
        ayats, OnConflictStrategy.abort);
  }
}

class _$TafsirDao extends TafsirDao {
  _$TafsirDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _tafsirInsertionAdapter = InsertionAdapter(
            database,
            'Tafsir',
            (Tafsir item) => <String, Object?>{
                  'id': item.id,
                  'suratId': item.suratId,
                  'ayatId': item.ayatId,
                  'teks': item.teks,
                  'timestamp': _dateTimeConverter.encode(item.timestamp)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Tafsir> _tafsirInsertionAdapter;

  @override
  Future<List<Tafsir>> findAllTafsir() async {
    return _queryAdapter.queryList('SELECT * FROM Tafsir',
        mapper: (Map<String, Object?> row) => Tafsir(
            row['id'] as int?,
            row['suratId'] as int?,
            row['ayatId'] as int?,
            row['teks'] as String?,
            _dateTimeConverter.decode(row['timestamp'] as int)));
  }

  @override
  Future<Tafsir?> findTafsirById(int id) async {
    return _queryAdapter.query('SELECT * FROM Tafsir WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Tafsir(
            row['id'] as int?,
            row['suratId'] as int?,
            row['ayatId'] as int?,
            row['teks'] as String?,
            _dateTimeConverter.decode(row['timestamp'] as int)),
        arguments: [id]);
  }

  @override
  Future<List<Tafsir>> findAllTafsirBySuratId(int suratId) async {
    return _queryAdapter.queryList('SELECT * FROM Tafsir WHERE suratId = ?1',
        mapper: (Map<String, Object?> row) => Tafsir(
            row['id'] as int?,
            row['suratId'] as int?,
            row['ayatId'] as int?,
            row['teks'] as String?,
            _dateTimeConverter.decode(row['timestamp'] as int)),
        arguments: [suratId]);
  }

  @override
  Future<Tafsir?> findTafsirBySuratIdAndAyatId(
    int suratId,
    int ayatId,
  ) async {
    return _queryAdapter.query(
        'SELECT * FROM Tafsir WHERE suratId = ?1 AND ayatId = ?2',
        mapper: (Map<String, Object?> row) => Tafsir(
            row['id'] as int?,
            row['suratId'] as int?,
            row['ayatId'] as int?,
            row['teks'] as String?,
            _dateTimeConverter.decode(row['timestamp'] as int)),
        arguments: [suratId, ayatId]);
  }

  @override
  Future<int> insertTafsir(Tafsir ayat) {
    return _tafsirInsertionAdapter.insertAndReturnId(
        ayat, OnConflictStrategy.replace);
  }

  @override
  Future<List<int>> insertTafsirs(List<Tafsir> ayats) {
    return _tafsirInsertionAdapter.insertListAndReturnIds(
        ayats, OnConflictStrategy.replace);
  }
}

class _$StatistikDao extends StatistikDao {
  _$StatistikDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _statistikInsertionAdapter = InsertionAdapter(
            database,
            'Statistik',
            (Statistik item) => <String, Object?>{
                  'id': item.id,
                  'suratId': item.suratId,
                  'ayatId': item.ayatId,
                  'userId': item.userId,
                  'timestamp': _dateTimeConverter.encode(item.timestamp)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Statistik> _statistikInsertionAdapter;

  @override
  Future<List<Statistik>> findAllStatistik() async {
    return _queryAdapter.queryList('SELECT * FROM Statistik',
        mapper: (Map<String, Object?> row) => Statistik(
            row['id'] as int?,
            row['suratId'] as int?,
            row['ayatId'] as int?,
            row['userId'] as int?,
            _dateTimeConverter.decode(row['timestamp'] as int)));
  }

  @override
  Future<Statistik?> findStatistikById(int id) async {
    return _queryAdapter.query('SELECT * FROM Statistik WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Statistik(
            row['id'] as int?,
            row['suratId'] as int?,
            row['ayatId'] as int?,
            row['userId'] as int?,
            _dateTimeConverter.decode(row['timestamp'] as int)),
        arguments: [id]);
  }

  @override
  Future<void> deleteStatistikBySuratIdAndAyatId(
    int suratId,
    int ayatId,
  ) async {
    await _queryAdapter.queryNoReturn(
        'DELETE FROM Statistik WHERE suratId = ?1 AND ayatId = ?2',
        arguments: [suratId, ayatId]);
  }

  @override
  Future<void> deleteAllStatistik() async {
    await _queryAdapter.queryNoReturn('DELETE FROM Statistik');
  }

  @override
  Future<int> insertStatistik(Statistik ayat) {
    return _statistikInsertionAdapter.insertAndReturnId(
        ayat, OnConflictStrategy.abort);
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();
