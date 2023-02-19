# Test Cases for tasks #1 and #3 from Mr Buggy 3 

## Test case 1

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.1</span>                                                                |
|:------------------|:----------------------------------------------------------------------------------------------------------------------------------|
| **Description**   | User Registration - happy path 	                                                                                                  |
| **Preconditions** | -                                                                                                                                 |
| **Test data**     | <ins>username:</ins> "Tester", <ins>password:</ins> "TestoweHasło", <ins>firstName:</ins> "Jan", <ins>lastName:</ins> "Kowalski"  |

| Action                                                        | Expected result                                                                                               |
|:--------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------|
| 1. Enter <ins>username</ins> in *the Username* field.         | *The Username* field filled.                                                                                  |
| 2. Enter <ins>password</ins>  in *the Password* field.        | *The Password* field filled.                                                                                  |
| 3. Enter <ins>password</ins>  in *the Repeat password* field. | *The Repeat password* field filled.                                                                           |
| 4. Enter <ins>firstName</ins> in *the First Name* field.      | *The First Name* field filled.                                                                                |
| 5. Enter <ins>lastName</ins> in *the Last Name* field.        | *The Last Name* field filled.                                                                                 |
| 6. Click *the Register user* button.                          | Appearance of the message *"You have been successfully registered"* and a link to an empty registration form. |


## Test case 2

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.2</span>                                                               |
|:------------------|:---------------------------------------------------------------------------------------------------------------------------------|
| **Description**   | Registering an existing user	                                                                                                    |
| **Preconditions** | User with data from **Test data** registered in the application.                                                                 |
| **Test data**     | <ins>username:</ins> "Tester", <ins>password:</ins> "TestoweHasło", <ins>firstName:</ins> "Jan", <ins>lastName:</ins> "Kowalski" |

| Action                                                        | Expected result                                                                                                |
|:--------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------|
| 1. Enter <ins>username</ins> in *the Username* field.         | *The Username* field filled.                                                                                   |
| 2. Enter <ins>password</ins>  in *the Password* field.        | *The Password* field filled.                                                                                   |
| 3. Enter <ins>password</ins>  in *the Repeat password* field. | *The Repeat password* field filled.                                                                            |
| 4. Enter <ins>firstName</ins> in *the First Name* field.      | *The First Name* field filled.                                                                                 |
| 5. Enter <ins>lastName</ins> in *the Last Name* field.        | *The Last Name* field filled.                                                                                  |
| 6. Click *the Register user* button.                          | No registration possible. The appearance of the message *"The given username already exists in the database".* |


## Test case 3

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.3</span> |
|:------------------|:-------------------------------------------------------------------|
| **Description**   | Sending an empty form	                                             |
| **Preconditions** | -                                                                  |
| **Test data**     | -                                                                  |

| Action                                                                | Expected result                                                                                   |
|:----------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------|
| 1. Click *the Register user* button without filling the fields first. | No registration possible. The appearance of a message about the need to fill all required fields. |


## Test case 4

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.4</span>                                                                 |
|:------------------|:-----------------------------------------------------------------------------------------------------------------------------------|
| **Description**   | Sending the partially completed form	                                                                                              |
| **Preconditions** | -                                                                                                                                  |
| **Test data**     | <ins>username:</ins> "Tester9", <ins>password:</ins> "TestoweHasło1", <ins>firstName:</ins> "Jan", <ins>lastName:</ins> "Kowalski" |

| Action                                                                                                                          | Expected result                                                                                   |
|:--------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------|
| 1. Enter <ins>username</ins> in *the Username* field and leave the other fields empty. Click *the Register user* button.        | No registration possible. The appearance of a message about the need to fill all required fields. |
| 2. Enter <ins>password</ins> in *the Password* field and leave the other fields empty. Click *the Register user* button.        | No registration possible. The appearance of a message about the need to fill all required fields. |
| 2. Enter <ins>password</ins> in *the Repeat password* field and leave the other fields empty. Click *the Register user* button. | No registration possible. The appearance of a message about the need to fill all required fields. |
| 4. Enter <ins>firstName</ins> in *the First Name* field and leave the other fields empty. Click *the Register user* button.     | No registration possible. The appearance of a message about the need to fill all required fields. |
| 5. Enter <ins>lastName</ins> in *the Last Name* field and leave the other fields empty. Click *the Register user* button.       | No registration possible. The appearance of a message about the need to fill all required fields. |


