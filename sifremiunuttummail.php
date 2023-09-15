<?php
require_once 'Admin/islem/baglanti.php';

if (isset($_POST['sifremiunuttum'])) {
    try {
        $kadi = $_POST['kadi'];

        $kullanicisor = $baglanti->prepare("SELECT * FROM kullanici WHERE kullanici_adi=:kullanici_adi AND kullanici_yetki=:kullanici_yetki");
        $kullanicisor->execute(array(
            'kullanici_adi' => $kadi,
            'kullanici_yetki' => 1
        ));
        $kullanicicek = $kullanicisor->fetch(PDO::FETCH_ASSOC);
        $var = $kullanicisor->rowCount();

        if ($var == 0) {
            echo "Kullanıcıyı bulamadım";
        } else {
            // Şifre oluşturma
            $sifreolustur = rand(100, 90800000);
            $sifreharf = "aou";
            $sifreharf2 = "mhg";
            $yenisifre = $sifreharf . $sifreolustur . $sifreharf2;

            $md5sifre = md5($yenisifre);

            // Veritabanına şifre güncelleme işlemi
            $sifreunuttum = $baglanti->prepare("UPDATE kullanici SET kullanici_sifre=:kullanici_sifre WHERE kullanici_id=:kullanici_id");
            $update = $sifreunuttum->execute(array(
                'kullanici_sifre' => $md5sifre,
                'kullanici_id' => $kullanicicek['kullanici_id']
            ));

            if ($update) {
                require_once("phpmailer/class.phpmailer.php");

                $mail = new PHPMailer();
                $mail->IsSMTP();
                $mail->Host = "smtp.hostinger.web.tr";
                $mail->SMTPAuth = true;
                $mail->Username = "emre_1213312@hotmail.com"; //Gönderen
                $mail->Password = "x";
                $mail->From = "emre_060619@gmail.com"; //Alan
                $mail->FromName = "Emre Korkmaz";
                $mail->AddAddress($kullanicicek['kullanici_mail'], "Mail gönderimi");
                $mail->AddReplyTo($kullanicicek['kullanici_mail'], 'Reply to name');
                $mail->Subject = "Şifre unuttum talebi";
                $mail->Body = "Merhaba, sisteme geçici olarak aşağıdaki şifre ile giriş yapabilirsiniz: $yenisifre.";
                $mail->CharSet = 'UTF-8';

                if ($mail->Send()) {
                    echo "Şifreniz mail adresinize iletilmiştir. Geçici olarak bu şifre ile sisteme giriş yapabilirsiniz.";
                } else {
                    echo "<script>alert('Yeni Şifreniz: $yenisifre');</script>";
        
        // 3 saniye sonra önceki sayfaya yönlendirme işlemi
                    echo "<script>
                            setTimeout(function() {
                                window.location.href = 'giris.php';
                            }, 200); 
                        </script>";
                

                }
            } else {
                echo "Şifre değişemedi";
            }
        }
    } catch (PDOException $e) {
        echo "Veritabanı hatası: " . $e->getMessage();
    } catch (Exception $e) {
        echo "Bir hata oluştu: " . $e->getMessage();
    }
}
?>
