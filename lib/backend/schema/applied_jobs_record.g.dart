// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applied_jobs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppliedJobsRecord> _$appliedJobsRecordSerializer =
    new _$AppliedJobsRecordSerializer();

class _$AppliedJobsRecordSerializer
    implements StructuredSerializer<AppliedJobsRecord> {
  @override
  final Iterable<Type> types = const [AppliedJobsRecord, _$AppliedJobsRecord];
  @override
  final String wireName = 'AppliedJobsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppliedJobsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.jobApplied;
    if (value != null) {
      result
        ..add('jobApplied')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.userApplied;
    if (value != null) {
      result
        ..add('userApplied')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.appliedTime;
    if (value != null) {
      result
        ..add('appliedTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.coverLetter;
    if (value != null) {
      result
        ..add('coverLetter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image1;
    if (value != null) {
      result
        ..add('image_1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image2;
    if (value != null) {
      result
        ..add('image_2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image3;
    if (value != null) {
      result
        ..add('image_3')
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
  AppliedJobsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppliedJobsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'jobApplied':
          result.jobApplied = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'userApplied':
          result.userApplied = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'appliedTime':
          result.appliedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'coverLetter':
          result.coverLetter = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_1':
          result.image1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_2':
          result.image2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_3':
          result.image3 = serializers.deserialize(value,
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

class _$AppliedJobsRecord extends AppliedJobsRecord {
  @override
  final DocumentReference<Object?>? jobApplied;
  @override
  final DocumentReference<Object?>? userApplied;
  @override
  final DateTime? appliedTime;
  @override
  final String? coverLetter;
  @override
  final String? image1;
  @override
  final String? image2;
  @override
  final String? image3;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AppliedJobsRecord(
          [void Function(AppliedJobsRecordBuilder)? updates]) =>
      (new AppliedJobsRecordBuilder()..update(updates))._build();

  _$AppliedJobsRecord._(
      {this.jobApplied,
      this.userApplied,
      this.appliedTime,
      this.coverLetter,
      this.image1,
      this.image2,
      this.image3,
      this.ffRef})
      : super._();

  @override
  AppliedJobsRecord rebuild(void Function(AppliedJobsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppliedJobsRecordBuilder toBuilder() =>
      new AppliedJobsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppliedJobsRecord &&
        jobApplied == other.jobApplied &&
        userApplied == other.userApplied &&
        appliedTime == other.appliedTime &&
        coverLetter == other.coverLetter &&
        image1 == other.image1 &&
        image2 == other.image2 &&
        image3 == other.image3 &&
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
                            $jc($jc(0, jobApplied.hashCode),
                                userApplied.hashCode),
                            appliedTime.hashCode),
                        coverLetter.hashCode),
                    image1.hashCode),
                image2.hashCode),
            image3.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppliedJobsRecord')
          ..add('jobApplied', jobApplied)
          ..add('userApplied', userApplied)
          ..add('appliedTime', appliedTime)
          ..add('coverLetter', coverLetter)
          ..add('image1', image1)
          ..add('image2', image2)
          ..add('image3', image3)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AppliedJobsRecordBuilder
    implements Builder<AppliedJobsRecord, AppliedJobsRecordBuilder> {
  _$AppliedJobsRecord? _$v;

  DocumentReference<Object?>? _jobApplied;
  DocumentReference<Object?>? get jobApplied => _$this._jobApplied;
  set jobApplied(DocumentReference<Object?>? jobApplied) =>
      _$this._jobApplied = jobApplied;

  DocumentReference<Object?>? _userApplied;
  DocumentReference<Object?>? get userApplied => _$this._userApplied;
  set userApplied(DocumentReference<Object?>? userApplied) =>
      _$this._userApplied = userApplied;

  DateTime? _appliedTime;
  DateTime? get appliedTime => _$this._appliedTime;
  set appliedTime(DateTime? appliedTime) => _$this._appliedTime = appliedTime;

  String? _coverLetter;
  String? get coverLetter => _$this._coverLetter;
  set coverLetter(String? coverLetter) => _$this._coverLetter = coverLetter;

  String? _image1;
  String? get image1 => _$this._image1;
  set image1(String? image1) => _$this._image1 = image1;

  String? _image2;
  String? get image2 => _$this._image2;
  set image2(String? image2) => _$this._image2 = image2;

  String? _image3;
  String? get image3 => _$this._image3;
  set image3(String? image3) => _$this._image3 = image3;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AppliedJobsRecordBuilder() {
    AppliedJobsRecord._initializeBuilder(this);
  }

  AppliedJobsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobApplied = $v.jobApplied;
      _userApplied = $v.userApplied;
      _appliedTime = $v.appliedTime;
      _coverLetter = $v.coverLetter;
      _image1 = $v.image1;
      _image2 = $v.image2;
      _image3 = $v.image3;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppliedJobsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppliedJobsRecord;
  }

  @override
  void update(void Function(AppliedJobsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppliedJobsRecord build() => _build();

  _$AppliedJobsRecord _build() {
    final _$result = _$v ??
        new _$AppliedJobsRecord._(
            jobApplied: jobApplied,
            userApplied: userApplied,
            appliedTime: appliedTime,
            coverLetter: coverLetter,
            image1: image1,
            image2: image2,
            image3: image3,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
