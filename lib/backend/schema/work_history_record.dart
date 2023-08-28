import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WorkHistoryRecord extends FirestoreRecord {
  WorkHistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "jobTitle" field.
  String? _jobTitle;
  String get jobTitle => _jobTitle ?? '';
  bool hasJobTitle() => _jobTitle != null;

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "jobDescription" field.
  String? _jobDescription;
  String get jobDescription => _jobDescription ?? '';
  bool hasJobDescription() => _jobDescription != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "companyLogo" field.
  String? _companyLogo;
  String get companyLogo => _companyLogo ?? '';
  bool hasCompanyLogo() => _companyLogo != null;

  void _initializeFields() {
    _jobTitle = snapshotData['jobTitle'] as String?;
    _companyName = snapshotData['companyName'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _jobDescription = snapshotData['jobDescription'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _companyLogo = snapshotData['companyLogo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('workHistory');

  static Stream<WorkHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WorkHistoryRecord.fromSnapshot(s));

  static Future<WorkHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WorkHistoryRecord.fromSnapshot(s));

  static WorkHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WorkHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WorkHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WorkHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WorkHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WorkHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWorkHistoryRecordData({
  String? jobTitle,
  String? companyName,
  DateTime? startDate,
  DateTime? endDate,
  String? jobDescription,
  DocumentReference? user,
  String? companyLogo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'jobTitle': jobTitle,
      'companyName': companyName,
      'startDate': startDate,
      'endDate': endDate,
      'jobDescription': jobDescription,
      'user': user,
      'companyLogo': companyLogo,
    }.withoutNulls,
  );

  return firestoreData;
}

class WorkHistoryRecordDocumentEquality implements Equality<WorkHistoryRecord> {
  const WorkHistoryRecordDocumentEquality();

  @override
  bool equals(WorkHistoryRecord? e1, WorkHistoryRecord? e2) {
    return e1?.jobTitle == e2?.jobTitle &&
        e1?.companyName == e2?.companyName &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.jobDescription == e2?.jobDescription &&
        e1?.user == e2?.user &&
        e1?.companyLogo == e2?.companyLogo;
  }

  @override
  int hash(WorkHistoryRecord? e) => const ListEquality().hash([
        e?.jobTitle,
        e?.companyName,
        e?.startDate,
        e?.endDate,
        e?.jobDescription,
        e?.user,
        e?.companyLogo
      ]);

  @override
  bool isValidKey(Object? o) => o is WorkHistoryRecord;
}
