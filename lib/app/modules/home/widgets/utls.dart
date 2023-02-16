   // try {
    //   isLoading(true);
    //   var news = await NewsModelsProvider.fetchNews();
    //   if (news != null) {
    //     newsList.assignAll(news);
    //   }
    // } finally {
    //   isLoading(false);
    // }


       // var url = Uri.parse(
    //       'https://jsonplaceholder.typicode.com/posts');
    //   var response = await http.get(url);

    //   if (response.statusCode == 200) {
    //     var jsonResponse = json.decode(response.body);
    //     newsList.value = jsonResponse['articles'];
    //   } else {
    //     print('Request failed with status: ${response.statusCode}.');
    //   }