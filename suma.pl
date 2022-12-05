#!/usr/bin/perl
use strict;
use warnings;
use CGI;

my $q = CGI->new;
my $numero1 = $q->param('numero1');
my $numero2 = $q->param('numero2');
my $respuesta = $q->param('respuesta');
my $calculo = 0;
if ($respuesta eq "suma"){
  $calculo = $numero1 + $numero2;
}
if ($respuesta eq "resta"){
  $calculo = $numero1 - $numero2;
}
if ($respuesta eq "multiplicacion"){
  $calculo = $numero1 * $numero2;
}
if ($respuesta eq "division"){
  $calculo = $numero1 / $numero2;
}

print $q->header('text/html');
print <<BLOCK;
<!DOCTYPE html>
<html>
<head>
<title>Calculadora</title>
</head>
<body>
<h1>El resultado de la $respuesta es $calculo</h1>
</body>
</html>
BLOCK
