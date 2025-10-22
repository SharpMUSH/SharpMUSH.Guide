# @sitelock2
Sitelock allow/deny options:
- connect -- allow this site to connect to non-guest players
- !connect -- don't allow this site to connect to non-guest players
- guest -- allow this site to connect to guest players
- !guest -- don't allow this site to connect to guest players
- create -- allow this site to create players
- !create -- don't allow this site to create players
- default -- allow any of the above
- none -- don't allow any of the above
- !god -- God can't connect from this site.
- !wizard -- Wizards can't connect from this site.
- !admin -- Wizards and Royalty can't connect from this site.

Allow/deny options not set are assumed to be allowed.

Sitelock special options:
- register -- allow this site to use 'register `<name>` `<email>`' at the connection screen to register players. Players will be emailed their character's password. This should be used with !create to be effective.
- suspect -- set all players who connect from this site SUSPECT.
- deny_silent -- don't log failed access attempts from this site.
- regexp -- Treat the hostname pattern as a regular expression instead of a wildcard pattern.

See [@sitelock3].

