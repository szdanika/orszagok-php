
<link href='http://infojegyzet.hu/webszerkesztes/mysql/megyeink/megyeink.css' type='text/css' rel ='stylesheet'>



<table id='megyeink' cellspacing=5>

	<tr>
		<td> Megye                              </td>
		<td> népesség   <br> ezer fő    </td>
		<td> Székhely           </td>
		<td> népesség   <br> ezer fő    </td>
		<td> arány			</td>
	</tr>
<?php
$servernev = "localhost";
$felhasznalonev ="root";
$jelszo = NULL;
$tablanev ="foldrajz";
$adatbazis = mysqli_connect($servernev, $felhasznalonev, $jelszo, $tablanev);
$megyeek = mysqli_query( $adatbazis , "SELECT * , ROUND(mnep/mter) AS msur, sznep / mnep *100 AS szaz FROM momegye ORDER BY szaz DESC" ) ;
$butapestadatok = mysqli_fetch_array( mysqli_query( $adatbazis , "SELECT mnep/1000 AS lakossag FROM momegye WHERE mnev LIKE 'Budapest'  "));
$budapestlak = round($butapestadatok['lakossag']);
$pestadatok = mysqli_fetch_array( mysqli_query( $adatbazis , "SELECT mnep/1000 AS lakossag FROM momegye WHERE mnev LIKE 'Pest'  "));
$pestlak = round($pestadatok['lakossag']);
$osszeadlakos = $pestlak + $budapestlak;


@$lekerd = mysqli_fetch_array(mysqli_query( $adatbazis , " SELECT * FROM momegye WHERE mnev LIKE 'Budapest'"));
@$szazalek = round(($lekerd[sznep] / $lekerd[mnep]) * 100);
@$szazalek = round(($budapestlak / $osszeadlakos) * 100);
		print "
		<tr>
			<td> $lekerd[mnev] </td>
			<td>$osszeadlakos </td>
			<td> $lekerd[szekhely]    </td>
			<td> $budapestlak </td>
			<td> $szazalek %</td>
		</tr>";
while( $megye = mysqli_fetch_array($megyeek) )
    {

	@$mnep1000 = round($megye[mnep]/1000) ;
	@$sznep1000 = round($megye[sznep]/1000);
	@$szazalek = round(($megye[sznep] / $megye[mnep]) * 100);
	if($megye['mnev'] == 'Pest')
	{
		
	}
	else
	{
		if($megye['mnev'] == 'Budapest')
		{}
	else
	{
	print "
		<tr>
			<td> $megye[mnev] </td>
			<td> $mnep1000 </td>
			<td> $megye[szekhely]    </td>
			<td> $sznep1000 </td>
			<td> $szazalek %</td>
		</tr>
	" ;
	}
	}

    }
	    $osszeg = mysqli_fetch_array( mysqli_query( $adatbazis , "

					SELECT SUM(mter) AS ter, SUM(mnep) AS nep 
					FROM momegye
    " ) ) ;
		$nepesegosszeg = mysqli_fetch_array( mysqli_query( $adatbazis , "

					SELECT SUM(sznep) AS kicsinep, SUM(mnep) AS nep 
					FROM momegye
    " ) ) ;
	@$nep1000 = round($osszeg[nep]/1000) ;
	@$kicsi = @round($nepesegosszeg[kicsinep] / 1000);
	@$kicsiszaz = @round($kicsi / $nep1000 * 100);
    print "
		<tr>
			<td> Összesen:    </td>
			<td> $nep1000 </td>
			<td>      </td>
			<td> $kicsi </td>
			<td> $kicsiszaz %</td>
		</tr>
    " ;






mysqli_close($adatbazis);
?>
</table>