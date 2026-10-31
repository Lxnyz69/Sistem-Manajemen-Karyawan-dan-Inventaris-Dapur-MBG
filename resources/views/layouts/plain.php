<!doctype html>
<html lang="id"><head><?php require __DIR__ . '/_head.php'; ?></head>
<body>
<?php require __DIR__ . '/_flash.php'; ?>
<?= $content ?>
<?php require __DIR__ . '/_modal.php'; ?>
<script src="<?= e(asset('js/app.js')) ?>"></script>
<script src="<?= e(asset('js/ui.js')) ?>"></script>
</body></html>
