package com.notearena.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class AppSecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		// add our users for in memory authentication
		
		UserBuilder users = User.withDefaultPasswordEncoder();
		
		auth.inMemoryAuthentication()
			.withUser(users.username("mamun").password("mamun111").roles("EMPLOYEE","HR_MANAGER"))
			.withUser(users.username("sourav").password("sourav111").roles("EMPLOYEE", "MANAGER"))
			.withUser(users.username("kayum").password("kayum111").roles("EMPLOYEE", "ADMIN"))
			.withUser(users.username("abraham").password("abraham111").roles("EMPLOYEE", "CLARK"));
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests()
		.antMatchers("/").hasRole("EMPLOYEE")
		.antMatchers("/employer/**").hasRole("MANAGER")
		.antMatchers("/system/**").hasRole("ADMIN")
		.antMatchers("/jobs/**").hasAnyRole("ADMIN","HR_MANAGER","MANAGER")
		.and()
		.formLogin()
			.loginPage("/loginPage")
			.loginProcessingUrl("/authenticateUser")
			.permitAll()
		.and()
		.logout().permitAll()
		.and()
		.exceptionHandling().accessDeniedPage("/access-denied");
	
}
		
}
