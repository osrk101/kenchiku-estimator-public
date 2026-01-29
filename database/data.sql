USE `kenchiku_estimate`;

-- 外部キーチェックを一時的に無効化
SET FOREIGN_KEY_CHECKS=0;

--- 文字コードをUTF-8に設定
SET NAMES utf8mb4;

-- accounts への挿入
INSERT INTO `accounts` (`id`, `username`, `password`, `role`, `full_name`) VALUES
	(1, 'adminuser', '$2a$10$FpPta3XLvOvlmzZWpRmxBuSzjkIlhHa954AdGLrV.g7AsOWUFAu2K', 'ADMIN', '山田太郎'),
	(14, 'testuser', '$2a$10$S74QNL3URpQoAsnm5PZ3j.5p15x/OosnKFWucTYnTwA24OJD.z5tq', 'ADMIN', '田中一郎'),
	(16, 'suzuki', '$2a$10$Jb2hvWv4qJ4KH0G.M9Y.FOHYPIUWsKsVaB.oGZ7FasBhDsHy6Q8IW', 'USER', '鈴木治郎');

-- estimates への挿入
INSERT INTO `estimates` (`id`, `estimate_number`, `title`, `client_name`, `created_by`, `created_at`, `update_at`) VALUES
	(69, '260127-01', '和室床リフォーム', '鈴木様', 1, '2026-01-27', NULL),
	(70, '260127-02', '和室床壁リフォーム', '山本様', 1, '2026-01-27', NULL);

-- estimate_items への挿入
INSERT INTO `estimate_items` (`id`, `estimate_id`, `item_name`, `unit_price`, `quantity`, `unit`) VALUES
	(190, 69, '既存畳撤去処分費', 3000.00, 6.00, '枚'),
	(191, 69, '床下地（構造用合板）', 3500.00, 6.00, '枚'),
	(192, 69, '床断熱材', 1900.00, 6.00, '枚'),
	(193, 69, 'フローリング', 15000.00, 3.00, '坪'),
	(194, 69, '巾木（接着剤含む）', 5000.00, 1.00, '式'),
	(195, 69, '工事費', 30000.00, 1.00, '式'),
	(196, 69, '諸経費', 5000.00, 1.00, '式'),
	(197, 70, '既存畳撤去処分費', 3000.00, 6.00, '枚'),
	(198, 70, '床下地（構造用合板）', 3500.00, 6.00, '枚'),
	(199, 70, '床断熱材', 1900.00, 6.00, '枚'),
	(200, 70, 'フローリング', 15000.00, 3.00, '坪'),
	(201, 70, '巾木（接着剤含む）', 5000.00, 1.00, '式'),
	(202, 70, '工事費', 30000.00, 1.00, '式'),
	(203, 70, '壁下地（ベニヤ）', 2400.00, 22.00, '枚'),
	(204, 70, '壁クロス（材料費工事費込）', 1500.00, 35.00, '㎡'),
	(205, 70, '諸経費', 5000.00, 1.00, '式');

-- 外部キーチェックを有効化
SET FOREIGN_KEY_CHECKS=1;
