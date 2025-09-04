# 📋 Mini To-do App (Flutter)

Aplikasi Flutter sederhana untuk mencatat daftar tugas (To-do).  
Dibuat sebagai latihan state management dan navigasi antar layar.

---

## ✨ Fitur
- Tambah to-do baru
- Tandai selesai/belum selesai
- Hapus to-do
- Layar History untuk melihat daftar semua to-do
- UI lebih menarik dengan card, icon, dan empty state

---

## 🛠️ State Management
Aplikasi ini menggunakan **Provider (ChangeNotifier)** untuk mengelola state.  
Alasan memilih Provider:
- Rekomendasi resmi Flutter untuk pemula
- Mudah digunakan dan dipahami
- Memisahkan logic (state) dengan UI

---

## 🌳 Widget Tree Singkat
```text
MaterialApp
 └─ HomeScreen
     ├─ AppBar (title, tombol history)
     ├─ Input Section (TextField + Button)
     └─ ListView -> TodoItem (Card)
 └─ HistoryScreen
     └─ ListView -> ListTile
