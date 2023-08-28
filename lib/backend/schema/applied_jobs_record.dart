import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppliedJobsRecord extends FirestoreRecord {
  AppliedJobsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "jobApplied" field.
  DocumentReference? _jobApplied;
  DocumentReference? get jobApplied => _jobApplied;
  bool hasJobApplied() => _jobApplied != null;

  // "userApplied" field.
  DocumentReference? _userApplied;
  DocumentReference? get userApplied => _userApplied;
  bool hasUserApplied() => _userApplied != null;

  // "appliedTime" field.
  DateTime? _appliedTime;
  DateTime? get appliedTime => _appliedTime;
  bool hasAppliedTime() => _appliedTime != null;

  // "coverLetter" field.
  String? _coverLetter;
  String get coverLetter => _coverLetter ?? '';
  bool hasCoverLetter() => _coverLetter != null;

  // "image_1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "image_2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "image_3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

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
    _jobApplied = snapshotData['jobApplied'] as DocumentReference?;
    _userApplied = snapshotData['userApplied'] as DocumentReference?;
    _appliedTime = snapshotData['appliedTime'] as DateTime?;
    _coverLetter = snapshotData['coverLetter'] as String?;
    _image1 = snapshotData['image_1'] as String?;
    _image2 = snapshotData['image_2'] as String?;
    _image3 = snapshotData['image_3'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appliedJobs');

  static Stream<AppliedJobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppliedJobsRecord.fromSnapshot(s));

  static Future<AppliedJobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppliedJobsRecord.fromSnapshot(s));

  static AppliedJobsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppliedJobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppliedJobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppliedJobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppliedJobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppliedJobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppliedJobsRecordData({
  DocumentReference? jobApplied,
  DocumentReference? userApplied,
  DateTime? appliedTime,
  String? coverLetter,
  String? image1,
  String? image2,
  String? image3,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'jobApplied': jobApplied,
      'userApplied': userApplied,
      'appliedTime': appliedTime,
      'coverLetter': coverLetter,
      'image_1': image1,
      'image_2': image2,
      'image_3': image3,
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

class AppliedJobsRecordDocumentEquality implements Equality<AppliedJobsRecord> {
  const AppliedJobsRecordDocumentEquality();

  @override
  bool equals(AppliedJobsRecord? e1, AppliedJobsRecord? e2) {
    return e1?.jobApplied == e2?.jobApplied &&
        e1?.userApplied == e2?.userApplied &&
        e1?.appliedTime == e2?.appliedTime &&
        e1?.coverLetter == e2?.coverLetter &&
        e1?.image1 == e2?.image1 &&
        e1?.image2 == e2?.image2 &&
        e1?.image3 == e2?.image3 &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(AppliedJobsRecord? e) => const ListEquality().hash([
        e?.jobApplied,
        e?.userApplied,
        e?.appliedTime,
        e?.coverLetter,
        e?.image1,
        e?.image2,
        e?.image3,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is AppliedJobsRecord;
}