## Test case 5

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.5</span>                                                                         |
|:------------------|:-------------------------------------------------------------------------------------------------------------------------------------------|
| **Description**   | Username consisting of 4 allowed characters	                                                                                               |
| **Preconditions** | -                                                                                                                                          |
| **Test data**     | <ins>username:</ins> "Test", <ins>password:</ins> "TestoweHasło", <ins>firstName:</ins> "Jan", <ins>lastName:</ins> "Kowalski"             |

| Action                                                       | Expected result                                                                                              |
|:-------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------|
| 1. Enter <ins>username</ins> in *the Username* field.        | *The Username* field filled.                                                                                 |
| 2. Enter <ins>password</ins> in *the Password* field.        | *The Password* field filled.                                                                                 |
| 3. Enter <ins>password</ins> in *the Repeat password* field. | *The Repeat password* field filled.                                                                          |
| 4. Enter <ins>firstName</ins> in *the First Name* field.     | *The First Name* field filled.                                                                               |
| 5. Enter <ins>lastName</ins> in *the Last Name* field.       | *The Last Name* field filled.                                                                                |
| 6. Click *the Register user* button.                         | No registration possible. The appearance of the message *"The Username must be at least 6 characters long".* |


## Test case 6

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.6</span>                                                              |
|:------------------|:--------------------------------------------------------------------------------------------------------------------------------|
| **Description**   | Username consisting of 5 allowed characters	                                                                                    |
| **Preconditions** | -                                                                                                                               |
| **Test data**     | <ins>username:</ins> "Teste", <ins>password:</ins> "TestoweHasło", <ins>firstName:</ins> "Jan", <ins>lastName:</ins> "Kowalski" |

| Action                                                       | Expected result                                                                                              |
|:-------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------|
| 1. Enter <ins>username</ins> in *the Username* field.        | *The Username* field filled.                                                                                 |
| 2. Enter <ins>password</ins> in *the Password* field.        | *The Password* field filled.                                                                                 |
| 3. Enter <ins>password</ins> in *the Repeat password* field. | *The Repeat password* field filled.                                                                          |
| 4. Enter <ins>firstName</ins> in *the First Name* field.     | *The First Name* field filled.                                                                               |
| 5. Enter <ins>lastName</ins> in *the Last Name* field.       | *The Last Name* field filled.                                                                                |
| 6. Click *the Register user* button.                         | No registration possible. The appearance of the message *"The Username must be at least 6 characters long".* |


## Test case 7

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.7</span>                                                                |
|:------------------|:----------------------------------------------------------------------------------------------------------------------------------|
| **Description**   | Username consisting of 7 allowed characters 	                                                                                     |
| **Preconditions** | -                                                                                                                                 |
| **Test data**     | <ins>username:</ins> "Tester1", <ins>password:</ins> "TestoweHasło", <ins>firstName:</ins> "Jan", <ins>lastName:</ins> "Kowalski" |

| Action                                                       | Expected result                                                                                               |
|:-------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------|
| 1. Enter <ins>username</ins> in *the Username* field.        | *The Username* field filled.                                                                                  |
| 2. Enter <ins>password</ins> in *the Password* field.        | *The Password* field filled.                                                                                  |
| 3. Enter <ins>password</ins> in *the Repeat password* field. | *The Repeat password* field filled.                                                                           |
| 4. Enter <ins>firstName</ins> in *the First Name* field.     | *The First Name* field filled.                                                                                |
| 5. Enter <ins>lastName</ins> in *the Last Name* field.       | *The Last Name* field filled.                                                                                 |
| 6. Click *the Register user* button.                         | Appearance of the message *"You have been successfully registered"* and a link to an empty registration form. |


