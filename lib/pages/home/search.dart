import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate {
  List<String> data = [
    "android",
    "windows",
    "mac",
    "linux",
    "parrotOS",
    "mint"
  ];
  List<String> recentSearch = [
    "Android",
    "Windows",
    "Mac",
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // var date = query.isNotEmpty ? data :

    if (query != null && data.contains(query.toLowerCase())) {
      print(query);
      return ListTile(
        title: Text(query),
        onTap: () {},
      );
    } else if (query == "") {
      return Text("");
    } else {
      return ListTile(
        title: Text("No results found"),
        onTap: () {},
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = data.where((p) => p.contains(query)).toList();
    if(query.isEmpty) {
      return Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Recent Searches',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                ),
                Text(
                  'See all',
                  style: TextStyle(fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
                itemCount: recentSearch.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.cyan.withOpacity(.3),
                      foregroundColor: Colors.black,
                      child: Text(suggestionList[index][0].toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 19,
                        ),), ),
                    title: Text(recentSearch[index], style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                    ),),
                    trailing: const Icon(
                      Icons.clear,
                    ),
                    onTap: () {},
                  );
                }),
          )
        ],
      );
    }else{
      
      return suggestionList.isNotEmpty? ListView.builder(
          itemCount: suggestionList.length,
          itemBuilder:  (context, index){
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.cyan.withOpacity(.3),
                foregroundColor: Colors.black,
                child: Text(suggestionList[index][0].toUpperCase(),
                  style: const TextStyle(
                   fontWeight: FontWeight.w600,
                   fontSize: 20,
              ),), ),
              title: Text(suggestionList[index],style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18
              )),
              trailing: const Icon(
                 color: Colors.cyan,
                size: 30,
                Icons.arrow_right_alt_sharp,
              ),
              onTap: () {},
            );
          }):Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(child: Text("No results found",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),))
        ],
      );
    }
  }
}
