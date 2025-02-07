import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientesRecord extends FirestoreRecord {
  ClientesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreCliente" field.
  String? _nombreCliente;
  String get nombreCliente => _nombreCliente ?? '';
  bool hasNombreCliente() => _nombreCliente != null;

  // "telefonoCliente" field.
  String? _telefonoCliente;
  String get telefonoCliente => _telefonoCliente ?? '';
  bool hasTelefonoCliente() => _telefonoCliente != null;

  // "emailCliente" field.
  String? _emailCliente;
  String get emailCliente => _emailCliente ?? '';
  bool hasEmailCliente() => _emailCliente != null;

  // "cedulaCliente" field.
  String? _cedulaCliente;
  String get cedulaCliente => _cedulaCliente ?? '';
  bool hasCedulaCliente() => _cedulaCliente != null;

  // "tipoMembresia" field.
  String? _tipoMembresia;
  String get tipoMembresia => _tipoMembresia ?? '';
  bool hasTipoMembresia() => _tipoMembresia != null;

  // "apellidosCliente" field.
  String? _apellidosCliente;
  String get apellidosCliente => _apellidosCliente ?? '';
  bool hasApellidosCliente() => _apellidosCliente != null;

  // "fechaDePago" field.
  DateTime? _fechaDePago;
  DateTime? get fechaDePago => _fechaDePago;
  bool hasFechaDePago() => _fechaDePago != null;

  void _initializeFields() {
    _nombreCliente = snapshotData['nombreCliente'] as String?;
    _telefonoCliente = snapshotData['telefonoCliente'] as String?;
    _emailCliente = snapshotData['emailCliente'] as String?;
    _cedulaCliente = snapshotData['cedulaCliente'] as String?;
    _tipoMembresia = snapshotData['tipoMembresia'] as String?;
    _apellidosCliente = snapshotData['apellidosCliente'] as String?;
    _fechaDePago = snapshotData['fechaDePago'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Clientes');

  static Stream<ClientesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientesRecord.fromSnapshot(s));

  static Future<ClientesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClientesRecord.fromSnapshot(s));

  static ClientesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClientesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClientesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClientesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClientesRecordData({
  String? nombreCliente,
  String? telefonoCliente,
  String? emailCliente,
  String? cedulaCliente,
  String? tipoMembresia,
  String? apellidosCliente,
  DateTime? fechaDePago,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreCliente': nombreCliente,
      'telefonoCliente': telefonoCliente,
      'emailCliente': emailCliente,
      'cedulaCliente': cedulaCliente,
      'tipoMembresia': tipoMembresia,
      'apellidosCliente': apellidosCliente,
      'fechaDePago': fechaDePago,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClientesRecordDocumentEquality implements Equality<ClientesRecord> {
  const ClientesRecordDocumentEquality();

  @override
  bool equals(ClientesRecord? e1, ClientesRecord? e2) {
    return e1?.nombreCliente == e2?.nombreCliente &&
        e1?.telefonoCliente == e2?.telefonoCliente &&
        e1?.emailCliente == e2?.emailCliente &&
        e1?.cedulaCliente == e2?.cedulaCliente &&
        e1?.tipoMembresia == e2?.tipoMembresia &&
        e1?.apellidosCliente == e2?.apellidosCliente &&
        e1?.fechaDePago == e2?.fechaDePago;
  }

  @override
  int hash(ClientesRecord? e) => const ListEquality().hash([
        e?.nombreCliente,
        e?.telefonoCliente,
        e?.emailCliente,
        e?.cedulaCliente,
        e?.tipoMembresia,
        e?.apellidosCliente,
        e?.fechaDePago
      ]);

  @override
  bool isValidKey(Object? o) => o is ClientesRecord;
}
