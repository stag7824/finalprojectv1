import 'package:flutter/foundation.dart';
import '../models/announcements_model.dart';

class AnnouncementsProvider with ChangeNotifier {
  List<AnnouncementsModel> _announcements = [];

  List<AnnouncementsModel> get announcements {
    return [..._announcements];
  }

  List<AnnouncementsModel> get homepageAnnounce {
    return [..._announcements];
  }
}