## Test case 8

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.8</span>                                                                |
|:------------------|:----------------------------------------------------------------------------------------------------------------------------------|
| **Description**   | Username containing diacritics	                                                                                                   |
| **Preconditions** | -                                                                                                                                 |
| **Test data**     | <ins>username:</ins> "Tęster1", <ins>password:</ins> "TestoweHasło", <ins>firstName:</ins> "Jan", <ins>lastName:</ins> "Kowalski" |

| Action                                                       | Expected result                                                                                                                                                       |
|:-------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1. Enter <ins>username</ins> in *the Username* field.        | *The Username* field filled.                                                                                                                                          |
| 2. Enter <ins>password</ins> in *the Password* field.        | *The Password* field filled.                                                                                                                                          |
| 3. Enter <ins>password</ins> in *the Repeat password* field. | *The Repeat password* field filled.                                                                                                                                   |
| 4. Enter <ins>firstName</ins> in *the First Name* field.     | *The First Name* field filled.                                                                                                                                        |
| 5. Enter <ins>lastName</ins> in *the Last Name* field.       | *The Last Name* field filled.                                                                                                                                         |
| 6. Click *the Register user* button.                         | No registration possible. The appearance of the message *"The username may contain lowercase and uppercase letters (without diacritics), numbers and characters: -_"* |


## Test case 9

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.9</span>                                                                  |
|:------------------|:------------------------------------------------------------------------------------------------------------------------------------|
| **Description**   | Username containing characters: -_                                                                                                  |
| **Preconditions** | -                                                                                                                                   |
| **Test data**     | <ins>username:</ins> "Tester1-_", <ins>password:</ins> "TestoweHasło", <ins>firstName:</ins> "Jan", <ins>lastName:</ins> "Kowalski" |

| Action                                                       | Expected result                                                                                               |
|:-------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------|
| 1. Enter <ins>username</ins> in *the Username* field.        | *The Username* field filled.                                                                                  |
| 2. Enter <ins>password</ins> in *the Password* field.        | *The Password* field filled.                                                                                  |
| 3. Enter <ins>password</ins> in *the Repeat password* field. | *The Repeat password* field filled.                                                                           |
| 4. Enter <ins>firstName</ins> in *the First Name* field.     | *The First Name* field filled.                                                                                |
| 5. Enter <ins>lastName</ins> in *the Last Name* field.       | *The Last Name* field filled.                                                                                 |
| 6. Click *the Register user* button.                         | Appearance of the message *"You have been successfully registered"* and a link to an empty registration form. |


## Test case 10

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.10</span>                                                          |
|:------------------|:-----------------------------------------------------------------------------------------------------------------------------|
| **Description**   | A weak password with required length	                                                                                        |
| **Preconditions** | -                                                                                                                            |
| **Test data**     | <ins>username:</ins> "Tester2", <ins>password:</ins> "Testowe", <ins>firstName:</ins> "Jan", <ins>lastName:</ins> "Kowalski" |

| Action                                                       | Expected result                                                                                                                        |
|:-------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------|
| 1. Enter <ins>username</ins> in *the Username* field.        | *The Username* field filled.                                                                                                           |
| 2. Enter <ins>password</ins> in *the Password* field.        | *The Password* field filled.                                                                                                           |
| 3. Enter <ins>password</ins> in *the Repeat password* field. | *The Repeat password* field filled.                                                                                                    |
| 4. Enter <ins>firstName</ins> in *the First Name* field.     | *The First Name* field filled.                                                                                                         |
| 5. Enter <ins>lastName</ins> in *the Last Name* field.       | *The Last Name* field filled.                                                                                                          |
| 6. Click *the Register user* button.                         | No registration possible. The appearance of the message *"Your password is too weak. Your password strength must be at least medium".* |


