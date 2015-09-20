####################################################################
#
#    This file was generated using Parse::Yapp version 1.05.
#
#        Don't edit this file, use source file instead.
#
#             ANY CHANGE MADE HERE WILL BE LOST !
#
####################################################################
package Basic;
use vars qw ( @ISA );
use strict;

@ISA= qw ( Parse::Yapp::Driver );
use Parse::Yapp::Driver;

#line 1 "Basic.yp"
 

sub new {
        my($class)=shift;
        ref($class)
    and $class=ref($class);

    my($self)=$class->SUPER::new( yyversion => '1.05',
                                  yystates =>
[
	{#State 0
		ACTIONS => {
			'BEGIN' => 3
		},
		GOTOS => {
			'basic' => 2,
			'block' => 1
		}
	},
	{#State 1
		DEFAULT => -1
	},
	{#State 2
		ACTIONS => {
			'' => 4
		}
	},
	{#State 3
		ACTIONS => {
			'GOSUB' => 6,
			'ASSERTION' => 11,
			'GOEND' => 10,
			'BEGIN' => 3,
			'TOKEN' => 8,
			'ASSIGMENT' => 14,
			'GOBEGIN' => 13
		},
		GOTOS => {
			'compound' => 5,
			'decl' => 15,
			'sub' => 16,
			'stmt_simple' => 7,
			'list' => 17,
			'label' => 18,
			'stmt' => 9,
			'decl_or_stmt' => 12,
			'block' => 19,
			'var' => 20
		}
	},
	{#State 4
		DEFAULT => 0
	},
	{#State 5
		DEFAULT => -20
	},
	{#State 6
		ACTIONS => {
			'TOKEN' => 21
		}
	},
	{#State 7
		DEFAULT => -19
	},
	{#State 8
		ACTIONS => {
			":" => 22
		}
	},
	{#State 9
		DEFAULT => -6
	},
	{#State 10
		ACTIONS => {
			'TOKEN' => 23
		}
	},
	{#State 11
		ACTIONS => {
			'SIZEOF' => 27,
			'REF' => 25,
			'ADD' => 30,
			'PTR' => 29,
			'TOKEN' => 26,
			'NUMBER' => 28,
			'NEG' => 34,
			"(" => 32,
			'NOT' => 36,
			'SUB' => 35
		},
		GOTOS => {
			'expr' => 24,
			'assignment' => 33,
			'unary_operator' => 31
		}
	},
	{#State 12
		ACTIONS => {
			'EOL' => 37
		}
	},
	{#State 13
		ACTIONS => {
			'TOKEN' => 38
		}
	},
	{#State 14
		ACTIONS => {
			'NOT' => 36,
			'SUB' => 35,
			'NEG' => 34,
			"(" => 32,
			'NUMBER' => 28,
			'ADD' => 30,
			'TOKEN' => 26,
			'PTR' => 29,
			'SIZEOF' => 27,
			'REF' => 25
		},
		GOTOS => {
			'expr' => 40,
			'unary_operator' => 31,
			'assignment' => 39
		}
	},
	{#State 15
		DEFAULT => -5
	},
	{#State 16
		DEFAULT => -7
	},
	{#State 17
		ACTIONS => {
			'GOSUB' => 6,
			'TOKEN' => 8,
			'BEGIN' => 3,
			'ASSERTION' => 11,
			'GOEND' => 10,
			'END' => 42,
			'GOBEGIN' => 13,
			'ASSIGMENT' => 14
		},
		GOTOS => {
			'var' => 20,
			'decl_or_stmt' => 41,
			'stmt' => 9,
			'block' => 19,
			'stmt_simple' => 7,
			'label' => 18,
			'compound' => 5,
			'decl' => 15,
			'sub' => 16
		}
	},
	{#State 18
		ACTIONS => {
			'SUBPRO' => 44,
			'type' => 45,
			'BEGIN' => 3
		},
		GOTOS => {
			'block' => 43
		}
	},
	{#State 19
		DEFAULT => -27
	},
	{#State 20
		DEFAULT => -8
	},
	{#State 21
		ACTIONS => {
			'tupla' => 46
		}
	},
	{#State 22
		DEFAULT => -74
	},
	{#State 23
		ACTIONS => {
			'NUMBER' => 28,
			'ADD' => 30,
			'TOKEN' => 26,
			'PTR' => 29,
			'REF' => 25,
			'SIZEOF' => 27,
			'NOT' => 36,
			'SUB' => 35,
			'NEG' => 34,
			"(" => 32
		},
		GOTOS => {
			'assignment' => 33,
			'unary_operator' => 31,
			'expr' => 47
		}
	},
	{#State 24
		ACTIONS => {
			'GT' => 80,
			'EQ' => 81,
			'ASSIGN_DIV' => 79,
			'ELSE' => 76,
			'ASSIGN' => 78,
			'XOR' => 77,
			'GE' => 75,
			'SHL' => 70,
			'LE' => 72,
			'SUB' => 71,
			'XAND' => 73,
			'DIV' => 74,
			'OR' => 69,
			'ASSIGN_XAND' => 65,
			'ASSIGN_ADD' => 66,
			'CAST' => 67,
			'ALSO' => 63,
			'ARRAY' => 64,
			'LT' => 60,
			'SHR' => 58,
			'AND' => 59,
			'ASSIGN_SUB' => 56,
			'ASSIGN_MUL' => 57,
			'ASSIGN_AND' => 55,
			'ASSIGN_XOR' => 52,
			'ASSIGN_MOD' => 53,
			'MUL' => 54,
			'ADD' => 49,
			'MOD' => 50,
			'ASSIGN_OR' => 51,
			'NE' => 48
		},
		DEFAULT => -21,
		GOTOS => {
			'assign' => 68,
			'binary_operator' => 61,
			'binary_operator_math' => 62
		}
	},
	{#State 25
		DEFAULT => -69
	},
	{#State 26
		DEFAULT => -44
	},
	{#State 27
		DEFAULT => -67
	},
	{#State 28
		DEFAULT => -43
	},
	{#State 29
		DEFAULT => -68
	},
	{#State 30
		DEFAULT => -70
	},
	{#State 31
		ACTIONS => {
			'NEG' => 34,
			"(" => 32,
			'NOT' => 36,
			'SUB' => 35,
			'SIZEOF' => 27,
			'REF' => 25,
			'ADD' => 30,
			'TOKEN' => 26,
			'PTR' => 29,
			'NUMBER' => 28
		},
		GOTOS => {
			'unary_operator' => 31,
			'assignment' => 33,
			'expr' => 82
		}
	},
	{#State 32
		ACTIONS => {
			'NEG' => 34,
			"(" => 32,
			'NOT' => 36,
			'SUB' => 35,
			'SIZEOF' => 27,
			'REF' => 25,
			'NUMBER' => 28,
			'ADD' => 30,
			'TOKEN' => 26,
			'PTR' => 29
		},
		GOTOS => {
			'expr' => 83,
			'unary_operator' => 31,
			'assignment' => 33
		}
	},
	{#State 33
		DEFAULT => -39
	},
	{#State 34
		DEFAULT => -72
	},
	{#State 35
		DEFAULT => -71
	},
	{#State 36
		DEFAULT => -73
	},
	{#State 37
		DEFAULT => -3
	},
	{#State 38
		ACTIONS => {
			'NOT' => 36,
			'SUB' => 35,
			'NEG' => 34,
			"(" => 32,
			'NUMBER' => 28,
			'ADD' => 30,
			'TOKEN' => 26,
			'PTR' => 29,
			'SIZEOF' => 27,
			'REF' => 25
		},
		GOTOS => {
			'assignment' => 33,
			'unary_operator' => 31,
			'expr' => 84
		}
	},
	{#State 39
		ACTIONS => {
			'EOL' => -22
		},
		DEFAULT => -39
	},
	{#State 40
		ACTIONS => {
			'OR' => 69,
			'ASSIGN_XOR' => 52,
			'ASSIGN_MOD' => 53,
			'MUL' => 54,
			'SHL' => 70,
			'LE' => 72,
			'SUB' => 71,
			'ASSIGN_AND' => 55,
			'XAND' => 73,
			'DIV' => 74,
			'ASSIGN_XAND' => 65,
			'NE' => 48,
			'ASSIGN_ADD' => 66,
			'CAST' => 67,
			'ADD' => 49,
			'MOD' => 50,
			'ASSIGN_OR' => 51,
			'LT' => 60,
			'ASSIGN_DIV' => 79,
			'ALSO' => 63,
			'GT' => 80,
			'EQ' => 81,
			'ARRAY' => 64,
			'GE' => 75,
			'ASSIGN_SUB' => 56,
			'ASSIGN_MUL' => 57,
			'SHR' => 58,
			'XOR' => 77,
			'ELSE' => 76,
			'ASSIGN' => 78,
			'AND' => 59
		},
		GOTOS => {
			'assign' => 68,
			'binary_operator_math' => 62,
			'binary_operator' => 61
		}
	},
	{#State 41
		ACTIONS => {
			'EOL' => 85
		}
	},
	{#State 42
		DEFAULT => -2
	},
	{#State 43
		DEFAULT => -26
	},
	{#State 44
		ACTIONS => {
			'IN' => 86
		},
		DEFAULT => -13,
		GOTOS => {
			'in_or_empty' => 87
		}
	},
	{#State 45
		ACTIONS => {
			'NOT' => 36,
			'SUB' => 35,
			'NEG' => 34,
			"(" => 32,
			'ADD' => 30,
			'TOKEN' => 26,
			'PTR' => 29,
			'NUMBER' => 28,
			'SIZEOF' => 27,
			'REF' => 25
		},
		DEFAULT => -11,
		GOTOS => {
			'expr' => 88,
			'assignment' => 33,
			'unary_operator' => 31
		}
	},
	{#State 46
		ACTIONS => {
			'NOT' => 36,
			'SUB' => 35,
			'NEG' => 34,
			"(" => 32,
			'ADD' => 30,
			'TOKEN' => 26,
			'PTR' => 29,
			'NUMBER' => 28,
			'REF' => 25,
			'SIZEOF' => 27
		},
		GOTOS => {
			'unary_operator' => 31,
			'assignment' => 33,
			'expr' => 89
		}
	},
	{#State 47
		ACTIONS => {
			'ELSE' => 76,
			'XOR' => 77,
			'ASSIGN' => 78,
			'GE' => 75,
			'EQ' => 81,
			'GT' => 80,
			'ASSIGN_DIV' => 79,
			'ASSIGN_XAND' => 65,
			'ASSIGN_ADD' => 66,
			'CAST' => 67,
			'LE' => 72,
			'SUB' => 71,
			'SHL' => 70,
			'DIV' => 74,
			'XAND' => 73,
			'OR' => 69,
			'SHR' => 58,
			'AND' => 59,
			'ASSIGN_SUB' => 56,
			'ASSIGN_MUL' => 57,
			'ALSO' => 63,
			'ARRAY' => 64,
			'LT' => 60,
			'ADD' => 49,
			'ASSIGN_OR' => 51,
			'MOD' => 50,
			'NE' => 48,
			'ASSIGN_AND' => 55,
			'ASSIGN_XOR' => 52,
			'MUL' => 54,
			'ASSIGN_MOD' => 53
		},
		DEFAULT => -25,
		GOTOS => {
			'binary_operator' => 61,
			'binary_operator_math' => 62,
			'assign' => 68
		}
	},
	{#State 48
		DEFAULT => -47
	},
	{#State 49
		DEFAULT => -58
	},
	{#State 50
		DEFAULT => -62
	},
	{#State 51
		DEFAULT => -36
	},
	{#State 52
		DEFAULT => -37
	},
	{#State 53
		DEFAULT => -34
	},
	{#State 54
		DEFAULT => -60
	},
	{#State 55
		DEFAULT => -35
	},
	{#State 56
		DEFAULT => -31
	},
	{#State 57
		DEFAULT => -32
	},
	{#State 58
		DEFAULT => -54
	},
	{#State 59
		DEFAULT => -63
	},
	{#State 60
		DEFAULT => -48
	},
	{#State 61
		ACTIONS => {
			'NEG' => 34,
			"(" => 32,
			'NOT' => 36,
			'SUB' => 35,
			'SIZEOF' => 27,
			'REF' => 25,
			'ADD' => 30,
			'PTR' => 29,
			'TOKEN' => 26,
			'NUMBER' => 28
		},
		GOTOS => {
			'assignment' => 33,
			'unary_operator' => 31,
			'expr' => 90
		}
	},
	{#State 62
		DEFAULT => -45
	},
	{#State 63
		DEFAULT => -52
	},
	{#State 64
		DEFAULT => -56
	},
	{#State 65
		DEFAULT => -38
	},
	{#State 66
		DEFAULT => -30
	},
	{#State 67
		DEFAULT => -57
	},
	{#State 68
		ACTIONS => {
			'NEG' => 34,
			"(" => 32,
			'NOT' => 36,
			'SUB' => 35,
			'SIZEOF' => 27,
			'REF' => 25,
			'ADD' => 30,
			'TOKEN' => 26,
			'PTR' => 29,
			'NUMBER' => 28
		},
		GOTOS => {
			'assignment' => 33,
			'unary_operator' => 31,
			'expr' => 91
		}
	},
	{#State 69
		DEFAULT => -64
	},
	{#State 70
		DEFAULT => -55
	},
	{#State 71
		DEFAULT => -59
	},
	{#State 72
		DEFAULT => -50
	},
	{#State 73
		DEFAULT => -66
	},
	{#State 74
		DEFAULT => -61
	},
	{#State 75
		DEFAULT => -51
	},
	{#State 76
		DEFAULT => -53
	},
	{#State 77
		DEFAULT => -65
	},
	{#State 78
		DEFAULT => -29
	},
	{#State 79
		DEFAULT => -33
	},
	{#State 80
		DEFAULT => -49
	},
	{#State 81
		DEFAULT => -46
	},
	{#State 82
		ACTIONS => {
			'XAND' => 73
		},
		DEFAULT => -41,
		GOTOS => {
			'binary_operator_math' => 62,
			'binary_operator' => 61,
			'assign' => 68
		}
	},
	{#State 83
		ACTIONS => {
			'ASSIGN_ADD' => 66,
			'ASSIGN_XAND' => 65,
			'CAST' => 67,
			'LE' => 72,
			'SUB' => 71,
			'SHL' => 70,
			'DIV' => 74,
			'XAND' => 73,
			'OR' => 69,
			'ELSE' => 76,
			'ASSIGN' => 78,
			'XOR' => 77,
			'GE' => 75,
			'GT' => 80,
			'EQ' => 81,
			'ASSIGN_DIV' => 79,
			'ADD' => 49,
			'ASSIGN_OR' => 51,
			'MOD' => 50,
			'NE' => 48,
			'ASSIGN_AND' => 55,
			'ASSIGN_XOR' => 52,
			'MUL' => 54,
			'ASSIGN_MOD' => 53,
			'SHR' => 58,
			'AND' => 59,
			'ASSIGN_SUB' => 56,
			'ASSIGN_MUL' => 57,
			'ALSO' => 63,
			")" => 92,
			'ARRAY' => 64,
			'LT' => 60
		},
		GOTOS => {
			'assign' => 68,
			'binary_operator_math' => 62,
			'binary_operator' => 61
		}
	},
	{#State 84
		ACTIONS => {
			'ASSIGN_XOR' => 52,
			'MUL' => 54,
			'ASSIGN_MOD' => 53,
			'ASSIGN_AND' => 55,
			'NE' => 48,
			'ADD' => 49,
			'ASSIGN_OR' => 51,
			'MOD' => 50,
			'LT' => 60,
			'ALSO' => 63,
			'ARRAY' => 64,
			'ASSIGN_MUL' => 57,
			'ASSIGN_SUB' => 56,
			'SHR' => 58,
			'AND' => 59,
			'OR' => 69,
			'SUB' => 71,
			'LE' => 72,
			'SHL' => 70,
			'XAND' => 73,
			'DIV' => 74,
			'ASSIGN_ADD' => 66,
			'ASSIGN_XAND' => 65,
			'CAST' => 67,
			'ASSIGN_DIV' => 79,
			'EQ' => 81,
			'GT' => 80,
			'GE' => 75,
			'ASSIGN' => 78,
			'XOR' => 77,
			'ELSE' => 76
		},
		DEFAULT => -24,
		GOTOS => {
			'binary_operator' => 61,
			'binary_operator_math' => 62,
			'assign' => 68
		}
	},
	{#State 85
		DEFAULT => -4
	},
	{#State 86
		ACTIONS => {
			'BEGIN' => 93
		},
		GOTOS => {
			'var_block' => 94
		}
	},
	{#State 87
		ACTIONS => {
			'OUT' => 95
		},
		DEFAULT => -15,
		GOTOS => {
			'out_or_empty' => 96
		}
	},
	{#State 88
		ACTIONS => {
			'ADD' => 49,
			'MOD' => 50,
			'ASSIGN_OR' => 51,
			'NE' => 48,
			'ASSIGN_AND' => 55,
			'ASSIGN_XOR' => 52,
			'ASSIGN_MOD' => 53,
			'MUL' => 54,
			'SHR' => 58,
			'AND' => 59,
			'ASSIGN_SUB' => 56,
			'ASSIGN_MUL' => 57,
			'ALSO' => 63,
			'ARRAY' => 64,
			'LT' => 60,
			'ASSIGN_ADD' => 66,
			'ASSIGN_XAND' => 65,
			'CAST' => 67,
			'SHL' => 70,
			'SUB' => 71,
			'LE' => 72,
			'DIV' => 74,
			'XAND' => 73,
			'OR' => 69,
			'ASSIGN' => 78,
			'XOR' => 77,
			'ELSE' => 76,
			'GE' => 75,
			'GT' => 80,
			'EQ' => 81,
			'ASSIGN_DIV' => 79
		},
		DEFAULT => -10,
		GOTOS => {
			'assign' => 68,
			'binary_operator' => 61,
			'binary_operator_math' => 62
		}
	},
	{#State 89
		ACTIONS => {
			'ADD' => 49,
			'ASSIGN_OR' => 51,
			'MOD' => 50,
			'NE' => 48,
			'ASSIGN_AND' => 55,
			'ASSIGN_XOR' => 52,
			'MUL' => 54,
			'ASSIGN_MOD' => 53,
			'SHR' => 58,
			'AND' => 59,
			'ASSIGN_SUB' => 56,
			'ASSIGN_MUL' => 57,
			'ALSO' => 63,
			'ARRAY' => 64,
			'LT' => 60,
			'ASSIGN_XAND' => 65,
			'ASSIGN_ADD' => 66,
			'CAST' => 67,
			'SUB' => 71,
			'LE' => 72,
			'SHL' => 70,
			'DIV' => 74,
			'XAND' => 73,
			'OR' => 69,
			'ELSE' => 76,
			'ASSIGN' => 78,
			'XOR' => 77,
			'GE' => 75,
			'GT' => 80,
			'EQ' => 81,
			'ASSIGN_DIV' => 79
		},
		DEFAULT => -23,
		GOTOS => {
			'binary_operator' => 61,
			'binary_operator_math' => 62,
			'assign' => 68
		}
	},
	{#State 90
		ACTIONS => {
			'GT' => 80,
			'EQ' => 81,
			'ASSIGN_DIV' => 79,
			'XOR' => 77,
			'ELSE' => 76,
			'ASSIGN' => 78,
			'GE' => 75,
			'DIV' => 74,
			'XAND' => 73,
			'LE' => 72,
			'SUB' => 71,
			'SHL' => 70,
			'OR' => 69,
			'CAST' => 67,
			'ASSIGN_ADD' => 66,
			'ASSIGN_XAND' => 65,
			'ARRAY' => 64,
			'ALSO' => 63,
			'LT' => 60,
			'AND' => 59,
			'SHR' => 58,
			'ASSIGN_SUB' => 56,
			'ASSIGN_MUL' => 57,
			'ASSIGN_AND' => 55,
			'MUL' => 54,
			'ASSIGN_MOD' => 53,
			'ASSIGN_XOR' => 52,
			'ASSIGN_OR' => 51,
			'MOD' => 50,
			'ADD' => 49,
			'NE' => 48
		},
		DEFAULT => -40,
		GOTOS => {
			'binary_operator_math' => 62,
			'binary_operator' => 61,
			'assign' => 68
		}
	},
	{#State 91
		ACTIONS => {
			'ASSIGN_MUL' => 57,
			'ASSIGN_SUB' => 56,
			'SHR' => 58,
			'AND' => 59,
			'LT' => 60,
			'ALSO' => 63,
			'ARRAY' => 64,
			'NE' => 48,
			'ADD' => 49,
			'ASSIGN_OR' => 51,
			'MOD' => 50,
			'ASSIGN_XOR' => 52,
			'MUL' => 54,
			'ASSIGN_MOD' => 53,
			'ASSIGN_AND' => 55,
			'GE' => 75,
			'XOR' => 77,
			'ASSIGN' => 78,
			'ELSE' => 76,
			'ASSIGN_DIV' => 79,
			'EQ' => 81,
			'GT' => 80,
			'ASSIGN_ADD' => 66,
			'ASSIGN_XAND' => 65,
			'CAST' => 67,
			'OR' => 69,
			'SUB' => 71,
			'LE' => 72,
			'SHL' => 70,
			'DIV' => 74,
			'XAND' => 73
		},
		DEFAULT => -28,
		GOTOS => {
			'binary_operator' => 61,
			'binary_operator_math' => 62,
			'assign' => 68
		}
	},
	{#State 92
		DEFAULT => -42
	},
	{#State 93
		ACTIONS => {
			'TOKEN' => 8
		},
		GOTOS => {
			'var' => 97,
			'label' => 99,
			'var_list' => 98
		}
	},
	{#State 94
		DEFAULT => -12
	},
	{#State 95
		ACTIONS => {
			'BEGIN' => 93
		},
		GOTOS => {
			'var_block' => 100
		}
	},
	{#State 96
		ACTIONS => {
			'BEGIN' => 3
		},
		GOTOS => {
			'block' => 101
		}
	},
	{#State 97
		DEFAULT => -18
	},
	{#State 98
		ACTIONS => {
			'END' => 103,
			'TOKEN' => 8
		},
		GOTOS => {
			'var' => 102,
			'label' => 99
		}
	},
	{#State 99
		ACTIONS => {
			'type' => 45
		}
	},
	{#State 100
		DEFAULT => -14
	},
	{#State 101
		DEFAULT => -9
	},
	{#State 102
		DEFAULT => -17
	},
	{#State 103
		DEFAULT => -16
	}
],
                                  yyrules  =>
[
	[#Rule 0
		 '$start', 2, undef
	],
	[#Rule 1
		 'basic', 1, undef
	],
	[#Rule 2
		 'block', 3, undef
	],
	[#Rule 3
		 'list', 2, undef
	],
	[#Rule 4
		 'list', 3, undef
	],
	[#Rule 5
		 'decl_or_stmt', 1, undef
	],
	[#Rule 6
		 'decl_or_stmt', 1, undef
	],
	[#Rule 7
		 'decl', 1, undef
	],
	[#Rule 8
		 'decl', 1, undef
	],
	[#Rule 9
		 'sub', 5, undef
	],
	[#Rule 10
		 'var', 3, undef
	],
	[#Rule 11
		 'var', 2, undef
	],
	[#Rule 12
		 'in_or_empty', 2, undef
	],
	[#Rule 13
		 'in_or_empty', 0, undef
	],
	[#Rule 14
		 'out_or_empty', 2, undef
	],
	[#Rule 15
		 'out_or_empty', 0, undef
	],
	[#Rule 16
		 'var_block', 3, undef
	],
	[#Rule 17
		 'var_list', 2, undef
	],
	[#Rule 18
		 'var_list', 1, undef
	],
	[#Rule 19
		 'stmt', 1, undef
	],
	[#Rule 20
		 'stmt', 1, undef
	],
	[#Rule 21
		 'stmt_simple', 2,
sub
#line 79 "Basic.yp"
{node::create ('Assert', $_[2])}
	],
	[#Rule 22
		 'stmt_simple', 2,
sub
#line 80 "Basic.yp"
{$_[2]}
	],
	[#Rule 23
		 'stmt_simple', 4,
sub
#line 81 "Basic.yp"
{}
	],
	[#Rule 24
		 'stmt_simple', 3, undef
	],
	[#Rule 25
		 'stmt_simple', 3, undef
	],
	[#Rule 26
		 'compound', 2,
sub
#line 87 "Basic.yp"
{node::create('Compoud', $_[2], $_[1]) }
	],
	[#Rule 27
		 'compound', 1,
sub
#line 88 "Basic.yp"
{node::create('Compoud', $_[1]) }
	],
	[#Rule 28
		 'assignment', 3,
sub
#line 93 "Basic.yp"
{ node::create ('Assign', $_[2], $_[1], $_[3]) }
	],
	[#Rule 29
		 'assign', 1, undef
	],
	[#Rule 30
		 'assign', 1, undef
	],
	[#Rule 31
		 'assign', 1, undef
	],
	[#Rule 32
		 'assign', 1, undef
	],
	[#Rule 33
		 'assign', 1, undef
	],
	[#Rule 34
		 'assign', 1, undef
	],
	[#Rule 35
		 'assign', 1, undef
	],
	[#Rule 36
		 'assign', 1, undef
	],
	[#Rule 37
		 'assign', 1, undef
	],
	[#Rule 38
		 'assign', 1, undef
	],
	[#Rule 39
		 'expr', 1, undef
	],
	[#Rule 40
		 'expr', 3,
sub
#line 104 "Basic.yp"
{ node::create ('BinaryOp', $_[2], $_[1], $_[3]) }
	],
	[#Rule 41
		 'expr', 2,
sub
#line 105 "Basic.yp"
{ node::create ('UnaryOp', $_[1], $_[2]) }
	],
	[#Rule 42
		 'expr', 3,
sub
#line 106 "Basic.yp"
{ $_[2] }
	],
	[#Rule 43
		 'expr', 1, undef
	],
	[#Rule 44
		 'expr', 1, undef
	],
	[#Rule 45
		 'binary_operator', 1, undef
	],
	[#Rule 46
		 'binary_operator', 1, undef
	],
	[#Rule 47
		 'binary_operator', 1, undef
	],
	[#Rule 48
		 'binary_operator', 1, undef
	],
	[#Rule 49
		 'binary_operator', 1, undef
	],
	[#Rule 50
		 'binary_operator', 1, undef
	],
	[#Rule 51
		 'binary_operator', 1, undef
	],
	[#Rule 52
		 'binary_operator', 1, undef
	],
	[#Rule 53
		 'binary_operator', 1, undef
	],
	[#Rule 54
		 'binary_operator', 1, undef
	],
	[#Rule 55
		 'binary_operator', 1, undef
	],
	[#Rule 56
		 'binary_operator', 1, undef
	],
	[#Rule 57
		 'binary_operator', 1, undef
	],
	[#Rule 58
		 'binary_operator_math', 1, undef
	],
	[#Rule 59
		 'binary_operator_math', 1, undef
	],
	[#Rule 60
		 'binary_operator_math', 1, undef
	],
	[#Rule 61
		 'binary_operator_math', 1, undef
	],
	[#Rule 62
		 'binary_operator_math', 1, undef
	],
	[#Rule 63
		 'binary_operator_math', 1, undef
	],
	[#Rule 64
		 'binary_operator_math', 1, undef
	],
	[#Rule 65
		 'binary_operator_math', 1, undef
	],
	[#Rule 66
		 'binary_operator_math', 1, undef
	],
	[#Rule 67
		 'unary_operator', 1, undef
	],
	[#Rule 68
		 'unary_operator', 1, undef
	],
	[#Rule 69
		 'unary_operator', 1, undef
	],
	[#Rule 70
		 'unary_operator', 1, undef
	],
	[#Rule 71
		 'unary_operator', 1, undef
	],
	[#Rule 72
		 'unary_operator', 1, undef
	],
	[#Rule 73
		 'unary_operator', 1, undef
	],
	[#Rule 74
		 'label', 2, undef
	]
],
                                  @_);
    bless($self,$class);
}

#line 136 "Basic.yp"



1;
