<?php
include('koneksi.php');
$produk = mysqli_query($koneksi,"select * from subagiya");
while($row = mysqli_fetch_array($produk)){
	$nama_produk[] = $row['barang'];
	
	$query = mysqli_query($koneksi,"select sum(jumlah) as jumlah from subagiya1 where id_barang='".$row['id_barang']."'");
	$row = $query->fetch_array();
	$jumlah_produk[] = $row['jumlah'];
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Membuat Grafik Menggunakan Chart JS</title>
	<script type="text/javascript" src="Chart.js"></script>
	<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	<div style="width: 800px;height: 800px">
		<canvas id="myChart"></canvas>
	</div>


	<script>
		var ctx = document.getElementById("myChart").getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: <?php echo json_encode($nama_produk); ?>,
				datasets: [{
					label: 'Grafik Penjualan',
					data: <?php echo json_encode($jumlah_produk); ?>,
					backgroundColor: 'rgba(255, 99, 132, 0.2)',
					borderColor: 'rgba(255,99,132,1)',
					borderWidth: 1
				}]
			},
			options: {
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero:true
						}
					}]
				}
			}
		});
	</script>
	<div>
		<buttton class="btn btn-outline-danger" ><a href="grafik_pie.php">Grafik Pie</a></buttton>
		<buttton class="btn btn-outline-secondary"><a href="grafik_bulan.php">Grafik bulan</a></buttton>
	</div>
</body>
</html>