.class public final Lk0/b;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Ljava/lang/Object;)Landroid/icu/util/ULocale;
    .registers 1

    check-cast p0, Landroid/icu/util/ULocale;

    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .registers 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    check-cast p0, Landroid/icu/util/ULocale;

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
