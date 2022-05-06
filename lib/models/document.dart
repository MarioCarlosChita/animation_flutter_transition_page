
class Document{
     String name;
     String description;
     bool   isAvaliable;
     double rate;
     String urls ;

     Document({
       required this.name,
       required this.description,
       required this.isAvaliable ,
       required this.rate,
       required this.urls
     });
}


final List<Document> listDocuments = [
   Document(
        name: "Lucas Sorts",
        description: 'a simple book  for childrens',
        urls: "assets/img1.jpg" ,
        isAvaliable: false,
        rate: 4.2
     ) ,
     Document(
      name: "Lucas Sorts",
      description: 'a simple book  for childrens',
      urls: "assets/img2.jpg" ,
      isAvaliable: true,
       rate: 4.2
     ),

     Document(
      name: "Dancy Code",
      description: 'finds the Dancy Secrets on this book',
      urls: "assets/img3.jpg" ,
      isAvaliable: true,
      rate: 4.2
     ),
  Document(
      name: "Dancy Code",
      description: 'finds the Dancy Secrets on this book',
      urls: "assets/img3.jpg" ,
      isAvaliable: true,
      rate: 4.2
  ),
  Document(
      name: "Dancy Code",
      description: 'finds the Dancy Secrets on this book',
      urls: "assets/img3.jpg" ,
      isAvaliable: true,
      rate: 4.2
  ),
  Document(
      name: "Dancy Code",
      description: 'finds the Dancy Secrets on this book',
      urls: "assets/img3.jpg" ,
      isAvaliable: true,
      rate: 4.2
  ),
];