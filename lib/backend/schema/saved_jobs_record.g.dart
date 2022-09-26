// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_jobs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SavedJobsRecord> _$savedJobsRecordSerializer =
    new _$SavedJobsRecordSerializer();

class _$SavedJobsRecordSerializer
    implements StructuredSerializer<SavedJobsRecord> {
  @override
  final Iterable<Type> types = const [SavedJobsRecord, _$SavedJobsRecord];
  @override
  final String wireName = 'SavedJobsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SavedJobsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.jobSaved;
    if (value != null) {
      result
        ..add('jobSaved')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.savedTime;
    if (value != null) {
      result
        ..add('savedTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  SavedJobsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SavedJobsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'jobSaved':
          result.jobSaved = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'savedTime':
          result.savedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$SavedJobsRecord extends SavedJobsRecord {
  @override
  final DocumentReference<Object?>? jobSaved;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DateTime? savedTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SavedJobsRecord([void Function(SavedJobsRecordBuilder)? updates]) =>
      (new SavedJobsRecordBuilder()..update(updates))._build();

  _$SavedJobsRecord._({this.jobSaved, this.user, this.savedTime, this.ffRef})
      : super._();

  @override
  SavedJobsRecord rebuild(void Function(SavedJobsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SavedJobsRecordBuilder toBuilder() =>
      new SavedJobsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavedJobsRecord &&
        jobSaved == other.jobSaved &&
        user == other.user &&
        savedTime == other.savedTime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, jobSaved.hashCode), user.hashCode), savedTime.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SavedJobsRecord')
          ..add('jobSaved', jobSaved)
          ..add('user', user)
          ..add('savedTime', savedTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SavedJobsRecordBuilder
    implements Builder<SavedJobsRecord, SavedJobsRecordBuilder> {
  _$SavedJobsRecord? _$v;

  DocumentReference<Object?>? _jobSaved;
  DocumentReference<Object?>? get jobSaved => _$this._jobSaved;
  set jobSaved(DocumentReference<Object?>? jobSaved) =>
      _$this._jobSaved = jobSaved;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DateTime? _savedTime;
  DateTime? get savedTime => _$this._savedTime;
  set savedTime(DateTime? savedTime) => _$this._savedTime = savedTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SavedJobsRecordBuilder() {
    SavedJobsRecord._initializeBuilder(this);
  }

  SavedJobsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobSaved = $v.jobSaved;
      _user = $v.user;
      _savedTime = $v.savedTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavedJobsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SavedJobsRecord;
  }

  @override
  void update(void Function(SavedJobsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SavedJobsRecord build() => _build();

  _$SavedJobsRecord _build() {
    final _$result = _$v ??
        new _$SavedJobsRecord._(
            jobSaved: jobSaved, user: user, savedTime: savedTime, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
