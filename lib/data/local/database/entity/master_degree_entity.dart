import 'package:objectbox/objectbox.dart';

@Entity()
class MasterDegreeEntity {
  @Id(assignable: true)
  int? id;
  String? name;
  String? description;

  MasterDegreeEntity({
    this.id,
    this.name,
    this.description,
  });
}
