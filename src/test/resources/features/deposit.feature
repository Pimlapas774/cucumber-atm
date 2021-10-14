Feature: deposit
  As a customer
  I want to deposit to my account using ATM

Background:
  Given a customer with id 1 and pin 111 with balance 200 exists
  And I login to ATM with id 1 and pin 111

Scenario: Deposit amount more than zero
  When I login to ATM with id 1 and pin 111
  And I deposit 50 to ATM
  Then my account balance is 250

Scenario: Deposit amount less than zero
  When I login to ATM with id 1 and pin 111
  And I deposit that, less than zero, -10 to ATM
  Then my account balance is 200