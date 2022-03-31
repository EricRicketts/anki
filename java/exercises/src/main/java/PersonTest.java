import java.util.*;
import java.util.stream.Stream;

public class PersonTest {
    public static void main(String[] args) {
        Map<String, Person> hMap = new HashMap<>();
        Map<String, Person> hMapNext = new HashMap<>();
        List<Person> myList = new ArrayList<>();
        List<Person> myListNext = new ArrayList<>();

        hMap.put("first", new Person("Fred", "Flintstone", 35));
        hMap.put("second", new Person("Wilma", "Flintstone", 33));
        hMap.put("third", new Person("Barney", "Rubble", 34));
        hMap.put("fourth", new Person("Betty", "Rubble", 32));

        hMapNext.put("fifth", new Person("Bugs", "Bunny", 33));
        hMapNext.put("sixth", new Person("Daffy", "Duck", 32));
        hMapNext.put("seventh", new Person("Elmer", "Fudd", 31));
        hMapNext.put("eighth", new Person("Foghorn", "Leghorn", 30));

        myList.add(new Person("Fred", "Flintstone", 35));
        myList.add(new Person("Wilma", "Flintstone", 33));
        myList.add(new Person("Barney", "Rubble", 34));
        myList.add(new Person("Betty", "Rubble", 32));

        myListNext.add(new Person("Bugs", "Bunny", 33));
        myListNext.add(new Person("Daffy", "Duck", 32));
        myListNext.add(new Person("Elmer", "Fudd", 31));
        myListNext.add(new Person("Foghorn", "Leghorn", 30));
    }
}
