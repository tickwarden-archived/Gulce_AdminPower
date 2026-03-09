# ============================================
# custom:ame/perm/sync
# ============================================
# AdminPower yetki tag'lerini → macro.admin ile senkronize eder.
# Bu sayede AME'nin macro:cmd/kick, macro:cmd/ban, macro:cmd/op
# gibi admin-korumalı komutları AdminPower adminleri için çalışır.
#
# ÇAĞRI: load sırasında ve perm set edildiğinde
# ============================================

# ap.admin veya ap.owner varsa → macro.admin ekle
tag @a[tag=ap.admin] add macro.admin
tag @a[tag=ap.owner] add macro.admin

# ap.mod varsa → macro.admin'e eklenmesin (mod ≠ tam admin)
# Yetki kaldırılırsa → macro.admin'i de kaldır
tag @a[tag=!ap.admin,tag=!ap.owner] remove macro.admin
