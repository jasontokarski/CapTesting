package com.cg.selenium.SeleniumExample;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

public class PizzaTest {

	public static void main(String[] args) {
		System.setProperty("webdriver.chrome.driver", "C:\\selenium\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.navigate().to("http://localhost:8081/SeleniumWebPages/pitzza.html");
		driver.findElement(By.cssSelector("input[size='40']")).sendKeys("Jason Tokarski");
		driver.findElement(By.cssSelector("input[value='Hawaiians']")).click();
		Select sauce = new Select(driver.findElement(By.id("sel")));
		sauce.selectByVisibleText("Onion");
		sauce.selectByVisibleText("Panner");
		driver.findElement(By.cssSelector("input[value='Extra Cheese']")).click();
		driver.findElement(By.cssSelector("input[size='55']")).sendKeys("Please leave the package on the front door and ring the doorbell");
		try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			System.out.println(e);
			e.printStackTrace();
		}
		driver.findElement(By.cssSelector("input[type='submit']")).click();
		driver.close();
	}

}
