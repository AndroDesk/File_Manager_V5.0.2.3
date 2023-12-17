.class public final Lk0/b;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# direct methods
.method public static a(Ljava/lang/Object;)Landroid/icu/util/ULocale;
    .registers 1

    .line 1
    check-cast p0, Landroid/icu/util/ULocale;

    .line 3
    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static b(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .registers 1

    .line 1
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 1
    check-cast p0, Landroid/icu/util/ULocale;

    .line 3
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
