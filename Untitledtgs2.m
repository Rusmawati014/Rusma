%Berwarna/gambar
rusma = imread('saya.JPEG');
figure(), imshow(rusma)

%keabuan
rahmi = (rusma(:,:,1) + rusma (:,:,2) + rusma (:,:,3)) / 3;
figure(), imshow(rahmi)

%KEABUAN KONS
iyyak_const = rusma(:,:,1) * 0.6 + rusma(:,:,2) * 0,22 + rusma (:,:,3) * 0.27;
figure(), imshow(iyyak_const);

%citra biner
nilai_biner = 20;
[kolom, baris] = size(iyyak_const);;
wulan_biner = zeros(kolom,baris);

for x = 1 : kolom
   for y = 1 : baris
      if(iyyak_const(x,y) > nilai_biner)
          wulan_biner(x,y) = 1;
      else
          wulan_biner(x,y) = 0;
      end
   end
end
figure(), imshow(wulan_biner)

%Brightnes
brighness = iyyak_const + 20;
figure(), imshow(brighness)

contrast = iyyak_const * 1.3;
figure(), imshow (contrast)

