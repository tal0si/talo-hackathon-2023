package com.talosi.hackaton.talosihackaton;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class TalosiHackatonEntrypoint  implements CommandLineRunner {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public void run(String... args) throws Exception {
        System.out.println(helloWorld());
        System.out.println("======================================================================");
        System.out.println("RESULT :");
        System.out.println("question 1 :" + question1());
        System.out.println("question 2 :" + question2());
        System.out.println("question 3 :" + question3());
        System.out.println("question 4 :" + question4());
        System.out.println("question 5 :" + question5());
        System.out.println("question 6 :" + question6());
        System.out.println("question 7 :" + question7());
        System.out.println("question 8 :" + question8());
        System.out.println("question 9 :" + question9());
        System.out.println("======================================================================");

        // Fermeture de l'application
        if( !Boolean.getBoolean("isRunningUnitTest"))
            System.exit(0);
    }

    public String helloWorld() {
        String sql = "SELECT hello FROM hello_world";
        String helloValue = jdbcTemplate.queryForObject(sql, String.class);
        return helloValue;
    }

    public String question1() {
        return "";
    }
    public String question2() {
        return "";
    }
    public String question3() {
        return "";
    }
    public String question4() {
        return "";
    }
    public String question5() {
        return "";
    }
    public String question6() {
        return "";
    }
    public String question7() {
        return "";
    }
    public String question8() {
        return "";
    }
    public String question9() {
        return "";
    }
}
