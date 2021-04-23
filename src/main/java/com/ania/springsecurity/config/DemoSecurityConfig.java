package com.ania.springsecurity.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("apecak").password("{noop}sappi123").roles("EMPLOYEE");
		auth.inMemoryAuthentication().withUser("jnowak").password("{noop}sappi123").roles("EMPLOYEE");
		auth.inMemoryAuthentication().withUser("akowalski").password("{noop}sappi123").roles("EMPLOYEE");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().anyRequest().authenticated().and().formLogin().loginPage("/showLoginPage")
				.loginProcessingUrl("/authenticateTheUser").permitAll();
	}

}
