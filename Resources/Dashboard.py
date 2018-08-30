from selenium import webdriver
from selenium.webdriver.common.by import By

def verify_dashboard():
    getText = driver.find_element(By.XPATH, '(//div[@class="ant-breadcrumb"]/span/span)[1]').text
    print(getText)
