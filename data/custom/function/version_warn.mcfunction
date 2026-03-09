# ── Sürüm uyarısı: ilk kurulum mu, güncelleme mi? ──────────────
# HATA DÜZELTİLDİ: Eski sürümde storage tamamen boşken
# "unless {ap_version:'none'}" koşulu TRUE olduğundan
# version_updated ve version_first_install AYNI ANDA çalışıyordu.
#
# Düzeltme: önce ap_version anahtarının varlığına bakılır.
#   • Anahtar yoktur  → gerçek ilk kurulum
#   • Anahtar vardır  → sürüm güncellemesi (farklı bir değer kaydedilmiş)
execute unless data storage custom:meta ap_version run function custom:version_first_install
execute if data storage custom:meta ap_version run function custom:version_updated
