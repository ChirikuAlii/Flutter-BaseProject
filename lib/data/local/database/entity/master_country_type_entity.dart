import 'package:objectbox/objectbox.dart';

@Entity()
class MasterCountryTypeEntity {
  @Id(assignable: true)
  int? id;
  String? name; // domestic, overseas, all
}
