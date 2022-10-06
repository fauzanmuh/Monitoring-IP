<?php
// memanggil library FPDF

require('fpdf.php');
// intance object dan memberikan pengaturan halaman PDF
$pdf = new FPDF('l','mm','A5');
// membuat halaman baru
$pdf->AddPage();
// setting jenis font yang akan digunakan
$pdf->SetFont('Arial','B',16);
// mencetak string 
$pdf->Cell(190,7,'DISKOMINFO KABUPATEN CIREBON',0,1,'C');
$pdf->SetFont('Arial','B',12);
$pdf->Cell(190,7,'LAPORAN HASIL MONITORING JARINGAN',0,1,'C');
 
// Memberikan space kebawah agar tidak terlalu rapat
$pdf->Cell(190,7,'====================================================',0,1,'C');
$pdf->Cell(10,7,'',0,1,'C');
$pdf->Cell(190,7,'Log Laporan',0,1,'C');
$pdf->Cell(10,7,'',0,1,'C');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(45,6,'Nama Server',1,0,'C');
$pdf->Cell(45,6,'Nama Client',1,0,'C');
$pdf->Cell(45,6,'Tanggal Log',1,0,'C');
$pdf->Cell(53,6,'Status',1,1,'C');
 
$pdf->SetFont('Arial','',10);
 
include 'koneksi.php' ;
$log = mysqli_query($connect, "select client.name_client, blok.name_blok , log.date_log, client.status_client from log INNER JOIN client ON log.id_client=client.id_client INNER JOIN blok ON client.id_blok=blok.id_blok ");
while ($row = mysqli_fetch_array($log)){
	$pdf->Cell(45,6,$row['name_blok'],1,0,'C');
    $pdf->Cell(45,6,$row['name_client'],1,0,'C');
    $pdf->Cell(45,6,$row['date_log'],1,0,'C');
    $pdf->Cell(53,6,$row['status_client'],1,1,'C'); 
}
 
$pdf->Output();
?>