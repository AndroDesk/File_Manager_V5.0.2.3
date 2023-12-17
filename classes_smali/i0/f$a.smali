.class public final Li0/f$a;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:[Ljava/util/Locale;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/util/Locale;

    .line 4
    new-instance v1, Ljava/util/Locale;

    .line 6
    const-string v2, "en"

    .line 8
    const-string v3, "XA"

    .line 10
    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v1, v0, v2

    .line 16
    new-instance v1, Ljava/util/Locale;

    .line 18
    const-string v2, "ar"

    .line 20
    const-string v3, "XB"

    .line 22
    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/4 v2, 0x1

    .line 26
    aput-object v1, v0, v2

    .line 28
    sput-object v0, Li0/f$a;->a:[Ljava/util/Locale;

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Locale;
    .registers 1

    .line 1
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 8

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v0, :cond_18

    .line 24
    return v2

    .line 25
    :cond_18
    sget-object v0, Li0/f$a;->a:[Ljava/util/Locale;

    .line 27
    array-length v3, v0

    .line 28
    move v4, v2

    .line 29
    :goto_1c
    if-ge v4, v3, :cond_2b

    .line 31
    aget-object v5, v0, v4

    .line 33
    invoke-virtual {v5, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_28

    .line 39
    move v0, v1

    .line 40
    goto :goto_2c

    .line 41
    :cond_28
    add-int/lit8 v4, v4, 0x1

    .line 43
    goto :goto_1c

    .line 44
    :cond_2b
    move v0, v2

    .line 45
    :goto_2c
    if-nez v0, :cond_7f

    .line 47
    sget-object v0, Li0/f$a;->a:[Ljava/util/Locale;

    .line 49
    array-length v3, v0

    .line 50
    move v4, v2

    .line 51
    :goto_32
    if-ge v4, v3, :cond_41

    .line 53
    aget-object v5, v0, v4

    .line 55
    invoke-virtual {v5, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3e

    .line 61
    move v0, v1

    .line 62
    goto :goto_42

    .line 63
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    .line 65
    goto :goto_32

    .line 66
    :cond_41
    move v0, v2

    .line 67
    :goto_42
    if-eqz v0, :cond_45

    .line 69
    goto :goto_7f

    .line 70
    :cond_45
    invoke-static {p0}, Lk0/b;->b(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lk0/b;->a(Ljava/lang/Object;)Landroid/icu/util/ULocale;

    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lk0/b;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_6e

    .line 88
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_6d

    .line 98
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_6c

    .line 108
    goto :goto_6d

    .line 109
    :cond_6c
    move v1, v2

    .line 110
    :cond_6d
    :goto_6d
    return v1

    .line 111
    :cond_6e
    invoke-static {p1}, Lk0/b;->b(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    .line 114
    move-result-object p0

    .line 115
    invoke-static {p0}, Lk0/b;->a(Ljava/lang/Object;)Landroid/icu/util/ULocale;

    .line 118
    move-result-object p0

    .line 119
    invoke-static {p0}, Lk0/b;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result p0

    .line 127
    return p0

    .line 128
    :cond_7f
    :goto_7f
    return v2
.end method
