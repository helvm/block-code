#!/usr/bin/perl

use strict;
use warnings;

use BasicParser;#yapp -m MyParser grammar_file.yp

my @lex = qw(
    '=>' GOBEGIN
    '=<' GOEND
    '=^' GOSUB
    '=@' SUBPRO
    '=|' ASSIGMENT
    '=&' ASSERTION
    ':=' ASSIGN
    '<=' LE
    '>=' GE
    '<' LT
    '>' GT
    '=' EQ
    '!=' NE
    '+' ADD
    '-' SUB
    '*' MUL
    '/' DIV
    '%' MOD
    '||' ELSE
    '&&' ALSO
    '!' NOT
    '&' AND
    '|' OR
    '^' XOR
    '@' XAND
    '~' NEG
    '::' CAST
    '#' ARRAY
    '@' REF
    '^' PRT
    ':' ':'
    '(' '('
    ')' ')'
    '[' '['
    ']' '['
    '{' BEGIN
    '{' END
    TOKEN \w+
    NUMBER \d+
)



my $lexer = Parse::Lex->new(@lex);
$lexer->from(\*STDIN);

    sub lex {
        my $token = $lexer->next;
        return ('', undef) if $lexer->eoi;
        return ($token->name, $token->getstring);
    }

sub parse
{
  $parser=new MyParser();
  $value=$parser->YYParse(yylex => \&lexer_sub, yyerror => \&error_sub);

  $nberr=$parser->YYNberr();

  $parser->YYData->{DATA}= [ 'Anything', 'You Want' ];

  $data=$parser->YYData->{DATA}[0];   
}

  use Calc;
    my $p = Calc->new(  );
    undef $/;
    $p->YYData->{DATA} = <STDIN>;
    $p->YYParse(YYlex => \&lex);


#parse ();




