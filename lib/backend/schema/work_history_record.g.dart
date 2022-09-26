// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_history_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkHistoryRecord> _$workHistoryRecordSerializer =
    new _$WorkHistoryRecordSerializer();

class _$WorkHistoryRecordSerializer
    implements StructuredSerializer<WorkHistoryRecord> {
  @override
  final Iterable<Type> types = const [WorkHistoryRecord, _$WorkHistoryRecord];
  @override
  final String wireName = 'WorkHistoryRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, WorkHistoryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.jobTitle;
    if (value != null) {
      result
        ..add('jobTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyName;
    if (value != null) {
      result
        ..add('companyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.jobDescription;
    if (value != null) {
      result
        ..add('jobDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.companyLogo;
    if (value != null) {
      result
        ..add('companyLogo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  WorkHistoryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkHistoryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'jobTitle':
          result.jobTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companyName':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'jobDescription':
          result.jobDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'companyLogo':
          result.companyLogo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$WorkHistoryRecord extends WorkHistoryRecord {
  @override
  final String? jobTitle;
  @override
  final String? companyName;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? jobDescription;
  @override
  final DocumentReference<Object?>? user;
  @override
  final String? companyLogo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WorkHistoryRecord(
          [void Function(WorkHistoryRecordBuilder)? updates]) =>
      (new WorkHistoryRecordBuilder()..update(updates))._build();

  _$WorkHistoryRecord._(
      {this.jobTitle,
      this.companyName,
      this.startDate,
      this.endDate,
      this.jobDescription,
      this.user,
      this.companyLogo,
      this.ffRef})
      : super._();

  @override
  WorkHistoryRecord rebuild(void Function(WorkHistoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkHistoryRecordBuilder toBuilder() =>
      new WorkHistoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkHistoryRecord &&
        jobTitle == other.jobTitle &&
        companyName == other.companyName &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        jobDescription == other.jobDescription &&
        user == other.user &&
        companyLogo == other.companyLogo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, jobTitle.hashCode),
                                companyName.hashCode),
                            startDate.hashCode),
                        endDate.hashCode),
                    jobDescription.hashCode),
                user.hashCode),
            companyLogo.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkHistoryRecord')
          ..add('jobTitle', jobTitle)
          ..add('companyName', companyName)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('jobDescription', jobDescription)
          ..add('user', user)
          ..add('companyLogo', companyLogo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WorkHistoryRecordBuilder
    implements Builder<WorkHistoryRecord, WorkHistoryRecordBuilder> {
  _$WorkHistoryRecord? _$v;

  String? _jobTitle;
  String? get jobTitle => _$this._jobTitle;
  set jobTitle(String? jobTitle) => _$this._jobTitle = jobTitle;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  String? _jobDescription;
  String? get jobDescription => _$this._jobDescription;
  set jobDescription(String? jobDescription) =>
      _$this._jobDescription = jobDescription;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  String? _companyLogo;
  String? get companyLogo => _$this._companyLogo;
  set companyLogo(String? companyLogo) => _$this._companyLogo = companyLogo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WorkHistoryRecordBuilder() {
    WorkHistoryRecord._initializeBuilder(this);
  }

  WorkHistoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobTitle = $v.jobTitle;
      _companyName = $v.companyName;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _jobDescription = $v.jobDescription;
      _user = $v.user;
      _companyLogo = $v.companyLogo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkHistoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkHistoryRecord;
  }

  @override
  void update(void Function(WorkHistoryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkHistoryRecord build() => _build();

  _$WorkHistoryRecord _build() {
    final _$result = _$v ??
        new _$WorkHistoryRecord._(
            jobTitle: jobTitle,
            companyName: companyName,
            startDate: startDate,
            endDate: endDate,
            jobDescription: jobDescription,
            user: user,
            companyLogo: companyLogo,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
