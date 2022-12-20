package exercises;

public class TrafficLights {
	public static String updateLight(String current) {
		switch (current) {
		case "red":
			return "green";
		case "yellow":
			return "red";
		case "green":
			return "yellow";
		default:
			throw new IllegalArgumentException();
		}
	}
	// public static String updateLight(String current) {
	// 	switch (current) {
	// 	case "red":
	// 		return "green";
	// 	case "yellow":
	// 		return "red";
	// 	case "green":
	// 		return "yellow";
	// 	default:
	// 		throw new IllegalArgumentException();
	// 	}
	// }
}
