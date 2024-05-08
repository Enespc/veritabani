<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            color: #333;
            background-color: #f4f4f4;
            padding: 20px;
        }

        form {
            max-width: 400px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"], input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #3e8e41;
        }
    </style>
    <title>Student Registration Form</title>
</head>
<body>
    <h1>Student Registration Form</h1>
    <form method="get">
        <label for="name">Ad:</label>
        <input type="text" id="name" name="name" required>

        <label for="surname">Soyad:</label>
        <input type="text" id="surname" name="surname" required>

        <label for="student_number">Öğrenci Numarası:</label>
        <input type="text" id="student_number" name="student_number" required>

        <label for="class">Sınıf:</label>
        <input type="text" id="class" name="class" required>

        <label for="gender">Cinsiyet:</label>
        <select id="gender" name="gender" required>
            <option value="">Seç</option>
            <option value="Erkek">Erkek</option>
            <option value="Kadın">Kız</option>
        </select>

        <label for="alan">Alan:</label>
        <input type="text" id="alan" name="alan" required>

        <label for="date_of_birth">Doğum Tarihi:</label>
        <input type="date" id="date_of_birth" name="date_of_birth" required>

        <input type="submit" value="Kaydet">
    </form>
<?php
$baglanti = mysqli_connect("localhost", "root", "", "okul");
if($baglanti === false){
die("Bağlantı Hatası:" . mysqli_connect_error());
}
// Veri ekleme ifadesinin hazırlanması
$sorgu="INSERT INTO ogrenci (id, ogr_ad, ogr_soyad, ogr_no, ogr_sinif, cinsiyet, ogr_alan, ogr_dTarih) VALUES (NULL, ?, ?, ?, ?, ?, ?, ?)";
if($stmt = mysqli_prepare($baglanti, $sorgu))
{
$ogr_ad = $_GET['name'];
$ogr_soyad = $_GET['surname'];
$ogr_no = $_GET['student_number'];
$ogr_sinif=$_GET['class'];
$cinsiyet=$_GET['gender'];
$ogr_alan=$_GET['alan'];
$ogr_dTarih=$_GET['date_of_birth'];
mysqli_stmt_bind_param($stmt,"sssssss", $ogr_ad, $ogr_soyad, $ogr_no, $ogr_sinif, $cinsiyet, $ogr_alan, $ogr_dTarih);
mysqli_stmt_execute($stmt);
} else{
echo mysqli_error($baglanti);
}
mysqli_stmt_close($stmt);
mysqli_close($baglanti);
?>
</body>
</html>