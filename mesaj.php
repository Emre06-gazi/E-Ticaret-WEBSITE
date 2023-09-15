<?php
include('db.php'); // Veritabanı bağlantısı

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $ad = $_POST["customerName"];
    $email = $_POST["email"];
    $konu = $_POST["konu"];
    $mesaj = $_POST["mesaj"];

    // Veritabanına yeni bir mesaj ekleyin
    $sql = "INSERT INTO mesajlar (mesaj_ad, mesaj_email, mesaj_konu, mesaj) VALUES (?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssss", $ad, $email, $konu, $mesaj);

    if ($stmt->execute()) {
        // Mesaj başarıyla eklendi
        echo "<script>alert('Mesajınız başarıyla gönderilmiştir.');</script>";
        
        // 3 saniye sonra önceki sayfaya yönlendirme işlemi
        echo "<script>
                setTimeout(function() {
                    window.location.href = 'iletisim.php';
                }, 200); 
              </script>";
    } else {
        // Mesaj eklenemedi
        echo "Mesaj eklenirken bir hata oluştu.";
    }

    $stmt->close();
}


?>
