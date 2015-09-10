package VisitorExpr;

#use Spiffy -Base;
#use base qw( VisitorAsm );

use VisitorAsm -Base;

const unary_op => {
    '!', 'NEL',
    '~', 'NEB',
    '-', 'NEG',
    '*', 'VAL',
    '&', 'REF',
    'p++', 'INC_POST',
    'p--', 'DEC_POST',
    '++p', 'INC_PRE',
    '--p', 'DEC_PRE'
};

const binary_op => {
    '+', 'ADD',
    '-', 'SUB',
    '*', 'MUL',
    '/', 'DIV',
    '%', 'MOD',
    '&', 'ANB',
    '|', 'ORB',
    '^', 'XOR',
    '>>', 'SHR',
    '<<', 'SHL',
    '&&', 'ANL',
    '||', 'ORL',
    '<', 'LT',
    '>', 'GT',
    '<=', 'LE',
    '>=', 'LE',
    '==', 'EQ',
    '!=', 'NE',
};

const assign => {
    '+=' , 'POP_ADD',
    '-=' , 'POP_SUB',
    '*=' , 'POP_MUL',
    '/=' , 'POP_DIV',
    '%=' , 'POP_MOD',
    '=' , 'POP'
};


sub visit_UnaryOp
{
#    $self->visit_Node(@_);
    my $node = shift;
    $node->prop_expr->accept($self);
    my $hash = $self->unary_op;
    my $attr_op = $node->attr_op;
    my $value = $self->$get ($hash, $attr_op);
    $self->puts ($value);
}

sub visit_BinaryOp
{
#    $self->visit_Node(@_);
    my $node = shift;
    $node->prop_left->accept ($self);
    $node->prop_right->accept ($self);
    my $hash = $self->binary_op;
    my $attr_op = $node->attr_op;
    my $value = $self->$get ($hash, $attr_op);
    $self->puts ($value);
}

sub visit_Assign
{
    #$self->visit_Node(@_);
    my $node = shift;
    $node->prop_lvalue->accept ($self);
    $node->prop_rvalue->accept ($self);
    my $hash = $self->assign;
    my $attr_op = $node->attr_op;
    my $value = $self->$get ($hash, $attr_op);
    $self->puts ($value);
}

my sub get
{
    my $hash = shift;
    my $key = shift;
    exists $hash->{$key} or die "key $key does not exists";
    return $hash->{$key};
}

1
