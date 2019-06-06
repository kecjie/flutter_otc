class BaseTagBean {
  bool isSelected = false;

  BaseTagBean(this.isSelected);
}


class TagBean extends BaseTagBean {
  String name;

  TagBean(this.name, isSelected) : super(isSelected);
}

class PayTypeTag extends BaseTagBean {
  String name;

  PayTypeTag(this.name, isSelected) : super(isSelected);
}


class ChangeTag {
  int _prePosSelected = 0;

  List<T> changeSelectedTag<T extends BaseTagBean>(List<T> tags, int index,
      {int least = 1}) {
    if (_prePosSelected != index) {
      tags[_prePosSelected].isSelected = false;
    }
    if (least == 1) {
      tags[index].isSelected = true;
    } else {
      tags[index].isSelected = !tags[index].isSelected;
    }
    _prePosSelected = index;
    return tags;
  }

  List<T> changeSelectedTag2<T extends BaseTagBean>(List<T> tags, int index) {
    tags.forEach((item) {
      item.isSelected=false;
    });
    tags[index].isSelected=true;
    return tags;
  }
}