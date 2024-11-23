import 'package:flutter_base_project/data/local/database/entity/master_country_entity.dart';
import 'package:flutter_base_project/data/local/database/entity/master_country_type_entity.dart';
import 'package:flutter_base_project/data/local/database/entity/master_degree_entity.dart';
import 'package:flutter_base_project/data/local/database/entity/master_funding_type.dart';
import 'package:flutter_base_project/data/local/database/entity/master_institution_entity.dart';
import 'package:flutter_base_project/objectbox.g.dart';
import 'package:objectbox/objectbox.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class ObjectBoxDatabase {
  late final Store store;
  ObjectBoxDatabase._init(this.store);

  static Future<ObjectBoxDatabase> init() async {
    final dir = await getApplicationDocumentsDirectory();
    final store = await openStore(directory: p.join(dir.path, 'objectbox'));
    final objectBox = ObjectBoxDatabase._init(store);
    return objectBox;
  }

  Box<MasterCountryEntity> storeMasterCountry() {
    return store.box<MasterCountryEntity>();
  }

  Box<MasterCountryTypeEntity> storeMasterCountryType() {
    return store.box<MasterCountryTypeEntity>();
  }

  Box<MasterDegreeEntity> storeMasterDegree() {
    return store.box<MasterDegreeEntity>();
  }

  Box<MasterFundingTypeEntity> storeMasterFundingType() {
    return store.box<MasterFundingTypeEntity>();
  }

  Box<MasterInstitutionEntity> storeMasterInstitution() {
    return store.box<MasterInstitutionEntity>();
  }
}
