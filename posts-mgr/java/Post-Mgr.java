import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
//import java.util.Stream;
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        //System.out.println("Hello");

        String p = "C:\\Users\\amole\\Documents\\notes";
        
        class Filter implements FilenameFilter {
            @Override
            public boolean accept(File f, String n) {
                //System.out.println(n);
                File f2 = new File(f, n);
                boolean r = !f2.isHidden();
                return r;
            }
        }
        FilenameFilter ff = (FilenameFilter) new Filter();

        File d = new File(p);
        String[] d2 = d.list(ff);
        Arrays.sort(d2);

        //Stream<File> d3 = Arrays.stream(d2); //.map(s -> File(p, s));

        File[] d3 = new File[d2.length];
        for (int di = 0; di < d2.length; di += 1) {
            d3[di] = new File(p, d2[di]);
        }

        for (int i = 0; i < d3.length; i += 1) {
            //File fi = File(p, d2[i]);
            System.out.println(d3[i]); 
        }



    }
}
