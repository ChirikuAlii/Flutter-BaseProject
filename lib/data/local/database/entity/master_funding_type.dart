import 'package:objectbox/objectbox.dart';

@Entity()
class MasterFundingTypeEntity {
  @Id(assignable: true)
  int? id;
  String? name;
  String? description;

  MasterFundingTypeEntity({
    this.id,
    this.name,
    this.description,
  });
}
