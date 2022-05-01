import 'package:json_annotation/json_annotation.dart';
part 'file.g.dart';

@JsonSerializable()
class File {

  @JsonKey(name: 'fileBase64')
  final String fileBase64;
  
  // @JsonKey(name: 'fileByte') // vai ser convertido na API
  // final ByteData fileByte;

  @JsonKey(name: 'fileName')
  final String fileName;
  
  @JsonKey(name: 'fileLenght')
  final int fileLenght;
  
  @JsonKey(name: 'fileExtension') 
  final String fileExtension;

  @JsonKey(name: 'sequence') 
  final int sequence;

  @JsonKey(name: 'openGalery') 
  final bool openGalery;

  @JsonKey(name: 'isImage') 
  final bool isImage;

  @JsonKey(name: 'heigth') 
  final int heigth;

  @JsonKey(name: 'width') 
  final int width;

  File(
    this.fileBase64,
    this.fileName,
    this.fileLenght,
    this.fileExtension,
    this.sequence,
    this.openGalery,
    this.isImage,
    this.heigth,
    this.width,
  );

   factory File.fromJson(Map<String, dynamic> json) => _$FileFromJson(json);
  Map<String, dynamic> toJson() => _$FileToJson(this);

}
