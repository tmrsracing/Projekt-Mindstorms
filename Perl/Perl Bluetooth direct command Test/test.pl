use LEGO::NXT;
use LEGO::NXT::BlueComm;
use LEGO::NXT::Constants qw(:DEFAULT);
use Data::Dumper;
use Net::Bluetooth;
use strict;

my $addr = '00:16:53:0e:c4:d5';
my $port = 1;

die "No Bluetooth Address Specified!\n" if !$addr;

$| = 1;

my $res;

my $bt = LEGO::NXT->new( new LEGO::NXT::BlueComm($addr,$port) );



$res = $bt->play_sound_file($NXT_RET, 0,'Woops.rso');
$res = $bt->play_sound_file($NXT_RET, 0,'Try Again.rso');
#$res = $bt->Motor.A.forward(300);

print Dumper($res);

$res  = $bt->get_battery_level($NXT_RET);
print Dumper($res);

exit;

#Also try these!
#
#$res = $bt->play_tone($NXT_RET,220*2,500);
$bt->set_output_state($NXT_NORET,$NXT_MOTOR_A,50,$NXT_REGULATED,$NXT_REGULATION_MODE_MOTOR_SPEED);
$bt->set_output_state($NXT_NORET, $NXT_MOTOR_A, 10, $NXT_REGULATED, $NXT_REGULATION_MODE_MOTOR_SPEED, 0, $NXT_MOTOR_RUN_STATE_RUNNING, 0  );

