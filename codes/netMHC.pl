use strict;
use warnings;


use LWP::Simple;
use HTTP::Request::Common;
use LWP::UserAgent;

my $response = "";
my $browser = LWP::UserAgent->new;
my $result="";
my $method="";
my $peplen=9;

my $peptide_file="/home/ssingh4/Desktop/temp/LN_7_2.csv";
my $seq=get_file_data($peptide_file);

my @allele_list = ("HLA-A0101");
my $allele="";

foreach $allele (@allele_list)
{
        my $resfile=">/home/ssingh4/Desktop/temp/netmhc";
        open(NETMHC, $resfile);
        my $netmhc_allele=$allele.".lmer.mat";
    print NETMHC tryServer($seq,$netmhc_allele);
    getNetMHCRes("/home/ssingh4/Desktop/temp/netmhc",$allele);
    close(NETMHC);     
}


sub tryServer
{
       
        my($seq, $netmhc_allele) = @_;
        $response = $browser->post('http://www.cbs.dtu.dk/services/NetMHC/', {
                          "SEQPASTE"      => $seq,
                  "configfile"    => "/usr/opt/www/pub/CBS/services/NetMHC-3.0/NetMHC.cf",
                  "alleles"       => $netmhc_allele,
                  "peplen"        => $peplen
                  } );
                 
        if ($response->is_success)
        {
            $result = $response->content;
        }
        else
        {
            warn "WARN!: ", $response->status_line, "\n";
        }
       
            # there's nothing in $result, return empty-handed
            return ("","") if $result eq "";
                my @temps = split(/\n/, $result);
                  my $link = '';
                 
                  foreach my $line (@temps) {
                  if ($line =~ /a\s+href=\"(.+)\"/) {
                          $link = $1;
                  }
                  }
                 
                my $pagebody = get("$link");
                while ($pagebody =~ /This page will update itself automatically/) {
                  sleep(1);
                  $pagebody = get("$link");
                }
       
       
        return($pagebody);
}

sub get_file_data {

        my($filename) = @_;
        my $output = "";
        my @filedata = ();

         unless(open(GET_FILE_DATA, $filename)) {
                 print STDERR "Cannot open file \"$filename\"\n\n";
         exit;
         }

         @filedata = <GET_FILE_DATA>;
         $output = join('', @filedata);
       
         close GET_FILE_DATA;
        return $output;
}

sub getNetMHCRes{
       
        my($filename,$allele) = @_;
        my @lines = ();

    my $resfile2="/home/ssingh4/Desktop/temp/netmhc2";
    my $resfile=">/home/ssingh4/Desktop/temp/netmhc_".$allele;
        open(NETMHCRES2, $resfile2);
        open(NETMHCRES, $resfile);
       
         unless(open(GET_FILE_DATA, $filename)) {
                 print STDERR "Cannot open file \"$filename\"\n\n";
         exit;}
          
    @lines = <GET_FILE_DATA>;  
        my @res=grep(/$allele/, @lines);
        my @res2=grep(!/^NetMHC/, @res);
        #my @header=grep(/pos/,@lines);
       
        print NETMHCRES2 "pos"."\t"."peptide"."\t"."Score"."\t"."BindLevel"."\t"."ProteinName"."\t"."Allele"."\n";
        print NETMHCRES2 @res2;
        close(NETMHCRES2);
       
        print NETMHCRES "Epitope"."\t"."Score"."\t"."ProteinName"."\t"."Allele";
        open(NETMHCRES3,"AllelesResultsNetMHC/netmhc2");
        while(<NETMHCRES3>)
    {
                 my $line = ~m/\s+\d+\s+(\w+)\s+([\d\.-]+)\s+[SB]*[WB]*\s+([\w\d]+)\s+([\w\d]+)/i;
                 print NETMHCRES $1."\t".$2."\t".$3."\t".$4."\n";
    }
        close(NETMHCRES3);
        close(NETMHCRES);
       
}