## Test case 11

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.11</span>                                                                   |
|:------------------|:--------------------------------------------------------------------------------------------------------------------------------------|
| **Description**   | A strong password with required length	 	                                                                                             |
| **Preconditions** | -                                                                                                                                     |
| **Test data**     | <ins>username:</ins> "Tester3", <ins>password:</ins> "Tr9!n3H@s_ło1234", <ins>firstName:</ins> "Jan", <ins>lastName:</ins> "Kowalski" |

| Action                                                       | Expected result                                                                                               |
|:-------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------|
| 1. Enter <ins>username</ins> in *the Username* field.        | *The Username* field filled.                                                                                  |
| 2. Enter <ins>password</ins>  in *the Password* field.       | *The Password* field filled.                                                                                  |
| 3. Enter <ins>password</ins> in *the Repeat password* field. | *The Repeat password* field filled.                                                                           |
| 4. Enter <ins>firstName</ins> in *the First Name* field.     | *The First Name* field filled.                                                                                |
| 5. Enter <ins>lastName</ins> in *the Last Name* field.       | *The Last Name* field filled.                                                                                 |
| 6. Click *the Register user* button.                         | Appearance of the message *"You have been successfully registered"* and a link to an empty registration form. |


## Test case 12

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.12</span>                                                             |
|:------------------|:--------------------------------------------------------------------------------------------------------------------------------|
| **Description**   | Password consisting of 4 allowed characters	                                                                                    |
| **Preconditions** | -                                                                                                                               |
| **Test data**     | <ins>username:</ins> "Tester4", <ins>password:</ins> "Hasł", <ins>firstName:</ins> "Jan", <ins>lastName:</ins> "Kowalski"       |

| Action                                                       | Expected result                                                                                              |
|:-------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------|
| 1. Enter <ins>username</ins> in *the Username* field.        | *The Username* field filled.                                                                                 |
| 2. Enter <ins>password</ins> in *the Password* field.        | *The Password* field filled.                                                                                 |
| 3. Enter <ins>password</ins> in *the Repeat password* field. | *The Repeat password* field filled.                                                                          |
| 4. Enter <ins>firstName</ins> in *the First Name* field.     | *The First Name* field filled.                                                                               |
| 5. Enter <ins>lastName</ins> in *the Last Name* field.       | *The Last Name* field filled.                                                                                |
| 6. Click *the Register user* button.                         | No registration possible. The appearance of the message *"The Password must be at least 6 characters long".* |


## Test case 13

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.13</span>                                                        |
|:------------------|:---------------------------------------------------------------------------------------------------------------------------|
| **Description**   | Password consisting of 5 allowed characters	                                                                               |
| **Preconditions** | -                                                                                                                          |
| **Test data**     | <ins>username:</ins> "Tester5", <ins>password:</ins> "Hasł1", <ins>firstName:</ins> "Jan", <ins>lastName:</ins> "Kowalski" |

| Action                                                       | Expected result                                                                                              |
|:-------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------|
| 1. Enter <ins>username</ins> in *the Username* field.        | *The Username* field filled.                                                                                 |
| 2. Enter <ins>password</ins> in *the Password* field.        | *The Password* field filled.                                                                                 |
| 3. Enter <ins>password</ins> in *the Repeat password* field. | *The Repeat password* field filled.                                                                          |
| 4. Enter <ins>firstName</ins> in *the First Name* field.     | *The First Name* field filled.                                                                               |
| 5. Enter <ins>lastName</ins> in *the Last Name* field.       | *The Last Name* field filled.                                                                                |
| 6. Click *the Register user* button.                         | No registration possible. The appearance of the message *"The Password must be at least 6 characters long".* |


## Test case 14

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.14</span>                                                          |
|:------------------|:-----------------------------------------------------------------------------------------------------------------------------|
| **Description**   | Password consisting of 7 allowed characters	   	 	                                                                           |
| **Preconditions** | -                                                                                                                            |
| **Test data**     | <ins>username:</ins> "Tester6", <ins>password:</ins> "H@sł1-_", <ins>firstName:</ins> "Jan", <ins>lastName:</ins> "Kowalski" |

