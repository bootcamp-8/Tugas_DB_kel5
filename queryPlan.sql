-- Halaman depan - List of Kelas
SELECT nama_kelas
FROM Kelas
ORDER BY nama_kelas ASC;
-- Hasil Tampil Mode Pembelajaran ketika kelas di pilih
SELECT * FROM Mode_Pembelajaran mp
WHERE mp.kelasId = 1 ORDER BY mp.nama_mode ASC

-- Halaman List of Mata Pelajaran
SELECT * FROM Mata_Pelajaran 
WHERE modeId = 1 ORDER BY nama_matapelajaran ASC;

-- Halaman List of Bab
SELECT * FROM Bab b 
INNER JOIN progresBab pb
 ON b.id_bab = pb.babId 
WHERE b.mapelId = 1 
AND pb.userId = 1 
ORDER BY b.nama_bab ASC

-- Halaman List of Sub-Bab
SELECT * FROM Sub_Bab b 
INNER JOIN progresSubBab pb ON b.id_subbab = pb.SubBabId 
WHERE b.id_bab = 1 AND pb.userId = 1 
ORDER BY b.nama_subbab ASC;

-- Halaman List of Material
SELECT * FROM Material b 
 INNER JOIN progresMaterial pb
 ON b.id_material = pb.materialId
 INNER join TipeMaterial t on b.tipe_id=t.id_tipe
WHERE b.id_subbab = 1 
AND pb.userId = 1 
ORDER BY b.nama_material ASC
