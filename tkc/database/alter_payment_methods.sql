-- Alter payment_methods table to add new columns
ALTER TABLE payment_methods 
ADD COLUMN type ENUM('bank_transfer','ewallet','qris','cash','other') NOT NULL DEFAULT 'other' AFTER description,
ADD COLUMN account_info TEXT DEFAULT NULL AFTER type,
ADD COLUMN qr_image VARCHAR(255) DEFAULT NULL AFTER account_info;

-- Update existing payment methods with appropriate types
UPDATE payment_methods SET type = 'bank_transfer' WHERE name = 'Transfer Bank';
UPDATE payment_methods SET type = 'ewallet' WHERE name = 'E-Wallet';
UPDATE payment_methods SET type = 'other' WHERE name = 'Kartu Kredit/Debit';

-- Insert additional payment methods
INSERT INTO payment_methods (name, description, type, account_info, is_active) VALUES 
('Transfer Bank BCA', 'Pembayaran melalui transfer bank BCA', 'bank_transfer', 'BCA 1234567890 a.n. Taman Kopses Ciseeng', 1),
('Transfer Bank BNI', 'Pembayaran melalui transfer bank BNI', 'bank_transfer', 'BNI 0987654321 a.n. Taman Kopses Ciseeng', 1),
('QRIS', 'Pembayaran melalui scan QRIS', 'qris', NULL, 1),
('GoPay', 'Pembayaran melalui GoPay', 'ewallet', '081234567890', 1),
('OVO', 'Pembayaran melalui OVO', 'ewallet', '081234567890', 1),
('Dana', 'Pembayaran melalui Dana', 'ewallet', '081234567890', 1),
('Tunai', 'Pembayaran tunai di lokasi', 'cash', NULL, 0);