| Action                                                       | Expected result                                                                                               |
|:-------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------|
| 1. Enter <ins>username</ins> in *the Username* field.        | *The Username* field filled.                                                                                  |
| 2. Enter <ins>password</ins>  in *the Password* field.       | *The Password* field filled.                                                                                  |
| 3. Enter <ins>password</ins> in *the Repeat password* field. | *The Repeat password* field filled.                                                                           |
| 4. Enter <ins>firstName</ins> in *the First Name* field.     | *The First Name* field filled.                                                                                |
| 5. Enter <ins>lastName</ins> in *the Last Name* field.       | *The Last Name* field filled.                                                                                 |
| 6. Click *the Register user* button.                         | Appearance of the message *"You have been successfully registered"* and a link to an empty registration form. |


## Test case 15

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.15</span> |
|:------------------|:--------------------------------------------------------------------|
| **Description**   | Copying password	   	 	                                             |
| **Preconditions** | -                                                                   |
| **Test data**     | <ins>password:</ins> "TestoweHasło1"                                |

| Action                                                    | Expected result                                                                                |
|:----------------------------------------------------------|:-----------------------------------------------------------------------------------------------|
| 1. Enter <ins>password</ins> in *the Password* field.     | *The Password* field filled.                                                                   |
| 2. Select text in *the Password* field and press "ctrl+c" | Appearance of the message *"Not allowed. You cannot copy text that is in the password field".* |


## Test case 16

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.16</span>                                                                                              |
|:------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Description**   | The password entered in *the Repeat password* field is different from the one entered in *the Password* field	   	 	                                             |
| **Preconditions** | -                                                                                                                                                                |
| **Test data**     | <ins>username:</ins> "Tester7", <ins>password:</ins> "H@sł1-_", <ins>repeatPassword:</ins> "H@sło," <ins>firstName:</ins> "Jan", <ins>lastName:</ins> "Kowalski" |

| Action                                                             | Expected result                                                |
|:-------------------------------------------------------------------|:---------------------------------------------------------------|
| 1. Enter <ins>username</ins> in *the Username* field.              | *The Username* field filled.                                   |
| 2. Enter <ins>password</ins>  in *the Password* field.             | *The Password* field filled.                                   |
| 3. Enter <ins>repeatPassword</ins> in *the Repeat password* field. | *The Repeat password* field filled.                            |
| 4. Enter <ins>firstName</ins> in *the First Name* field.           | *The First Name* field filled.                                 |
| 5. Enter <ins>lastName</ins> in *the Last Name* field.             | *The Last Name* field filled.                                  |
| 6. Click *the Register user* button.                               | Appearance of the message *"Entered passwords are different".* |


## Test case 17

| Title             | <span style="font-weight:normal">Mr Buggy 3 - test case 1.17</span>                                                                |
|:------------------|:-----------------------------------------------------------------------------------------------------------------------------------|
| **Description**   | Checking the correctness of the link redirecting to an empty registration form	                                                    |
| **Preconditions** | -                                                                                                                                  |
| **Test data**     | <ins>username:</ins> "Tester8", <ins>password:</ins> "TestoweHasło1", <ins>firstName:</ins> "Jan", <ins>lastName:</ins> "Kowalski" |

| Action                                                       | Expected result                                                                                               |
|:-------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------|
| 1. Enter <ins>username</ins> in *the Username* field.        | *The Username* field filled.                                                                                  |
| 2. Enter <ins>password</ins> in *the Password* field.        | *The Password* field filled.                                                                                  |
| 3. Enter <ins>password</ins> in *the Repeat password* field. | *The Repeat password* field filled.                                                                           |
| 4. Enter <ins>firstName</ins> in *the First Name* field.     | *The First Name* field filled.                                                                                |
| 5. Enter <ins>lastName</ins> in *the Last Name* field.       | *The Last Name* field filled.                                                                                 |
| 6. Click *the Register user* button.                         | Appearance of the message *"You have been successfully registered"* and a link to an empty registration form. |
| 7. Click on the link *"Register another user"*               | A redirect to an empty user registration form.                                                                |