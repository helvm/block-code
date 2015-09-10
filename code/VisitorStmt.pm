package VisitorStmt;
use VisitorExpr -Base;

use Node

field count => 0;

const LABEL => 'LABEL';
const JMP => 'JMP';
const JMPC => 'JMPC';
const JMPNC => 'JMPNC';

sub stmt
{
    my $data = shift;
    my $path = shift;

    $self->open_file ($path);
    #$self->visit ($data);
    $data->accept($self);
    $self->close_file ();
}

sub visit_If
{
    #$self->visit_Node(@_);
    my $node = shift;
    my $label_else = $self->$label_next;
    my $label_end = $self->$label_next;
    my $iftrue = $node->prop_iftrue;
    my $iffalse = $node->prop_iffalse;

    $node->prop_cond->accept ($self);
    $self->puts ($label_else);
    $self->puts ($self->JMPNC);

    $iftrue->accept($self) if $iftrue;

    $self->puts ($label_end);
    $self->puts ($self->JMP );
    $self->puts ($label_else);
    $self->puts ($self->LABEL);

    $iffalse->accept($self) if $iffalse;

    $self->puts ($label_end);
    $self->puts ($self->LABEL);

}

sub visit_While
{
    #$self->visit_Node(@_);
    my $node = shift;

    my $label_begin = $self->$label_next;
    my $label_end = $self->$label_next;


    $self->puts ($label_begin);
    $self->puts ($self->LABEL);

    $node->prop_cond->accept ($self);

    $self->puts ($label_end);
    $self->puts ($self->JMPNC);

    $node->prop_stmt->accept ($self);

    $self->puts ($label_begin);
    $self->puts ($self->JMP);

    $self->puts ($label_end);
    $self->puts ($self->LABEL);
}

sub visit_DoWhile
{
    #$self->visit_Node(@_);
    my $node = shift;
    my $label_begin = $self->$label_next;

    $self->puts ($label_begin);
    $self->puts ($self->LABEL);

    $node->prop_stmt->accept ($self);

    $node->prop_cond->accept ($self);

    $self->puts ($label_begin);
    $self->puts ($self->JMPC);
}

sub visit_For
{
    #$self->visit_Node(@_);
    my $node = shift;
    my $label_begin = $self->$label_next;
    my $label_end = $self->$label_next;

    $node->prop_init->accept ($self);

    $self->puts ($label_begin);
    $self->puts ($self->LABEL);

    $node->prop_cond->accept ($self);

    $self->puts ($label_end);
    $self->puts ($self->JMPNC);

    $node->prop_stmt->accept ($self);

    $node->prop_next->accept ($self);

    $self->puts ($label_begin);
    $self->puts ($self->JMP);

    $self->puts ($label_end);
    $self->puts ($self->LABEL);
}

my sub label_next
{
    my $label = $self->count();
    return $self->count(++$label);
}

1
