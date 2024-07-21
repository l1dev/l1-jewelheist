local Translations = {
  locales = {
    ["police_notification"] = "Silahçı Soygunu Bildirildi",
    ["vitine_target_label"] = "Vitrini Soy",
    ["shelf_target_label"] = "Rafı Soy",
    ["animation_searching"] = "Aranıyor...",
    ["error_inventory"] = "Çantan ağzına kadar dolu.",
    ["error_empty_vitrine"] = "Vitrin soyulmuş...",
    ["error_failed"] = "Başarısız...",
    ["error_cooldown"] = "Mağaza kısa bir süre önce soyuldu...",
    ["error_no_police"] = "Yetersiz Polis Sayısı",
    ["no_item"] = "Raflar ancak golf sopasıyla kırılabilir.",
    ["error_locked"] = "ayyynen knk",
  },
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
