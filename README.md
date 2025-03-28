# Tutorial 7 Game Development

Nama: Yosua Chrial martono
NPM : 2106750686

## Latihan Mandiri

- Menambahkan sprint dan crouching,
  Untuk fitur ini saya menerapkannya dalam tahapan berikut: 1. Menambahkan input map run dan crouch - Shift untuk run - Ctrl untuk crouch 2. Menambahkan snippet kode berikut pada script player

      ```
      if Input.is_action_just_pressed("run"):
      	speed = speed * 2

      if Input.is_action_just_released("run"):
      	speed = speed / 2

      if Input.is_action_just_pressed("crouch"):
      	speed = speed * 0.4
      	camera.translate(Vector3(0,-0.5,0))


      if Input.is_action_just_released("crouch"):
      	speed = speed / 0.4
      	camera.translate(Vector3(0,+0.5,0))
      ```
      Prinsip dasar yang dilakukan adalah mengubah nilai speed ketika player menggunakan tombol "run" atau "crouch". Untuk "crouching" sendiri saya menambahkan translasi pada sumbu y kepada kamera untuk mensimulasikan player yang sedang jongkok.

## Polishing

- Menambahkan level 2
  Menggunakan materi yang telah dipelajari untuk membuat level baru dengan menggunakan konsep open world yang tidak tertutup oleh boundaries.
  Level mengembangkan kembali konsep-konsep yang telah dipelajari dengan memoles tampilan dari objek.
