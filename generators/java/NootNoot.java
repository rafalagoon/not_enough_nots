import java.io.*;
import java.util.*;

public class NootNoot {
    public static void main(String[] args) {
        System.out.println("Initial code written to Not.java");

        int value = 0;

        while (true) {
            value += 1;
            try {
                incrementExclamation(value);
                System.out.println("Exclamation incremented successfully");
                // Compile the Java file
                Process compile = new ProcessBuilder("javac", "Not.java").start();
                compile.waitFor();  // Wait for the compilation process to finish
                // Then run the compiled Java file
                Process run = new ProcessBuilder("java", "Not").start();
                BufferedReader reader = new BufferedReader(new InputStreamReader(run.getInputStream()));
                String output = reader.readLine();
                System.out.println("Output:");
                System.out.println(output);
                // Assert the output based on the number of exclamation marks
                if (value % 2 == 0) {
                    assertOutput("true", output);
                } else {
                    assertOutput("false", output);
                }
                System.out.println("Output assertion successful");
                System.out.println("Max NOT: " + value);
            } catch (Exception e) {
                System.out.println("Error: " + e.getMessage());
                break;
            }
        }
    }

    static void incrementExclamation(int value) throws IOException {
        // Define the initial Java code
        String nootNoot = String.join("", Collections.nCopies(value, "!"));
        String initialCode = String.format("""
            public class Not {
                public static void main(String[] args) {
                    boolean result = nootNoot(true);
                    System.out.println(result);
                }

                static boolean nootNoot(boolean value) {
                    return %svalue;
                }
            }
            """, nootNoot);

        // Write the modified Java code back to the file
        BufferedWriter writer = new BufferedWriter(new FileWriter("Not.java"));
        writer.write(initialCode);
        writer.close();
    }

    static void assertOutput(String expectedOutput, String actualOutput) {
        if (!expectedOutput.equals(actualOutput)) {
            throw new AssertionError("Expected: " + expectedOutput + ", Got: " + actualOutput);
        }
    }
}
