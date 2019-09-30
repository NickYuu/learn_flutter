class News {
  final String author;
  final String title;
  final String urlToImage;

  News(
      {this.author,
      this.title,
      this.urlToImage,});
}

final List<News> data = [
  News(
    author: "ETtoday新聞雲",
    title: "阿達脫單！告白女神「我會疼妳」 熊熊改觀：他很值得依靠 - ETtoday星光雲",
    urlToImage: "https://cdn2.ettoday.net/images/4403/d4403611.jpg",
  ),
  News(
    author: "三立新聞網",
    title: "不忍了！韓粉若再辱罵…黃捷已截圖：將會一個個進行提告！ - 三立新聞網",
    urlToImage: "https://attach.setn.com/newsimages/2019/09/30/2157971-PH.jpg",
  ),
  News(
    author: "記者馮克芸╱即時報導",
    title: "Forever21：將聲請破產 停止在40國營運且關全球350店 - udn 聯合新聞網",
    urlToImage: "https://pgw.udn.com.tw/gw/photo.php?u=https://uc.udn.com.tw/photo/2019/09/25/realtime/6864030.jpg&s=Y&x=0&y=0&sw=1280&sh=853&exp=3600",
  ),
  News(
    author: "記者吳敏欣╱即時報導",
    title: "恰恰引退／破鋒哥引退賽票房 恰：沒什麼好比 - udn 聯合新聞網",
    urlToImage:"https://pgw.udn.com.tw/gw/photo.php?u=https://uc.udn.com.tw/photo/2019/09/30/1/6882510.jpg&s=Y&x=0&y=0&sw=1080&sh=720&exp=3600",
  ),
  News(
    author: "台北29日電",
    title:  "何韻詩遭潑漆兩嫌上午10時移送北檢| 聯合新聞網 - udn 聯合新聞網",
    urlToImage: "https://pgw.udn.com.tw/gw/photo.php?u=https://uc.udn.com.tw/photo/2019/09/30/98/6882288.jpg&s=Y&x=0&y=46&sw=1278&sh=852&exp=3600",
  ),
  News(
    author:  "盧品青",
    title: "MLB》逃過第163場 紅雀最終日封王 - 中時電子報 Chinatimes.com",
    urlToImage:  "https://images.chinatimes.com/newsphoto/2019-09-30/900/20190930000958.jpg",
  ),
];