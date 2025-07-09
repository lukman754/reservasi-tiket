-- Create settings table
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting_key` (`setting_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert default settings
INSERT INTO `settings` (`setting_key`, `setting_value`) VALUES
('site_name', 'Taman Kopses Ciseeng'),
('site_description', 'Tempat wisata keluarga yang menyenangkan di Ciseeng, Bogor'),
('contact_whatsapp', '+62812345678'),
('contact_instagram', 'tamankopses'),
('contact_facebook', 'tamankopsesciseeng'),
('weekday_start_time', '08:00'),
('weekday_end_time', '17:00'),
('weekend_start_time', '08:00'),
('weekend_end_time', '18:00'),
('holiday_start_time', '08:00'),
('holiday_end_time', '18:00'),
('maintenance_mode', '0'),
('max_reservations_per_day', '100'),
('payment_confirmation_required', '1');
