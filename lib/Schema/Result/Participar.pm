package Schema::Result::Participar;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components('ForceUTF8');


=head1 NAME

Schema::Result::Participar

=cut

__PACKAGE__->table("participar");

=head1 ACCESSORS

=head2 encontro

  data_type: INT
  default_value: undef
  is_foreign_key: 1
  is_nullable: 0
  size: 11

=head2 inscrito

  data_type: INT
  default_value: undef
  is_foreign_key: 1
  is_nullable: 0
  size: 11

=cut

__PACKAGE__->add_columns(
  "encontro",
  {
    data_type => "INT",
    default_value => undef,
    is_foreign_key => 1,
    is_nullable => 0,
    size => 11,
  },
  "inscrito",
  {
    data_type => "INT",
    default_value => undef,
    is_foreign_key => 1,
    is_nullable => 0,
    size => 11,
  },
);
__PACKAGE__->set_primary_key("encontro", "inscrito");

=head1 RELATIONS

=head2 encontro

Type: belongs_to

Related object: L<Schema::Result::EncontrosTecnico>

=cut

__PACKAGE__->belongs_to(
  "encontro",
  "Schema::Result::EncontrosTecnico",
  { id => "encontro" },
  {},
);

=head2 inscrito

Type: belongs_to

Related object: L<Schema::Result::Inscricao>

=cut

__PACKAGE__->belongs_to(
  "inscrito",
  "Schema::Result::Inscricao",
  { id => "inscrito" },
  {},
);


# Created by DBIx::Class::Schema::Loader v0.05003 @ 2010-04-27 14:43:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0tACjU8XwEAk7mqudA0T4g



# You can replace this text with custom content, and it will be preserved on regeneration
1;
