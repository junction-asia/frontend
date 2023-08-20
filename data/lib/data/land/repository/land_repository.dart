import 'package:data/data/land/dto/land_request.dart';
import 'package:data/data/land/dto/land_response.dart';
import 'package:data/utils/api_helper.dart';

class LandRepository {
  LandRepository();

  Future<Lands> getLand(land land) async {
    Lands result = await getByToken("/api/land", land.toJson())
        .then((value) => Lands.fromJson(value.data));

    return result;
  }

  Future<void> postLandComment(String comment, int id) async {
    await postByToken("/api/land/comment", {"land_id": id, "comment": comment});
  }
}
