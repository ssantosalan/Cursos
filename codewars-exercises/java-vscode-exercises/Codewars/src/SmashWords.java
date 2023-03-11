import java.util.Arrays;
import java.util.stream.Collectors;

public class SmashWords {

    public static String smash(String... words) {
        StringBuilder phrase = new StringBuilder();
        for (String word : words) {
            phrase.append(word + " ");
        }

        return phrase.toString().trim();
    }

    public static String smash2(String... words) {
        String phrase = Arrays.stream(words).collect(Collectors.joining(" "));
        return phrase;
    }

    public static String smash3(String... words) {
        if(words.length == 0) {
            return "";
        }
        return Arrays.toString(words).join(" ");
    }

    public static String smash4(String... words) {
        return String.join(" ", words);
    }

}