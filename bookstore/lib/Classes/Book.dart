class Book {
  String id;
  String title;
  double price;
  String path;
  String category;
  String size;
  int yearOfPublication;
  int numberOfPages;
  String author;
  String translator;
  String publisher;

  // Constructor với giá trị mặc định
  Book({
    this.id = "Unknown ID",
    this.title = "Unknown Title",            
    this.price = 0.0,                        
    this.path = "images/default.png",        
    this.category = "Unknown Category",      
    this.size = "Unknown Size",              
    this.yearOfPublication = 2023,           
    this.numberOfPages = 0,                  
    this.author = "Unknown Author",          
    this.translator = "None",                
    this.publisher = "Unknown Publisher",    
  });
}
