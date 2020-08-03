// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Task extends DataClass implements Insertable<Task> {
  final int id;
  final String description;
  final bool isSync;
  final bool isCompleted;
  final int projectsId;
  Task(
      {@required this.id,
      @required this.description,
      @required this.isSync,
      @required this.isCompleted,
      @required this.projectsId});
  factory Task.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Task(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      isSync:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_sync']),
      isCompleted: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_completed']),
      projectsId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}projects_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || isSync != null) {
      map['is_sync'] = Variable<bool>(isSync);
    }
    if (!nullToAbsent || isCompleted != null) {
      map['is_completed'] = Variable<bool>(isCompleted);
    }
    if (!nullToAbsent || projectsId != null) {
      map['projects_id'] = Variable<int>(projectsId);
    }
    return map;
  }

  TasksCompanion toCompanion(bool nullToAbsent) {
    return TasksCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      isSync:
          isSync == null && nullToAbsent ? const Value.absent() : Value(isSync),
      isCompleted: isCompleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isCompleted),
      projectsId: projectsId == null && nullToAbsent
          ? const Value.absent()
          : Value(projectsId),
    );
  }

  factory Task.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Task(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
      isSync: serializer.fromJson<bool>(json['isSync']),
      isCompleted: serializer.fromJson<bool>(json['isCompleted']),
      projectsId: serializer.fromJson<int>(json['projectsId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
      'isSync': serializer.toJson<bool>(isSync),
      'isCompleted': serializer.toJson<bool>(isCompleted),
      'projectsId': serializer.toJson<int>(projectsId),
    };
  }

  Task copyWith(
          {int id,
          String description,
          bool isSync,
          bool isCompleted,
          int projectsId}) =>
      Task(
        id: id ?? this.id,
        description: description ?? this.description,
        isSync: isSync ?? this.isSync,
        isCompleted: isCompleted ?? this.isCompleted,
        projectsId: projectsId ?? this.projectsId,
      );
  @override
  String toString() {
    return (StringBuffer('Task(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('isSync: $isSync, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('projectsId: $projectsId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          description.hashCode,
          $mrjc(isSync.hashCode,
              $mrjc(isCompleted.hashCode, projectsId.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Task &&
          other.id == this.id &&
          other.description == this.description &&
          other.isSync == this.isSync &&
          other.isCompleted == this.isCompleted &&
          other.projectsId == this.projectsId);
}

class TasksCompanion extends UpdateCompanion<Task> {
  final Value<int> id;
  final Value<String> description;
  final Value<bool> isSync;
  final Value<bool> isCompleted;
  final Value<int> projectsId;
  const TasksCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.isSync = const Value.absent(),
    this.isCompleted = const Value.absent(),
    this.projectsId = const Value.absent(),
  });
  TasksCompanion.insert({
    this.id = const Value.absent(),
    @required String description,
    this.isSync = const Value.absent(),
    this.isCompleted = const Value.absent(),
    @required int projectsId,
  })  : description = Value(description),
        projectsId = Value(projectsId);
  static Insertable<Task> custom({
    Expression<int> id,
    Expression<String> description,
    Expression<bool> isSync,
    Expression<bool> isCompleted,
    Expression<int> projectsId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (isSync != null) 'is_sync': isSync,
      if (isCompleted != null) 'is_completed': isCompleted,
      if (projectsId != null) 'projects_id': projectsId,
    });
  }

  TasksCompanion copyWith(
      {Value<int> id,
      Value<String> description,
      Value<bool> isSync,
      Value<bool> isCompleted,
      Value<int> projectsId}) {
    return TasksCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      isSync: isSync ?? this.isSync,
      isCompleted: isCompleted ?? this.isCompleted,
      projectsId: projectsId ?? this.projectsId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (isSync.present) {
      map['is_sync'] = Variable<bool>(isSync.value);
    }
    if (isCompleted.present) {
      map['is_completed'] = Variable<bool>(isCompleted.value);
    }
    if (projectsId.present) {
      map['projects_id'] = Variable<int>(projectsId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('isSync: $isSync, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('projectsId: $projectsId')
          ..write(')'))
        .toString();
  }
}

class $TasksTable extends Tasks with TableInfo<$TasksTable, Task> {
  final GeneratedDatabase _db;
  final String _alias;
  $TasksTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn('description', $tableName, false,
        minTextLength: 0, maxTextLength: 45);
  }

  final VerificationMeta _isSyncMeta = const VerificationMeta('isSync');
  GeneratedBoolColumn _isSync;
  @override
  GeneratedBoolColumn get isSync => _isSync ??= _constructIsSync();
  GeneratedBoolColumn _constructIsSync() {
    return GeneratedBoolColumn('is_sync', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _isCompletedMeta =
      const VerificationMeta('isCompleted');
  GeneratedBoolColumn _isCompleted;
  @override
  GeneratedBoolColumn get isCompleted =>
      _isCompleted ??= _constructIsCompleted();
  GeneratedBoolColumn _constructIsCompleted() {
    return GeneratedBoolColumn('is_completed', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _projectsIdMeta = const VerificationMeta('projectsId');
  GeneratedIntColumn _projectsId;
  @override
  GeneratedIntColumn get projectsId => _projectsId ??= _constructProjectsId();
  GeneratedIntColumn _constructProjectsId() {
    return GeneratedIntColumn(
      'projects_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, description, isSync, isCompleted, projectsId];
  @override
  $TasksTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tasks';
  @override
  final String actualTableName = 'tasks';
  @override
  VerificationContext validateIntegrity(Insertable<Task> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('is_sync')) {
      context.handle(_isSyncMeta,
          isSync.isAcceptableOrUnknown(data['is_sync'], _isSyncMeta));
    }
    if (data.containsKey('is_completed')) {
      context.handle(
          _isCompletedMeta,
          isCompleted.isAcceptableOrUnknown(
              data['is_completed'], _isCompletedMeta));
    }
    if (data.containsKey('projects_id')) {
      context.handle(
          _projectsIdMeta,
          projectsId.isAcceptableOrUnknown(
              data['projects_id'], _projectsIdMeta));
    } else if (isInserting) {
      context.missing(_projectsIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Task map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Task.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(_db, alias);
  }
}

class Project extends DataClass implements Insertable<Project> {
  final int id;
  final String name;
  final bool isSync;
  Project({@required this.id, @required this.name, @required this.isSync});
  factory Project.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Project(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      isSync:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_sync']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || isSync != null) {
      map['is_sync'] = Variable<bool>(isSync);
    }
    return map;
  }

  ProjectsCompanion toCompanion(bool nullToAbsent) {
    return ProjectsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      isSync:
          isSync == null && nullToAbsent ? const Value.absent() : Value(isSync),
    );
  }

  factory Project.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Project(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      isSync: serializer.fromJson<bool>(json['isSync']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'isSync': serializer.toJson<bool>(isSync),
    };
  }

  Project copyWith({int id, String name, bool isSync}) => Project(
        id: id ?? this.id,
        name: name ?? this.name,
        isSync: isSync ?? this.isSync,
      );
  @override
  String toString() {
    return (StringBuffer('Project(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('isSync: $isSync')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(name.hashCode, isSync.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Project &&
          other.id == this.id &&
          other.name == this.name &&
          other.isSync == this.isSync);
}

class ProjectsCompanion extends UpdateCompanion<Project> {
  final Value<int> id;
  final Value<String> name;
  final Value<bool> isSync;
  const ProjectsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.isSync = const Value.absent(),
  });
  ProjectsCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    this.isSync = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Project> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<bool> isSync,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (isSync != null) 'is_sync': isSync,
    });
  }

  ProjectsCompanion copyWith(
      {Value<int> id, Value<String> name, Value<bool> isSync}) {
    return ProjectsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      isSync: isSync ?? this.isSync,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (isSync.present) {
      map['is_sync'] = Variable<bool>(isSync.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProjectsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('isSync: $isSync')
          ..write(')'))
        .toString();
  }
}

class $ProjectsTable extends Projects with TableInfo<$ProjectsTable, Project> {
  final GeneratedDatabase _db;
  final String _alias;
  $ProjectsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 0, maxTextLength: 45);
  }

  final VerificationMeta _isSyncMeta = const VerificationMeta('isSync');
  GeneratedBoolColumn _isSync;
  @override
  GeneratedBoolColumn get isSync => _isSync ??= _constructIsSync();
  GeneratedBoolColumn _constructIsSync() {
    return GeneratedBoolColumn('is_sync', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, isSync];
  @override
  $ProjectsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'projects';
  @override
  final String actualTableName = 'projects';
  @override
  VerificationContext validateIntegrity(Insertable<Project> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('is_sync')) {
      context.handle(_isSyncMeta,
          isSync.isAcceptableOrUnknown(data['is_sync'], _isSyncMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Project map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Project.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ProjectsTable createAlias(String alias) {
    return $ProjectsTable(_db, alias);
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TasksTable _tasks;
  $TasksTable get tasks => _tasks ??= $TasksTable(this);
  $ProjectsTable _projects;
  $ProjectsTable get projects => _projects ??= $ProjectsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tasks, projects];
}
