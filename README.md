# IATF
### Infrastructure Automation Test Framework

Infrastructure as Code (IaC) testing is the process of validating and verifying the infrastructure configuration and deployment scripts to ensure they meet the desired state and requirements.


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

##

# Test Architecture

Below is a list of potential test architecture options. Each architecture dictates its unique testing approach, outlining the stages and methodologies for effective validationAfter careful consideration, I recommend implementing Architecture 3.


Architecture 1 
--------------

Continous [Integration - Deployment - Test](https://github.com/Harissh77/IATF/blob/main/documentation/Architecture1.png)

Architecture 2 
--------------

Continous [Integration - Test - Deployment - Test](https://github.com/Harissh77/IATF/blob/main/documentation/Architecture2.png)

Architecture 3
--------------

Continous [Integration - Test - AutoFix - Deployment - Test](https://github.com/Harissh77/IATF/blob/main/documentation/Architecture3.png) 
                 
##

# Architecture 3 `(Recommended)`


Continous Integration - Test - AutoFix - Deploy - Test 
------------------------------------------------------

Integrating Artificial Intelligence (AI) into test architecture enhances testing efficiency, accuracy, and scalability. AI-powered testing enables:

1. Intelligent test case generation
2. Automated test data generation
3. Predictive test maintenance
4. Real-time test analytics
5. Self-healing tests

Tools
-----

Terraform - Provisioning and managing cloud and on-premises infrastructure

Tftest -  Automated tests for Terraform configurations, ensuring infrastructure reliability and validity.

Jenkins - For CI/CD pieplines

Checkov - Automated security and compliance scanning tool for Infrastructure-as-Code (IaC) configurations

Pytest - for Integration Tests. 

Test Model  <img src="https://github.com/user-attachments/assets/324d6d30-2f30-4846-b136-f4864559e87a" width="80" />
----------


Test cases will be automated as reusable building blocks, with each test modularized to perform a specific action. This modular design enables tests to be easily combined into tailored test suites for various scenarios, facilitating flexibility and scalability. 
Each test case will be labeled with a specific functional unit tag, enabling precise mapping to system functionality. This architecture empowers users to define and execute test suites using everyday English language, simplifying testing and increasing accessibility. 

### Example of "How any user can build and run the test"

_Build and Test the infrastructure Code on Azure using 'SUSE Linux' from my branch 'HarishFix-1104' with AI 'enabled'_

_Build and Test the infrastructure Code on AWS using 'Red Hat Linux' from my branch 'GauthamFix-1107' without AI 'enabled'_

_Build the infrastructure Code on AWS using 'Ubuntu' from my branch 'HanuFix-1212' and do not 'destroy'_




Test Suite Components
---------------------


| Test Type       | Use Case          | Terraform configuration  |
| ------------- |:-------------:| -----:|
| Unit test     | Configuration| [terraform test](https://github.com/Harissh77/IATF/tree/main/infrastructure-tests/tests)   [Test Plan](https://github.com/Harissh77/IATF/blob/main/documentation/IATF-UnitTest.pdf) |
| Acceptance Test     | Modules      |   Input Validation |
| System Integration Test  | Modules, configuration      |   terraform test|
| Functionality Test  | Product functionality      |   pytest |


# Demo


Jenkins Pipeline 
----------------

A functional prototype has been developed, showcasing the automated provisioning of an AWS instance, execution of tests via TFtest, and resource cleanup. 

Try it yourself !


URL : http://44.244.72.199:8080/

User : MercurySparks

Password : atlan2277?!

