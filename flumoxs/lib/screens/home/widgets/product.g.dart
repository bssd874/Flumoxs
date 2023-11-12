// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class productAdapter extends TypeAdapter<product> {
  @override
  final int typeId = 0;

  @override
  product read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return product(
      image: fields[1] as String,
      description: fields[2] as String,
      name: fields[3] as String,
      id: fields[0] as String, kategori: '',
      
    );
  }

  @override
  void write(BinaryWriter writer, product obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.kategori);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is productAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
