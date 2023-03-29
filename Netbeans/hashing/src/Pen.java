import java.util.*;


public class Pen {
public static void main(String[] args) {
List<Pen> t = new ArrayList<>();
t.add(new Pen("B",3));
t.add(new Pen("C",5));
t.add(new Pen("D",7));
t.add(new Pen("C",4));
t.add(new Pen("A",6));
Collections.sort(t);
for(Pen x: t) System.out.print(x);
System.out.println();
}
}
