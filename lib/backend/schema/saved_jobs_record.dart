import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SavedJobsRecord extends FirestoreRecord {
  SavedJobsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "jobSaved" field.
  DocumentReference? _jobSaved;
  DocumentReference? get jobSaved => _jobSaved;
  bool hasJobSaved() => _jobSaved != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "savedTime" field.
  DateTime? _savedTime;
  DateTime? get savedTime => _savedTime;
  bool hasSavedTime() => _savedTime != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _jobSaved = snapshotData['jobSaved'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
    _savedTime = snapshotData['savedTime'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('savedJobs');

  static Stream<SavedJobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SavedJobsRecord.fromSnapshot(s));

  static Future<SavedJobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SavedJobsRecord.fromSnapshot(s));

  static SavedJobsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SavedJobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SavedJobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SavedJobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SavedJobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SavedJobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSavedJobsRecordData({
  DocumentReference? jobSaved,
  DocumentReference? user,
  DateTime? savedTime,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'jobSaved': jobSaved,
      'user': user,
      'savedTime': savedTime,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class SavedJobsRecordDocumentEquality implements Equality<SavedJobsRecord> {
  const SavedJobsRecordDocumentEquality();

  @override
  bool equals(SavedJobsRecord? e1, SavedJobsRecord? e2) {
    return e1?.jobSaved == e2?.jobSaved &&
        e1?.user == e2?.user &&
        e1?.savedTime == e2?.savedTime &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(SavedJobsRecord? e) => const ListEquality().hash([
        e?.jobSaved,
        e?.user,
        e?.savedTime,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is SavedJobsRecord;
}
