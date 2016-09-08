use Time::Local 'timegm';
use POSIX 'strftime';

my $file = "/home/galaxy/galaxy-dist/paster.log";
open(my $fh, "<", $file)
  or die "Cannot open $file: $!";

my %dic_sta;
my %dic_end;

while (my $line = readline $fh) {
  if ($line =~ /([0-9]+)-([0-9]+)-([0-9]+) ([0-9]+):([0-9]+):([0-9]+),[0-9]+ \(([0-9]+)\) Job dispatched/) {
    print $line;
    $sec_sta = timegm($6, $5, $4, $3, $2 - 1, $1);
    $dic_sta{$7} = $sec_sta;
  }
  if ($line =~ /galaxy.jobs DEBUG ([0-9]+)-([0-9]+)-([0-9]+) ([0-9]+):([0-9]+):([0-9]+),[0-9]+ job ([0-9]+) ended/) {
    print $line;
    $sec_end = timegm($6, $5, $4, $3, $2 - 1, $1);
    $dic_end{$7} = $sec_end;
  }
}

foreach (sort keys %dic_sta) {
  $time_sta = $dic_sta{$_};
  $time_end = $dic_end{$_};
  print $_, "\t",
    strftime("%Y-%m-%d %H:%M:%S", localtime($time_sta)), "\t",
    strftime("%Y-%m-%d %H:%M:%S", localtime($time_end)), "\t",
    $time_end - $time_sta, "\n";
}
