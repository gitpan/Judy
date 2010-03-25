package Judy::1;

use strict;
use warnings;

use Sub::Exporter -setup => {
    exports => [qw[
        Set Get Delete Unset Test
        Count Nth
        Free MemUsed
        First Next Last Prev
        FirstEmpty NextEmpty LastEmpty PrevEmpty
    ]],
};

BEGIN {
    *Delete = \&Unset;
    *Get = \&Test;
}

require Judy; # Beware, Judy.pm also loads Judy::1.

require Judy::_obj;
Judy::_obj->import( -impl );

require Judy::1::_tie;
require Judy::1::_obj;

no warnings;
'Warning! The consumption of alcohol may cause you to think you have mystical kung-fu powers.'
