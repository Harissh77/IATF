# IATF
Infrastructure Automation Test Suite

Test Suite Components
---------------------

1. Unit Tests: Validate individual infrastructure components.
2. System Integration Tests: Verify interactions between components.
3. Functionality Tests: Simulate user interactions to ensure functionality.
4. Security and Compliance Tests: Check vulnerabilities and regulatory adherence.
5. Performance and Scalability Tests: Assess responsiveness under load.


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

