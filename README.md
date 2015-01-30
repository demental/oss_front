## OSS front for various ISP

JSON based, RESTful Webservice on top of various Operations Support Systems
Goal : unify some isp's webservices, in term of technology at least.
Provide it as a JSON/REST webservice for common operations.

### API draft

#### session

  * [POST]create

    params: login, password

    return: { session: session_id, created_at: timestamp }

#### account

  * [GET]isp/:isp/accounts/

    list all accounts

  * [GET]isp/:isp/accounts/:account_identifier

    returns an account details

  * [POST]isp/:isp/accounts/:account_identifier

    creates a new account

  * [PUT]isp/:isp/accounts/:account_identifier/change_contract

    change account contract

  * [PUT]isp/:isp/accounts/:account_identifier/change_location

    change terminal location

  * [PUT]isp/:isp/accounts/:account_identifier/change_mac

    change terminal mac address

  * [PUT]isp/:isp/accounts/:account_identifier/suspend

    suspend account

  * [DELETE]isp/:isp/accounts/:account_identifier/cancel

    cancel account

#### job

  * [GET]isp/:isp/jobs/

    list all jobs

  * [GET]isp/:isp/jobs/:id

    returns an job details

#### terminal

  * [GET]isp/:isp/terminals/

    list all mac addresses

  * [GET]isp/:isp/terminals/:mac




### Techology.

We will use (webmachine)[https://github.com/seancribbs/webmachine-ruby]
