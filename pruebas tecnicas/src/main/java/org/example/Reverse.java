package org.example;

public class Reverse {
    public static void main(String[] args) {

        String sentence = "el cafe";
        String reversed = reverse(sentence);
        System.out.println("La palabra escrita será la siguiente: " + reversed);

    }

    public static String reverse(String sentence) {

        if (sentence.isEmpty()) {
            return reverse(sentence.substring(1)) + sentence.charAt(0);

    }
}