import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobPostsRecord extends FirestoreRecord {
  JobPostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "jobName" field.
  String? _jobName;
  String get jobName => _jobName ?? '';
  bool hasJobName() => _jobName != null;

  // "jobCompany" field.
  String? _jobCompany;
  String get jobCompany => _jobCompany ?? '';
  bool hasJobCompany() => _jobCompany != null;

  // "salary" field.
  String? _salary;
  String get salary => _salary ?? '';
  bool hasSalary() => _salary != null;

  // "jobDescription" field.
  String? _jobDescription;
  String get jobDescription => _jobDescription ?? '';
  bool hasJobDescription() => _jobDescription != null;

  // "timeCreated" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "jobLocation" field.
  LatLng? _jobLocation;
  LatLng? get jobLocation => _jobLocation;
  bool hasJobLocation() => _jobLocation != null;

  // "postedBy" field.
  DocumentReference? _postedBy;
  DocumentReference? get postedBy => _postedBy;
  bool hasPostedBy() => _postedBy != null;

  // "likedPost" field.
  bool? _likedPost;
  bool get likedPost => _likedPost ?? false;
  bool hasLikedPost() => _likedPost != null;

  // "jobRequirements" field.
  String? _jobRequirements;
  String get jobRequirements => _jobRequirements ?? '';
  bool hasJobRequirements() => _jobRequirements != null;

  // "jobPreferredSkills" field.
  String? _jobPreferredSkills;
  String get jobPreferredSkills => _jobPreferredSkills ?? '';
  bool hasJobPreferredSkills() => _jobPreferredSkills != null;

  // "companyLogo" field.
  String? _companyLogo;
  String get companyLogo => _companyLogo ?? '';
  bool hasCompanyLogo() => _companyLogo != null;

  // "photoHero" field.
  String? _photoHero;
  String get photoHero => _photoHero ?? '';
  bool hasPhotoHero() => _photoHero != null;

  // "myJob" field.
  bool? _myJob;
  bool get myJob => _myJob ?? false;
  bool hasMyJob() => _myJob != null;

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
    _jobName = snapshotData['jobName'] as String?;
    _jobCompany = snapshotData['jobCompany'] as String?;
    _salary = snapshotData['salary'] as String?;
    _jobDescription = snapshotData['jobDescription'] as String?;
    _timeCreated = snapshotData['timeCreated'] as DateTime?;
    _jobLocation = snapshotData['jobLocation'] as LatLng?;
    _postedBy = snapshotData['postedBy'] as DocumentReference?;
    _likedPost = snapshotData['likedPost'] as bool?;
    _jobRequirements = snapshotData['jobRequirements'] as String?;
    _jobPreferredSkills = snapshotData['jobPreferredSkills'] as String?;
    _companyLogo = snapshotData['companyLogo'] as String?;
    _photoHero = snapshotData['photoHero'] as String?;
    _myJob = snapshotData['myJob'] as bool?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobPosts');

  static Stream<JobPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobPostsRecord.fromSnapshot(s));

  static Future<JobPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobPostsRecord.fromSnapshot(s));

  static JobPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobPostsRecord._(reference, mapFromFirestore(data));

  static JobPostsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      JobPostsRecord.getDocumentFromData(
        {
          'jobName': snapshot.data['jobName'],
          'jobCompany': snapshot.data['jobCompany'],
          'salary': snapshot.data['salary'],
          'jobDescription': snapshot.data['jobDescription'],
          'timeCreated': safeGet(
            () => DateTime.fromMillisecondsSinceEpoch(
                snapshot.data['timeCreated']),
          ),
          'jobLocation': safeGet(
            () => LatLng(
              snapshot.data['_geoloc']['lat'],
              snapshot.data['_geoloc']['lng'],
            ),
          ),
          'postedBy': safeGet(
            () => toRef(snapshot.data['postedBy']),
          ),
          'likedPost': snapshot.data['likedPost'],
          'jobRequirements': snapshot.data['jobRequirements'],
          'jobPreferredSkills': snapshot.data['jobPreferredSkills'],
          'companyLogo': snapshot.data['companyLogo'],
          'photoHero': snapshot.data['photoHero'],
          'myJob': snapshot.data['myJob'],
          'email': snapshot.data['email'],
          'display_name': snapshot.data['display_name'],
          'photo_url': snapshot.data['photo_url'],
          'uid': snapshot.data['uid'],
          'created_time': safeGet(
            () => DateTime.fromMillisecondsSinceEpoch(
                snapshot.data['created_time']),
          ),
          'phone_number': snapshot.data['phone_number'],
        },
        JobPostsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<JobPostsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'jobPosts',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'JobPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobPostsRecordData({
  String? jobName,
  String? jobCompany,
  String? salary,
  String? jobDescription,
  DateTime? timeCreated,
  LatLng? jobLocation,
  DocumentReference? postedBy,
  bool? likedPost,
  String? jobRequirements,
  String? jobPreferredSkills,
  String? companyLogo,
  String? photoHero,
  bool? myJob,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'jobName': jobName,
      'jobCompany': jobCompany,
      'salary': salary,
      'jobDescription': jobDescription,
      'timeCreated': timeCreated,
      'jobLocation': jobLocation,
      'postedBy': postedBy,
      'likedPost': likedPost,
      'jobRequirements': jobRequirements,
      'jobPreferredSkills': jobPreferredSkills,
      'companyLogo': companyLogo,
      'photoHero': photoHero,
      'myJob': myJob,
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

class JobPostsRecordDocumentEquality implements Equality<JobPostsRecord> {
  const JobPostsRecordDocumentEquality();

  @override
  bool equals(JobPostsRecord? e1, JobPostsRecord? e2) {
    return e1?.jobName == e2?.jobName &&
        e1?.jobCompany == e2?.jobCompany &&
        e1?.salary == e2?.salary &&
        e1?.jobDescription == e2?.jobDescription &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.jobLocation == e2?.jobLocation &&
        e1?.postedBy == e2?.postedBy &&
        e1?.likedPost == e2?.likedPost &&
        e1?.jobRequirements == e2?.jobRequirements &&
        e1?.jobPreferredSkills == e2?.jobPreferredSkills &&
        e1?.companyLogo == e2?.companyLogo &&
        e1?.photoHero == e2?.photoHero &&
        e1?.myJob == e2?.myJob &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(JobPostsRecord? e) => const ListEquality().hash([
        e?.jobName,
        e?.jobCompany,
        e?.salary,
        e?.jobDescription,
        e?.timeCreated,
        e?.jobLocation,
        e?.postedBy,
        e?.likedPost,
        e?.jobRequirements,
        e?.jobPreferredSkills,
        e?.companyLogo,
        e?.photoHero,
        e?.myJob,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is JobPostsRecord;
}
