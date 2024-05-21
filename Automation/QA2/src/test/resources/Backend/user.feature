Feature: Service Users
  As QA Automation
  I want to consult a user
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service GET Method
    * def requestUser = {"name": '#(name)', "job": '#(job)', "id": '#(id)', "createdAt": '#(createdAt)'}
    * def responseGET = read('responseGET.json')

    Given path 'api','users'
    When method get
    Then status 200

  Scenario: Check the service POST Method

    * def requestUser = {"name": '#(name)', "job": '#(job)', "id": '#(id)', "createdAt": '#(createdAt)'}
    * def responsePOST = read('responsePOST.json')

      Given path 'api','users'
      When method post
      Then status 201

  Scenario: Check the service PUT Method

    * def requestUser = {"name": '#(name)', "job": '#(job)', "updatedAt": '#(updatedAt)'}
    * def responsePUT = read('responsePUT.json')

    Given path 'users','2'
    When method put
    Then status 404


  Scenario: Check the service DELETE Method

    * def requestUser = {"name": '#(name)', "job": '#(job)', "updatedAt": '#(updatedAt)'}
    * def responsePUT = read('responsePUT.json')

    Given path 'users','2'
    When method delete
    Then status 404

  Scenario: Check the service GET Method
    * def requestUser = {"name": '#(name)', "job": '#(job)', "id": '#(id)', "createdAt": '#(createdAt)'}
    * def responseGET = read('responseGET.json')

    Given path 'api','users'
    When method get
    Then status 200

  Scenario: Check the service POST Method

    * def requestUser = {"name": '#(name)', "job": '#(job)', "id": '#(id)', "createdAt": '#(createdAt)'}
    * def responsePOST = read('responsePOST.json')

    Given path 'api','users'
    When method post
    Then status 201

  Scenario: Check the service PUT Method

    * def requestUser = {"name": '#(name)', "job": '#(job)', "updatedAt": '#(updatedAt)'}
    * def responsePUT = read('responsePUT.json')

    Given path 'users','2'
    When method put
    Then status 404


  Scenario: Check the service DELETE Method

    * def requestUser = {"name": '#(name)', "job": '#(job)', "updatedAt": '#(updatedAt)'}
    * def responsePUT = read('responsePUT.json')

    Given path 'users','2'
    When method delete
    Then status 404



