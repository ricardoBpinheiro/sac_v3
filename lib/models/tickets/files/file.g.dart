// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

File _$FileFromJson(Map<String, dynamic> json) => File(
      json['fileBase64'] as String,
      json['fileName'] as String,
      json['fileLenght'] as int,
      json['fileExtension'] as String,
      json['sequence'] as int,
      json['openGalery'] as bool,
      json['isImage'] as bool,
      json['heigth'] as int,
      json['width'] as int,
    );

Map<String, dynamic> _$FileToJson(File instance) => <String, dynamic>{
      'fileBase64': instance.fileBase64,
      'fileName': instance.fileName,
      'fileLenght': instance.fileLenght,
      'fileExtension': instance.fileExtension,
      'sequence': instance.sequence,
      'openGalery': instance.openGalery,
      'isImage': instance.isImage,
      'heigth': instance.heigth,
      'width': instance.width,
    };
