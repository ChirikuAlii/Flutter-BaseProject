import 'package:objectbox/objectbox.dart';

@Entity()
class MasterCountryEntity {
  @Id(assignable: true)
  int? id;
  String? name;

  MasterCountryEntity({
    this.id,
    this.name,
  });
}
