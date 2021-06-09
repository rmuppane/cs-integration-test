#### Prerequisites for the tests
Download the JBOSS EAP from
```
https://access.redhat.com/jbossnetwork/restricted/listSoftware.html?downloadType=distributions&product=appplatform&version=7.2
```
installation instructions found at 
```
https://access.redhat.com/documentation/en-us/red_hat_jboss_enterprise_application_platform/7.3/html/installation_guide/index
```
Run the EAP on port 8080.

Download the PAM from
```
https://access.redhat.com/jbossnetwork/restricted/listSoftware.html?downloadType=distributions&product=rhpam&version=7.7.0
```
and deploy the PAM in above installed EAP. Instalation instructions found at
```
https://access.redhat.com/documentation/en-us/red_hat_process_automation_manager/7.7/html/installing_and_configuring_red_hat_process_automation_manager_on_red_hat_jboss_eap_7.2/index
```


While deploying the PAM create user with
```
username: rhpamAdmin
password: Pa$$w0rd
```


from a browser open and use the created rhpamAdmin account to login at:
```
http://localhost:8080/business-central/
```

Create additional Groups:
   * Click settings
   * Click New group
   * Name group as ```ProfessionalStaff``` <You can use any name for the group, remember the name for future usage>
   * Assign user ```rhpamAdmin``` to ```ProfessionalStaff``` group 
   * Click Add selected users


Repeat the above steps for addition of another group and name it as ```OperationsManager```  <You can use any name for the group, remember the name for future usage>

#### Build the [contractor-onboarding-process](https://gitlab.consulting.redhat.com/contractor-onboarding/contractor-onboarding-process) manually 
```
$ cd contractor-onboarding-process/
$ mvn clean install
```
Or

#### Build the [contractor-onboarding-process](https://gitlab.consulting.redhat.com/contractor-onboarding/contractor-onboarding-process) from Business Central 
   * Import project from [contractor-onboarding-process](https://gitlab.consulting.redhat.com/contractor-onboarding/contractor-onboarding-process.git)
   * Click ```Build and Install``` Button


#### Update Case Role assignments in Test Case
Replace the value of the ```users``` and ```managers``` in the feature file [[contractor-onboarding.feature](/src/test/resources/contractor-onboarding.feature)] with group names created above.

| users             |       managers    |
| ------------------|------------------ |
| ProfessionalStaff | OperationsManager |

#### Build and run tests
```
$ cd contractor-onboarding-integration-test/
$ mvn clean install
```
