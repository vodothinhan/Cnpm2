package beans;

public class Book {
    private String id;
    private String title;
    private String author;
    private int pages;
    private String publisher;
    private String category;
    private int yearPublishing;
    private int numCopies;
    private String status;
    private String description;
    private String imageName;

    public Book() {
    }

    public Book(String id, String title, String author, int pages, String publisher, String category,
                int yearPublishing, int numCopies, String status, String description, String imageName) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.pages = pages;
        this.publisher = publisher;
        this.category = category;
        this.yearPublishing = yearPublishing;
        this.numCopies = numCopies;
        this.status = status;
        this.description = description;
        this.imageName = imageName;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getYearPublishing() {
        return yearPublishing;
    }

    public void setYearPublishing(int yearPublishing) {
        this.yearPublishing = yearPublishing;
    }

    public int getNumCopies() {
        return numCopies;
    }

    public void setNumCopies(int numCopies) {
        this.numCopies = numCopies;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id='" + id + '\'' +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", pages=" + pages +
                ", publisher='" + publisher + '\'' +
                ", category='" + category + '\'' +
                ", yearPublishing=" + yearPublishing +
                ", numCopies=" + numCopies +
                ", status='" + status + '\'' +
                ", description='" + description + '\'' +
                ", imageName='" + imageName + '\'' +
                '}';
    }
}