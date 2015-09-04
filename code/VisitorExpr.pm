package VisitorExpr;

#use Spiffy -Base;
#use base qw( VisitorAsm );

use VisitorAsm -Base;

sub visit_UnaryOp
{
  $self->visit_Node(@_);
}

sub visit_BinaryOp
{
  $self->visit_Node(@_);
}

sub visit_UnaryOp_
{
  $self->visit_Node(@_);
}

sub visit_Assign
{
  $self->visit_Node(@_);
}


sub visit_ArrayRef_
{
  $self->visit_Node(@_);
}

sub visit_If_
{
  $self->visit_Node(@_);
}

1
