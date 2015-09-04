package VisitorAsm;

#use Spiffy -Base;
#use base qw( Visitor );

use Visitor -Base;

sub visit_Decl
{
    #$self->visit_Node(@_);
    $self->visit_children(@_);
}



sub visit_ParamList
{
    $self->visit_Node(@_);
}

sub visit_Typename
{
  $self->visit_Node(@_);
}

sub visit_TypeDecl
{
    #$self->visit_Node(@_);
    my $node = shift;

    my $type = $node->{'children'}->{'type'};
    $self->visit($type);

    my $declname = $node->{'attrs'}->{'declname'};
    $self->puts($declname. "\n");

}

sub visit_IdType
{
    #$self->visit_Node(@_);
    my $node = shift;
    my $name = $node->{'attrs'}->{'name'};
    $self->puts($name. ' ');
}

sub visit_Compound
{
  $self->visit_Node(@_);
}




sub visit_Const
{
  $self->visit_Node(@_);
}


sub visit_ID
{
  $self->visit_Node(@_);
}

sub visit_ExprList
{
  $self->visit_Node(@_);
}

sub visit_Return
{
  $self->visit_Node(@_);
}





#Sub

sub visit_SubDef
{
    #$self->visit_Node(@_);
    my $node = shift;
    $self->visit_block($node, 'PRC_DEF', [], ['decl', 'body']);

}

sub visit_SubDecl
{
    #$self->visit_Node(@_);
    my $node = shift;
    $self->visit_block($node,'PRC_DECL', [], ['type', 'args']);
}

sub visit_SubGoto
{
    $self->visit_Node(@_);
}






#Add

sub visit_AddDecl
{
  $self->visit_Node(@_);
}


#Array

sub visit_ArrayDecl
{
  $self->visit_Node(@_);
}

sub visit_ArrayRef
{
  $self->visit_Node(@_);
}





1
