
<link href='http://infojegyzet.hu/webszerkesztes/mysql/megyeink/megyeink.css' type='text/css' rel ='stylesheet'>



<table id='megyeink' cellspacing=5>

	<tr>
		<td> Régió                             </td>
		<td> megyéi  </td>
		<td> népesség   <br> ezer fő            </td>
	</tr>


<?

    /* Kapcsolódás az adatbázishoz */

    @$adb = mysqli_connect( "localhost", "root", NULL, "foldrajz" );



    /* Megyék adatainak lekérdezése */

    $megyeek = mysqli_query( $adb , "SELECT * , ROUND(mnep/mter) AS msur FROM momegye" ) ;
	$lekerdeze = mysqli_query($adb,"SELECT regio AS 'regiok', mnev AS 'megyenev', SUM(mnep) AS 'osszlak', Count(mnep) AS 'megszamolt'
									FROM momegye GROUP BY regio ORDER BY osszlak DESC");


    /* Megyék adatainak listázása (adatsorok kiírása) */

    while( $lekerdez = mysqli_fetch_array($lekerdeze))
    {

	@$mnep1000 = round($megye[mnep]/1000) ;
	$lekerdezetregio = $lekerdez['regiok'];
	print "
		<tr>
			<td> $lekerdez[regiok] </td>
			<td>"; 
				$lekerdezes = mysqli_query($adb, "SELECT mnev AS megyenev FROM momegye WHERE regio LIKE '$lekerdezetregio' ORDER BY mnev ASC");
				while($kerdezes = mysqli_fetch_array($lekerdezes))
				{
					echo $kerdezes['megyenev'];
					echo"<br>";
				}





			echo"</td>
			<td>". @round($lekerdez[osszlak]/1000)   ."</td>
		</tr>
	" ;

    }



    /* Összesített adatok lekérdezése */

    $osszeg = mysqli_fetch_array( mysqli_query( $adb , "

					SELECT SUM(mter) AS ter, SUM(mnep) AS nep 
					FROM momegye
    " ) ) ;



    /* Összesített adatok megjelenítése (utolsó sor kiírása) */

    @$nep1000 = round($osszeg[nep]/1000) ;
    /* Lekapcsolódás az adatbázisról */

    mysqli_close( $adb ) ;

?>

</table>
