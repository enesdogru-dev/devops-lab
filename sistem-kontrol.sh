#!/bin/bash

ZAMAN=$(date +"%H:%M:%S")

# Eğer birinci parametre ($1) boş değilse (dışarıdan isim girilmişse)
if [ -n "$1" ]; then
    DURUM=$(systemctl is-active $1)
    echo "[$ZAMAN] Özel Sorgu -> $1 servisi: $DURUM"
else
    # Dışarıdan isim girilmemişse varsayılan listeyi kontrol et
    SERVISLER="cron ssh ufw"
    echo "[$ZAMAN] Genel Sistem Kontrolü:"
    for SERVIS in $SERVISLER; do
        DURUM=$(systemctl is-active $SERVIS)
        echo "-> $SERVIS: $DURUM"
    done
fi
echo "Bu satır yeni bir branch üzerinden eklendi."
