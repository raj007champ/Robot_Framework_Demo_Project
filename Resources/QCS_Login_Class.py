from selenium import webdriver
from selenium.webdriver.common.keys import Keys


def valid_login_to_qcs(url):
    # Valid login test for QCS
    driver = webdriver.Chrome()
    driver.implicitly_wait(20)
    driver.maximize_window()
    driver.get(url)
    driver.find_element_by_id("username").send_keys("admin")
    driver.find_element_by_id("password").send_keys("admin")
    driver.find_element_by_xpath("//button[@type='submit']").click()
    driver.quit()


def invalid_login_to_qcs(url):
    # Invalid login test for QCS
    driver = webdriver.Chrome()
    driver.implicitly_wait(20)
    driver.maximize_window()
    driver.get(url)
    driver.find_element_by_id("username").send_keys("admin1")
    driver.find_element_by_id("password").send_keys("admin")
    driver.find_element_by_xpath("//button[@type='submit']").click()
    driver.quit()
