package VisitorStmt;

#use Spiffy -Base;
#use base qw( VisitorExpr );

use VisitorExpr -Base;

sub stmt
{
    my $data = shift;
    my $path = shift;

    $self->open_file ($path);
    $self->visit ($data);
    $self->close_file ();
}

sub visit_If
{
  $self->visit_Node(@_);
}

sub visit_While
{
  $self->visit_Node(@_);
}

sub visit_DoWhile
{
  $self->visit_Node(@_);
}

sub visit_For
{
  $self->visit_Node(@_);
}

1
