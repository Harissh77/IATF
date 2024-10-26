# IATF
Infrastructure Automation Test Framework


Importance of Testing IaC
-------------------------
|Problem  |Problem Description|
|:-------------| :-----|
|Configuration Drift | When actual infrastructure configurations deviate from desired states, It may cause inconsistencies and errors |
|Deployment Failures | Untested IaC can result in deployment failures, downtime, and lost productivity due to incorrect or incompatible configurations |
|Compliance Issues   | Non-compliant infrastructure configurations can result in failed audits, regulatory penalties, and reputational damage |
|Resource mismanagement | Unoptimized infrastructure configurations can lead to unnecessary resource utilization, increased costs, and inefficient resource allocation |
|Debugging Issues | identifying and debugging infrastructure issues can become complex and time-consuming |
|Inconsistent Environments | Un-tested IaC can lead to inconsistent environments across QA, PreProd, and Prod causing issues with application behavior and testing |
|Security Vulnerabilities |  Un-tested IaC configurations may expose infrastructure to security risks, such as unpatched vulnerabilities or unauthorized access controls |


Test Architecture
-----------------

Continous Integration - Deployment - Test 
          -----------   ----------   ----        


Test Suite Components
---------------------


| Test Type       | Use Case          | Terraform configuration  |
| ------------- |:-------------:| -----:|
| Unit test     | Configuration| [terraform test](https://github.com/Harissh77/IATF/tree/main/infrastructure-tests/unit-test)  [Test Plan](https://github.com/Harissh77/IATF/blob/main/documentation/IATF-UnitTest.pdf) |
| Acceptance Test     | Modules      |   Input Validation |
| System Integration Test  | Modules, configuration      |   terraform test|
| Functionality Test  | Product functionality      |   pytest |



Jenkins Pipeline 
----------------

URL : http://44.244.72.199:8080/

User : MercurySparks

Password : atlan2277?!

