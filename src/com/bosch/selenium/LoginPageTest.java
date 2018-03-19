package com.bosch.selenium;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class LoginPageTest {

	public static void main(String[] args) {
		
		WebDriver webdriver = new FirefoxDriver();
		webdriver.get("http://localhost:7080/SpringMVCloginExample/login");
		webdriver.findElement(By.id("username")).sendKeys("Arunkumar");
		webdriver.findElement(By.id("password")).sendKeys("12345");
		webdriver.findElement(By.id("Login")).click();
		System.out.println("Done testing.....!");
	}

}
