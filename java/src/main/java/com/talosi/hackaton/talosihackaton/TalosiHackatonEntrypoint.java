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
        // Votre code ici...
        printHelloValue();

        // Fermeture de l'application
        System.exit(0);
    }

    public void printHelloValue() {
        String sql = "SELECT hello FROM hello_world";
        String helloValue = jdbcTemplate.queryForObject(sql, String.class);
        System.out.println(helloValue);
    }
}
