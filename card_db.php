<?php
include('db.php'); // Veritabanı bağlantısı

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $kart_ismi = $_POST['kart_ismi'];
    $son_kullanma_tarihi = $_POST['son_kullanma_tarihi'];
    $cvv_kodu = $_POST['cvv_kodu'];
    $kart_numarasi = $_POST['kart_numarasi'];

  // Kart ismine sahip bir kartın veritabanında olup olmadığını kontrol et
  $check_sql = "SELECT COUNT(*) FROM card WHERE kart_ismi = ?";
  $check_stmt = $conn->prepare($check_sql);
  $check_stmt->bind_param("s", $kart_ismi);
  $check_stmt->execute();
  $check_stmt->bind_result($existing_card_count);
  $check_stmt->fetch();
  $check_stmt->close();

  if ($existing_card_count > 0) {
      // Aynı kart ismine sahip bir kart zaten var, kartı güncelleme işlemi yapın
      $update_sql = "UPDATE card SET son_kullanma_tarihi = ?, cvv_kodu = ?, kart_numarasi = ? WHERE kart_ismi = ?";
      $update_stmt = $conn->prepare($update_sql);
      $update_stmt->bind_param("ssss", $son_kullanma_tarihi, $cvv_kodu, $kart_numarasi, $kart_ismi);

        if ($update_stmt->execute()) {
            // Kart başarıyla güncellendi
            echo "<script>alert('Kartınız başarıyla güncellenmiştir.');</script>";

            // 3 saniye sonra önceki sayfaya yönlendirme işlemi
            echo "<script>
                setTimeout(function() {
                    window.location.href = 'sepet.php';
                }, 1000); 
              </script>";
        } else {
            // Kart güncellenemedi
            echo "Kart güncellenirken bir hata oluştu.";
        }

        $update_stmt->close();
    } else {
        // Aynı kart numarasına sahip bir kart bulunamadı, yeni kart ekleyin
        $insert_sql = "INSERT INTO card (kart_ismi, kart_numarasi, son_kullanma_tarihi, cvv_kodu) VALUES (?, ?, ?, ?)";
        $insert_stmt = $conn->prepare($insert_sql);
        $insert_stmt->bind_param("ssss", $kart_ismi, $kart_numarasi, $son_kullanma_tarihi, $cvv_kodu);

        if ($insert_stmt->execute()) {
            // Kart başarıyla eklenmiş
            echo "<script>alert('Yeni Kart başarıyla eklenmiştir.');</script>";

            // 3 saniye sonra önceki sayfaya yönlendirme işlemi
            echo "<script>
                setTimeout(function() {
                    window.location.href = 'sepet.php';
                }, 1000); 
              </script>";
        } else {
            // Kart eklenemedi
            echo "Kart eklenirken bir hata oluştu.";
        }

        $insert_stmt->close();
    }
}
?>
