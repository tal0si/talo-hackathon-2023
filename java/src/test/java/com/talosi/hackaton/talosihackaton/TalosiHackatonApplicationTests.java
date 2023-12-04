package com.talosi.hackaton.talosihackaton;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.TestComponent;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.util.Assert;

import javax.sql.DataSource;

import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
class TalosiHackatonApplicationTests {
	@Mock
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private TalosiHackatonEntrypoint talosiHackatonEntrypoint;

	static {
		System.setProperty("isRunningUnitTest", "true");
	}

	@Test
	public void testPrintHelloValue() {
		String query = "SELECT hello FROM hello_world";
		Mockito.when(jdbcTemplate.queryForObject(Mockito.eq(query), Mockito.any(RowMapper.class))).thenReturn("Hello, World!");

		String helloValue = this.talosiHackatonEntrypoint.helloWorld();
		assertEquals("Hello, World!", helloValue);
	}



}
