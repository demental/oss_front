## OSS front for various ISP

JSON based, RESTful Webservice on top of various Operations Support Systems
Goal : unify some isp's webservices, in term of technology at least.
Provide it as a JSON/REST webservice for common operations.

### API draft

session
  [POST]create
    params: login, password
    return: { session: session_id, created_at: timestamp }

account
  isp/:isp/accounts
    [GET]/
      list all accounts
    [GET]:account_identifier
      returns an account details
    [POST]:account_identifier
      creates a new account
    [PUT]:id/change_contract
      change account contract
    [PUT]:id/change_location
      change terminal location
    [PUT]:id/change_mac
      change terminal mac address
    [PUT]:id/suspend
      suspend account
    [DELETE]:id/cancel
      cancel account

job
  isp/:isp/jobs
  [GET]/
    list all jobs
  [GET]:id
    returns an job details
terminal
  isp/:isp/terminals
    [GET]:mac


### Techology.

We will use (webmachine)[https://github.com/seancribbs/webmachine-ruby]
