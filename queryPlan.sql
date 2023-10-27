-- Halaman depan - List of Kelas dan Mode Pembelajaran
SELECT Kelas.nama_kelas, Mode_Pembelajaran.nama_mode
FROM Kelas
LEFT JOIN Mode_Pembelajaran ON Kelas.id_kelas = Mode_Pembelajaran.kelasId;

-- Halaman List of Mata Pelajaran
SELECT Mata_Pelajaran.nama_matapelajaran, Mata_Pelajaran.jumlahBab
FROM Mata_Pelajaran
WHERE modeId = 'id_mode';

-- Halaman List of Bab
SELECT Bab.nama_bab, Bab.jumlah_subbab, Bab.label_gratis, progresBab.progres
FROM Bab
LEFT JOIN progresBab ON Bab.id_bab = progresBab.babId
WHERE mapelId = 'id_matapelajaran';

-- Halaman List of Sub-Bab
SELECT Sub_Bab.nama_subbab, Sub_Bab.label_gratis, progresSubBab.progres
FROM Sub_Bab
LEFT JOIN progresSubBab ON Sub_Bab.id_subbab = progresSubBab.SubBabId
WHERE id_bab = 'id_bab';

-- Halaman List of Material
SELECT Material.nama_material, Material.label, progresMaterial.statusProgres
FROM Material
LEFT JOIN progresMaterial ON Material.id_material = progresMaterial.materialId
WHERE id_subbab = 'id_subbab';
