
# APCS Triangle Lab

## Constructors

### Triangle( double x0, double y0, double x1, double y1, double x2, double y2)

The constructor that takes six doubles requires that you create Points from the doubles to initialize the triangle.

### Triangle( Point v0,Point v1,Point v2)

The constructor that takes three Points. You are required to make new instances of those Points to initialize the triangle.


## Accessor Methods

### Point getVertex(int v)

This method takes an int that is: 0,1,2 and returns the corresponding vertex( v0/v1/v2 ). You may assume v is 0,1,or 2.

### String toString()

This will return a string in the format `"{v0, v1, v2}"` where you replace v0/v1/v2 with the toString of the Point object

e.g.

`"{(2.0, 4.53), (0.0, 7.77), (1.52, -9.53)}"`

Notice you can use your point toString here

### double getPerimeter()
Return a double that is the perimeter of the Triangle

## Mutator Methods

### void setVertex(int v,Point p)

This method takes an int that is: 0,1,2 and a Point object. It replaces the corresponding vertex( v0/v1/v2 ) with the specified Point. You may assume v is 0,1,or 2.


## Things you must do to test:

Create multiple triangles to help you test

Test each method on different triangles

Change each vertex, and test your methods

You must already know the perimeters to check that your calculations are correct, so use easy to work with triangles (but include irrational ones like 1/1/sqrt(2) so you know it works!)

Diagrams on paper would be helpful.
