# CQPweb

This repository includes the CQPweb server code and all its dependencies. CQPweb is web-based interface, developed by Andrew Hardie of Lancaster University, for a corpus analysis tool called Corpus Workbench (CWB), and uysing its query processor CQP.

Selected versions of CQPweb and its dependencies are provided, and are confirmed to work in combination.

Andrew Hardie: <https://www.lancaster.ac.uk/linguistics/about/people/andrew-hardie>

**Disclaimer: this repository is just a collection for convenience. Please support the original developers at <https://cwb.sourceforge.io/cqpweb.php>.**

## Software

**CQPweb** - version 3.2.43. Includes PHP source code for the client-server application.

**CWB** - version 3.4.22. The IMS Open Corpus Workbench (CWB) is a collection of open-source tools for managing and querying large text corpora (up to 2 billion words) with linguistic annotations. Its central component is the flexible and efficient query processor CQP.

**CQPPerl** - A collection of Perl APIs for CWB (API version 3.0.6), CWB-CL (corpus library, API version 3.4.7), CWB-CQI (CQi client-server, API version 2.2.102) and CWB-Web (API version 3.0).

## Config files

Included are example configuration files that need to be managed for a CQPweb installation.

For CQPweb:

- config.inc.php - contains main configuration of CQPweb server
- cli-php.ini - PHP configuration files
- fpm-php-ini - PHP configuration files

For MySQL database:

- my.cnf - MySQL config file with 'local-infile' option enabled
- usr.sbin.mysqld MySQL config file with CQPweb data directories added (for upload, registry, corpora and temporary files - change paths if needed)

For a webserver:

- cqpweb - NginX configuration file

_Note: Official instructions recommend Apache webserver, but here we assume NginX instead. There should be no problems regardless._

## Installation

Follow instructions provided in official CQPweb admin manual: <https://cwb.sourceforge.io/files/CQPwebAdminManual.pdf>.

Otherwise, go to companion repository containing Terraform scripts for (semi)-automatic deployment - <https://github.com/bbatalo/CQPweb-deploy>
