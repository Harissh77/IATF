# IATF
Infrastructure Automation Test Framework


Importance of Testing IaC
-------------------------
|Terraform configuration  |Problem Description|
|:-------------| :-----:|
|Configuration Drift | When actual infrastructure configurations deviate from desired states, It may cause inconsistencies and errors |


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

