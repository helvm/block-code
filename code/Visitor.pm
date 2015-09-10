package Visitor;

use Spiffy -Base;

use Node;

use Log::Log4perl qw(:easy);
    Log::Log4perl->easy_init($DEBUG);

my $logger = Log::Log4perl->get_logger('Visitor');

field 'fh';

sub open_file
{
    my $path = shift;
    open(my $fh, ">", $path) or die "cannot open < $path: $!";
    $self->fh($fh);
}

sub close_file
{
    close $self->fh;
}

sub puts
{
    my $s = shift;
    my $fh = $self->fh();
    print $fh $s, "\n";
}



sub visit_Node
{
    my $node = shift @_;

    my $class_name = $node->class_name;

    my $attrs = $node->attrs;

    my $props = $node->props;

    my $child_key = [keys %$props];

    my $list = $node->list;

    if (@$child_key or $list)
    {
        $self->visit_block($node, $class_name, [keys %$attrs], [keys %$props]);
    }
    else
    {
        $self->visit_leaf($node, $class_name, [keys %$attrs], [keys %$props]);
    }

}

sub visit_block
{
    my $node = shift;
    my $name = shift;
    my $attr_keys = shift;
    my $child_keys = shift;

    my $attrs = $node->attrs;
    my $props = $node->props;
    my $list = $node->list;

    $self->puts($name);

    if ($attr_keys)
    {
        #$self->puts($attrs->{$_} .' ') for @$attr_keys;
        for (@$attr_keys)
        {
            $logger->debug('$_ => '. $_);
            $self->puts($attrs->{$_} .' ');
        }
        $self->puts("\n");
    }

    $props->{$_}->accept($self) for @$child_keys;

    if ($list)
    {
        $self->puts('BLOCK');
        $_->accept($self) for @$list;
        $self->puts('END_'.'BLOCK');
    }


    $self->puts('END_'.$name);
}


sub visit_leaf
{
    my $node = shift;
    my $name = shift;
    my $attr_keys = shift;

    my $attrs = $node->attrs;

    $self->puts($name. ' ');
    if ($attr_keys)
    {
        #$self->puts($attrs->{$_} .' ') for @$attr_keys;
        for (@$attr_keys)
        {
            $logger->debug('$_ => '. $_);
            $self->puts($attrs->{$_} .' ');
        }
    }
    $self->puts('');




}




sub visit_attrs
{
    my $attrs = shift;
    my $keys = shift;


}

sub visit_props
{
    my $node = shift;
    my $props = $node->props;
    $props->{$_}->accept($self) foreach keys %$props;

}


1


