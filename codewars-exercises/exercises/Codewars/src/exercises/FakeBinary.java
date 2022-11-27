package exercises;

import java.util.stream.Collectors;
import java.util.stream.Stream;

public class FakeBinary {
	public static String fakeBin(String numberString) {
		if (numberString.equals("")) {
			return "";
		}

		return Stream.of(numberString.split("")).map(i -> Integer.parseInt(i) < 5 ? "0" : "1")
				.collect(Collectors.joining(""));
	}
}
