import 'package:flutter/material.dart';

class ExpansionList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) => EntryItem(data[index],),
        )
    );
  }
}


class Item {
  final String title;
  final List<Item> children;
  Item(this.title, [this.children = const <Item>[]]);
}

final List<Item> data = <Item>[
  Item(
    '우.동.착',
    <Item>[
          Item('우.동.착',
            <Item>[
              Item('content'),
            ],
          ),
          Item('주변 우.동.착',
            <Item>[
              Item('content'),
            ],
          ),
          Item('우.동.착 신청',
            <Item>[
              Item('content'),
            ],
          ),
          Item('소통공간',
            <Item>[
              Item('content'),
            ],
          ),
        ],
      ),
  Item(
    '온라인 특가',
    <Item>[
      Item('공동구매특가'),
      Item('라이브커머스'),
      Item('식자재 특가'),
    ]
  ),
  Item(
      '오프라인 특가',
      <Item>[
        Item('금주의전단지'),
        Item('오프라인특가'),
        Item('식자재 특가'),
      ]
  ),
  Item(
      '커뮤니티',
      <Item>[
        Item('공지사항'),
        Item('고객제안'),
        Item('자주하는 질문'),
      ]
  ),
  Item(
    'ms투데이'
  ),
  Item(
    '채용안내'
  ),
  Item(
    '앱 설정'
  ),
];

class EntryItem extends StatelessWidget{
  final Item item;
  const EntryItem(this.item);

  Widget _buildTiles(Item root){
    if(root.children.isEmpty){
      return ListTile(
        title:Text(root.title),

      );
    }
    return ExpansionTile(
      collapsedBackgroundColor: Colors.grey[200],
      key: PageStorageKey<Item>(root),
      title : Text(root.title),
      children : root.children.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(item);
  }
}