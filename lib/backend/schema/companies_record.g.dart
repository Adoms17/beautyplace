// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompaniesRecord> _$companiesRecordSerializer =
    new _$CompaniesRecordSerializer();

class _$CompaniesRecordSerializer
    implements StructuredSerializer<CompaniesRecord> {
  @override
  final Iterable<Type> types = const [CompaniesRecord, _$CompaniesRecord];
  @override
  final String wireName = 'CompaniesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CompaniesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.companyName;
    if (value != null) {
      result
        ..add('companyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyLogo;
    if (value != null) {
      result
        ..add('companyLogo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyHero;
    if (value != null) {
      result
        ..add('companyHero')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyDescription;
    if (value != null) {
      result
        ..add('companyDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyLocation;
    if (value != null) {
      result
        ..add('companyLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.companyCity;
    if (value != null) {
      result
        ..add('companyCity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyWebSite;
    if (value != null) {
      result
        ..add('companyWebSite')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companySize;
    if (value != null) {
      result
        ..add('companySize')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.employees;
    if (value != null) {
      result
        ..add('employees')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  CompaniesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompaniesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'companyName':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companyLogo':
          result.companyLogo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companyHero':
          result.companyHero = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companyDescription':
          result.companyDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companyLocation':
          result.companyLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'companyCity':
          result.companyCity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companyWebSite':
          result.companyWebSite = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companySize':
          result.companySize = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'employees':
          result.employees = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$CompaniesRecord extends CompaniesRecord {
  @override
  final String? companyName;
  @override
  final String? companyLogo;
  @override
  final String? companyHero;
  @override
  final String? companyDescription;
  @override
  final LatLng? companyLocation;
  @override
  final String? companyCity;
  @override
  final String? companyWebSite;
  @override
  final String? companySize;
  @override
  final DocumentReference<Object?>? employees;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompaniesRecord([void Function(CompaniesRecordBuilder)? updates]) =>
      (new CompaniesRecordBuilder()..update(updates))._build();

  _$CompaniesRecord._(
      {this.companyName,
      this.companyLogo,
      this.companyHero,
      this.companyDescription,
      this.companyLocation,
      this.companyCity,
      this.companyWebSite,
      this.companySize,
      this.employees,
      this.ffRef})
      : super._();

  @override
  CompaniesRecord rebuild(void Function(CompaniesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompaniesRecordBuilder toBuilder() =>
      new CompaniesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompaniesRecord &&
        companyName == other.companyName &&
        companyLogo == other.companyLogo &&
        companyHero == other.companyHero &&
        companyDescription == other.companyDescription &&
        companyLocation == other.companyLocation &&
        companyCity == other.companyCity &&
        companyWebSite == other.companyWebSite &&
        companySize == other.companySize &&
        employees == other.employees &&
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
                            $jc(
                                $jc(
                                    $jc($jc(0, companyName.hashCode),
                                        companyLogo.hashCode),
                                    companyHero.hashCode),
                                companyDescription.hashCode),
                            companyLocation.hashCode),
                        companyCity.hashCode),
                    companyWebSite.hashCode),
                companySize.hashCode),
            employees.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompaniesRecord')
          ..add('companyName', companyName)
          ..add('companyLogo', companyLogo)
          ..add('companyHero', companyHero)
          ..add('companyDescription', companyDescription)
          ..add('companyLocation', companyLocation)
          ..add('companyCity', companyCity)
          ..add('companyWebSite', companyWebSite)
          ..add('companySize', companySize)
          ..add('employees', employees)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompaniesRecordBuilder
    implements Builder<CompaniesRecord, CompaniesRecordBuilder> {
  _$CompaniesRecord? _$v;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _companyLogo;
  String? get companyLogo => _$this._companyLogo;
  set companyLogo(String? companyLogo) => _$this._companyLogo = companyLogo;

  String? _companyHero;
  String? get companyHero => _$this._companyHero;
  set companyHero(String? companyHero) => _$this._companyHero = companyHero;

  String? _companyDescription;
  String? get companyDescription => _$this._companyDescription;
  set companyDescription(String? companyDescription) =>
      _$this._companyDescription = companyDescription;

  LatLng? _companyLocation;
  LatLng? get companyLocation => _$this._companyLocation;
  set companyLocation(LatLng? companyLocation) =>
      _$this._companyLocation = companyLocation;

  String? _companyCity;
  String? get companyCity => _$this._companyCity;
  set companyCity(String? companyCity) => _$this._companyCity = companyCity;

  String? _companyWebSite;
  String? get companyWebSite => _$this._companyWebSite;
  set companyWebSite(String? companyWebSite) =>
      _$this._companyWebSite = companyWebSite;

  String? _companySize;
  String? get companySize => _$this._companySize;
  set companySize(String? companySize) => _$this._companySize = companySize;

  DocumentReference<Object?>? _employees;
  DocumentReference<Object?>? get employees => _$this._employees;
  set employees(DocumentReference<Object?>? employees) =>
      _$this._employees = employees;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompaniesRecordBuilder() {
    CompaniesRecord._initializeBuilder(this);
  }

  CompaniesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyName = $v.companyName;
      _companyLogo = $v.companyLogo;
      _companyHero = $v.companyHero;
      _companyDescription = $v.companyDescription;
      _companyLocation = $v.companyLocation;
      _companyCity = $v.companyCity;
      _companyWebSite = $v.companyWebSite;
      _companySize = $v.companySize;
      _employees = $v.employees;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompaniesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompaniesRecord;
  }

  @override
  void update(void Function(CompaniesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompaniesRecord build() => _build();

  _$CompaniesRecord _build() {
    final _$result = _$v ??
        new _$CompaniesRecord._(
            companyName: companyName,
            companyLogo: companyLogo,
            companyHero: companyHero,
            companyDescription: companyDescription,
            companyLocation: companyLocation,
            companyCity: companyCity,
            companyWebSite: companyWebSite,
            companySize: companySize,
            employees: employees,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
