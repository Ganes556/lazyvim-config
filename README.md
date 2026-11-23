# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Terminal terintegrasi

- `Ctrl+/` membuka atau menyembunyikan terminal tanpa menutup sesi shell.
- Di GNOME Terminal, `Ctrl+Shift+V` menempelkan teks ke shell, termasuk dari mode scrollback Neovim. Bash dengan bracketed paste aktif mempertahankan baris kosong dan tidak menjalankan perintah sampai `Enter` ditekan.
- Untuk menempelkan gambar ke OMP dari clipboard, gunakan `Ctrl+V` (tanpa `Shift`). Pintasan ini bekerja di prompt OMP maupun saat terminal berada di mode normal (scrollback).
- Untuk menyalin teks lewat GNOME Terminal, blok teks dengan `Shift` + drag, lalu tekan `Ctrl+Shift+C`.
- `Ctrl+C`, `Ctrl+H/J/K/L`, dan `Esc` diteruskan ke shell atau aplikasi terminal. Gunakan `Ctrl+\` lalu `Ctrl+N` untuk masuk ke scrollback Neovim.
