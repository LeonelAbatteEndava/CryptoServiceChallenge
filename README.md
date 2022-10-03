## CryptoServiceChallenge

Funcionalidad API

La API de coinmarketcap nos permite obtener las distintas cotizaciones de criptomonedas y convertirlas a la moneda deseada

Para poder utilizarla necesitamos primero la API Key, que se obtiene registrandose en el sitio de Coinmarketcap

Obtenida la API Key, podemos empezar a realizar las solicitudes a los endopoints deseados creando, como en este caso, una coleccion de querys en postman

La URL que usaremos en nuestra app será la siguiente:

"https://sandbox-api.coinmarketcap.com/v1/cryptocurrency/listings/latest"

```shell

curl --location --request GET 'https://sandbox-api.coinmarketcap.com/v2/tools/price-conversion?symbol=USD&convert=BTC&amount=1.0' \
--header 'X-CMC_PRO_API_KEY: b54bcf4d-1bca-4e8e-9a24-22ff2c3d462c' \
--header 'Accept: */*'

```
A la cual le podremos agregar los parametros a obtener según la moneda que querramos visualizar, esto parametros son:

Symbol: Criptomenda de la cual queremos saber la cotizacion
Convert: Moneda en la cual queremos ver la conversion de la criptomoneda
Amount: Monto de cryptomoneda a convertir

Con esta consulta la query nos devolverá un JSON con los siguientes datos:

```json

{
    "status": {
        "timestamp": "2022-09-30T04:47:24.947Z",
        "error_code": 0,
        "error_message": null,
        "elapsed": 1,
        "credit_count": 1,
        "notice": null
    },
    "data": {
        "USD": {
            "symbol": "USD",
            "id": "k0zz7m51uxq",
            "name": "zr0q9cjpe7a",
            "amount": 1,
            "last_updated": "2022-09-30T04:47:24.947Z",
            "quote": {
                "BTC": {
                    "price": 4451,
                    "last_updated": "2022-09-30T04:47:24.947Z"
                }
            }
        }
    }
}

```
Se importa la coleccion de Postman como JSON, la misma se encuentra guardada en el repositorio

Working Agreements

Coexistence rules

All communications which are of interest to the whole team should be done through the Teams channel: Trainings (inside the Buenos Aires DU’s Mobile Team) ( https://teams.microsoft.com/l/channel/19%3adb342fa122a047628b1c710ddb7c601e%40thread.skype/Trainings?groupId=399a132f-df01-4a73-aab6-9d6be4838980&tenantId=0b3fc178-b730-4e8b-9843-e81259237b77) 
Do not mention the whole team in Teams 
Schedule meetings at least one day in advance. 
Turn on the camera as much as possible in all meetings. 
In case of not being able to attend the meetings, pass a summary to the group via chat. 
Always record the meetings so that the members who cannot attend can consult them. 
When scheduling a meeting always add a summary of topics to be discussed so that all members can prepare the necessary material before the meeting. 
Consult the availability of those involved when scheduling a meeting. 
Notify as soon as possible in case of meeting cancellations 
As the World Cup is coming up, check match schedules when scheduling a meeting. 
Try not to miss the main ceremonies. 
Bring all US (User Story) refined and with subtask loaded before planning. 
If the estimation is more than 8 we can split.
All PR must be assigned to the Tech Lead as reviewed
PR must have a light description of the task(s) resolved on it and a link to it as well

Methodology

Scrum 

Roles (Scrum Master, Product Owner, Development Team) 
Two-week sprint 
Ceremonies: Standup meeting (15 min max), Planning meeting (30 min), Demo meeting (30 min), Retro meeting (30 min) 
Define turn to talk into a daily meeting, the order to talk must be defined inside the summary of the standup meeting invite. 
Jira tool will be used 
Type of issues: 
Epics -> We will use them to define stages. 
User Stories -> To define a tangible increment of the product that brings value. 
Tasks -> To define tasks that do not necessarily bring value to the end user in the application but are required to be performed. 
Subtasks -> Will reflect the subtasks that need to be performed to carry out a US or Task.
We only estimate Task and US  
We will track the spent time inside the sub tasks. 
Bugs -> They will represent some punctual error of the app. 
Points -> 1 2 3 5 8 13 13 21 .... from 8 onwards should be split. 
Backlog, In Progress, Review, Done 

Technical Agreements 
 
Flow: feature flow

https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow 
Feature branch: feature/XXX-XXX-XXX-name-ticket 
Main branch: main 
Code Review: review by at least one technical lead is required (Review the code and do a minimal test at your site that compiles and tests the functionality, run tests if they exist).

Definition of Ready

It must be correctly defined with a statement containing the final value it would add to the product for the user, 
It must contain all the details, such as texts, design, resources, and API (Application Programming Interfaces) definitions 
It must have the AC (Acceptance Criteria) well defined and clear. 
It must have well defined, by the dev team, all the subtasks needed to accomplish the details and estimations. 

Definition of Done

It must accomplish all the AC defined in the ticket. 
The code must be merged into the main branch. 
All the tests must be completed with an OK. 
It must not exist style errors (Static analysis of code) 
It must pass the Code Review from Technical Lead  
It must be seen by the PO (Product Owner) 
