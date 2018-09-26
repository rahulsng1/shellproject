#!usrbinperl -w

my $host = `hostname`;
print "Hostname : $host";

my @size=`find / -type f -printf "%s %p\n" | sort -nr | head -7`;
print "Biggest files in the server : ";
print "$size[2]\n$size[3]\n$size[4]\n$size[5]\n$size[6]\n";

print "Users in $host\n";
my $file = '/etc/passwd';
open(PW,$file) or die "Can't open $file:$!\n";
while (<PW>){
    @fields = split(/:/);
    print "$fields[0]\n";
}
close(PW);
