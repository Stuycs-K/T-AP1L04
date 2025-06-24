public class Driver{
  public static void main(String[]args){
    //Write your tests here!
    Point r = new Point(100,100);
    Point p = new Point(3.0,4.0);
    Point q = new Point(0.0,0.0);
    
    System.out.println(p+" should be (3.0,4.0)");
    
    System.out.println(r.distance(p,q)+" should be 5.0");
    
    p = new Point(3.0,4.0);
    q = new Point(4.0,5.0);
    System.out.println(p.distanceTo(q)+" should be 1.4142...");
  }
}
