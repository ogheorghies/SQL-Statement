package SQL::Dialects::CSV;

use vars qw($VERSION);
$VERSION = '1.34';

use SQL::Dialects::Role;

sub get_config
{
    return <<EOC;
[VALID COMMANDS]
CREATE
DROP
SELECT
INSERT
UPDATE
DELETE

[VALID COMPARISON OPERATORS]
=
<>
<
<=
>
>=
LIKE
CLIKE
IS
IS NOT
IN
NOT IN
BETWEEN
NOT BETWEEN

[VALID DATA TYPES]
CHAR
VARCHAR
REAL
INTEGER
BLOB
TEXT

[RESERVED WORDS]
INTEGERVAL
STRING
REALVAL
IDENT
NULLVAL
PARAM
OPERATOR
IS
AND
OR
ERROR
INSERT
UPDATE
SELECT
DELETE
DROP
CREATE
ALL
DISTINCT
WHERE
ORDER
ASC
DESC
FROM
INTO
BY
VALUES
SET
NOT
TABLE
CHAR
VARCHAR
REAL
INTEGER
PRIMARY
KEY
BLOB
TEXT
EOC
}
1;

=pod

=head1 NAME

SQL::Dialects::CSV

=head1 SYNOPSIS

  use SQL::Dialects::CSV;
  $config = SQL::Dialects::CSV->get_config();

=head1 DESCRIPTION

This package provides the necessary configuration for CSV SQL.

=head1 FUNCTIONS

=head2 get_config

Returns the configuration for CSV SQL. The configuration is delivered in
ini-style:

  [VALID COMMANDS]
  ...

  [VALID OPTIONS]
  ...

  [VALID COMPARISON OPERATORS]
  ...

  [VALID DATA TYPES]
  ...

  [RESERVED WORDS]
  ...

=cut
