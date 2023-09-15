<?php require_once 'header.php'; 
?>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kartı Düzenle/Ekle</title>
    <style>
        /* Reset CSS */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        main {
            max-width: 700px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .card-edit-form {
            margin-top: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }

        .update-card {
            text-align: center;
            font-size: 24px;
            background-color: #333;
            color: #fff;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <header>
        <h1 class="update-card">Kartı Düzenle/Ekle</h1>
    </header>

    <main>
        <div class="card-edit-form">
            <form action="card_db.php" method="post">
                <div class="form-group">
                    <label for="kart_ismi">Kart İsmi:</label>
                    <input type="text" placeholder="Doğru Kart ismini girmeden güncelleme yapamazsınız! Yeni kart eklersiniz!" id="kart_ismi" name="kart_ismi" required>
                </div>
                <div class="form-group">
                    <label for="kart_numarasi">Kart Numarası:</label>
                    <input type="text" placeholder="Örn:2200 1100 0000 0011" id="kart_numarasi" name="kart_numarasi" required>
                </div>
                <div class="form-group">
                    <label for="son_kullanma_tarihi">Son Kullanma Tarihi:</label>
                    <input type="text" placeholder="Örn:11/44" id="son_kullanma_tarihi" name="son_kullanma_tarihi" required>
                </div>
                <div class="form-group">
                    <label for="cvv_kodu">CVV Kodu:</label>
                    <input type="text" placeholder="Örn:123" id="cvv_kodu" name="cvv_kodu" required>
                </div>
                <div class="form-group">
                    <input type="submit" value="Kartı Güncelle/Ekle">
                </div>
            </form>
        </div>
    </main>
</body>
</html>


<?php require_once 'footer.php'; ?>