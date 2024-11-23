import 'package:objectbox/objectbox.dart';

@Entity()
class MasterInstitutionEntity {
  @Id(assignable: true)
  int? id;
  String? name;

  MasterInstitutionEntity({
    this.id,
    this.name,
  });
}
