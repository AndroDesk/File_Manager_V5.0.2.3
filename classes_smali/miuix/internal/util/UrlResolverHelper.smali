.class public Lmiuix/internal/util/UrlResolverHelper;
.super Ljava/lang/Object;
.source "UrlResolverHelper.java"


# static fields
.field private static final BROWSER_HTTPS_SCHEME:Ljava/lang/String; = "mihttps"

.field private static final BROWSER_HTTP_SCHEME:Ljava/lang/String; = "mihttp"

.field private static final BROWSER_SCHEME_PREFIX:Ljava/lang/String; = "mi"

.field private static final FALLBACK_PARAMETER:Ljava/lang/String; = "mifb"

.field private static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field private static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final MI_LIST:[Ljava/lang/String;

.field private static final WHITE_LIST:[Ljava/lang/String;

.field private static final WHITE_PACKAGE_LIST:[Ljava/lang/String;

.field private static sBrowserFallbackSchemeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFallbackSchemeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 28

    .line 1
    const-string v0, ".xiaomi.com"

    .line 3
    const-string v1, ".mi.com"

    .line 5
    const-string v2, ".miui.com"

    .line 7
    const-string v3, ".mipay.com"

    .line 9
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lmiuix/internal/util/UrlResolverHelper;->MI_LIST:[Ljava/lang/String;

    .line 15
    const-string v0, ".duokan.com"

    .line 17
    const-string v1, ".duokanbox.com"

    .line 19
    const-string v2, ".mijiayoupin.com"

    .line 21
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lmiuix/internal/util/UrlResolverHelper;->WHITE_LIST:[Ljava/lang/String;

    .line 27
    const-string v1, "com.xiaomi.channel"

    .line 29
    const-string v2, "com.duokan.reader"

    .line 31
    const-string v3, "com.duokan.hdreader"

    .line 33
    const-string v4, "com.duokan.fiction"

    .line 35
    const-string v5, "com.duokan.free"

    .line 37
    const-string v6, "com.xiaomi.router"

    .line 39
    const-string v7, "com.xiaomi.smarthome"

    .line 41
    const-string v8, "com.xiaomi.o2o"

    .line 43
    const-string v9, "com.xiaomi.shop"

    .line 45
    const-string v10, "com.xiaomi.jr"

    .line 47
    const-string v11, "com.xiaomi.jr.security"

    .line 49
    const-string v12, "com.xiaomi.mifisecurity"

    .line 51
    const-string v13, "com.xiaomi.loan"

    .line 53
    const-string v14, "com.xiaomi.loanx"

    .line 55
    const-string v15, "com.mi.credit.in"

    .line 57
    const-string v16, "com.mi.credit.id"

    .line 59
    const-string v17, "com.miui.miuibbs"

    .line 61
    const-string v18, "com.wali.live"

    .line 63
    const-string v19, "com.mi.live"

    .line 65
    const-string v20, "com.xiaomi.ab"

    .line 67
    const-string v21, "com.mfashiongallery.emag"

    .line 69
    const-string v22, "com.xiaomi.pass"

    .line 71
    const-string v23, "com.xiaomi.youpin"

    .line 73
    const-string v24, "com.mi.liveassistant"

    .line 75
    const-string v25, "com.xiangkan.android"

    .line 77
    const-string v26, "com.xiaomi.gamecenter"

    .line 79
    const-string v27, "com.xiaomi.vipaccount"

    .line 81
    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lmiuix/internal/util/UrlResolverHelper;->WHITE_PACKAGE_LIST:[Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    .line 89
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 92
    sput-object v0, Lmiuix/internal/util/UrlResolverHelper;->sBrowserFallbackSchemeSet:Ljava/util/Set;

    .line 94
    const-string v1, "mihttp"

    .line 96
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lmiuix/internal/util/UrlResolverHelper;->sBrowserFallbackSchemeSet:Ljava/util/Set;

    .line 101
    const-string v1, "mihttps"

    .line 103
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Ljava/util/HashSet;

    .line 108
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 111
    sput-object v0, Lmiuix/internal/util/UrlResolverHelper;->sFallbackSchemeSet:Ljava/util/Set;

    .line 113
    const-string v1, "http"

    .line 115
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lmiuix/internal/util/UrlResolverHelper;->sFallbackSchemeSet:Ljava/util/Set;

    .line 120
    const-string v1, "https"

    .line 122
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lmiuix/internal/util/UrlResolverHelper;->sFallbackSchemeSet:Ljava/util/Set;

    .line 127
    sget-object v1, Lmiuix/internal/util/UrlResolverHelper;->sBrowserFallbackSchemeSet:Ljava/util/Set;

    .line 129
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrowserFallbackUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static getFallbackParameter(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Lmiuix/internal/util/UrlResolverHelper;->getFallbackParameter(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 9
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 11
    sget-object v2, Lmiuix/internal/util/UrlResolverHelper;->sFallbackSchemeSet:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-object p0

    :cond_19
    return-object v1
.end method

.method private static getFallbackParameter(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "mifb"

    .line 1
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_b

    const-string v1, ""

    goto :goto_f

    .line 2
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    add-int/lit8 p1, p1, 0x1

    .line 4
    invoke-static {p0, p1, v0}, Lmiuix/internal/util/UrlResolverHelper;->getFallbackParameter(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    return-object p2
.end method

.method public static isBrowserFallbackScheme(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lmiuix/internal/util/UrlResolverHelper;->sBrowserFallbackSchemeSet:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isMiHost(Ljava/lang/String;)Z
    .registers 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    sget-object v0, Lmiuix/internal/util/UrlResolverHelper;->MI_LIST:[Ljava/lang/String;

    .line 11
    array-length v2, v0

    .line 12
    move v3, v1

    .line 13
    :goto_c
    const/4 v4, 0x1

    .line 14
    if-ge v3, v2, :cond_1b

    .line 16
    aget-object v5, v0, v3

    .line 18
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_18

    .line 24
    return v4

    .line 25
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 27
    goto :goto_c

    .line 28
    :cond_1b
    sget-object v0, Lmiuix/internal/util/UrlResolverHelper;->WHITE_LIST:[Ljava/lang/String;

    .line 30
    array-length v2, v0

    .line 31
    move v3, v1

    .line 32
    :goto_1f
    if-ge v3, v2, :cond_2d

    .line 34
    aget-object v5, v0, v3

    .line 36
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_2a

    .line 42
    return v4

    .line 43
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_1f

    .line 46
    :cond_2d
    return v1
.end method

.method public static isMiUrl(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const-string v2, "http"

    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_25

    .line 25
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const-string v2, "https"

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_25

    .line 37
    return v1

    .line 38
    :cond_25
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lmiuix/internal/util/UrlResolverHelper;->isMiHost(Ljava/lang/String;)Z

    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public static isWhiteListPackage(Ljava/lang/String;)Z
    .registers 6

    .line 1
    sget-object v0, Lmiuix/internal/util/UrlResolverHelper;->WHITE_PACKAGE_LIST:[Ljava/lang/String;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_5
    if-ge v3, v1, :cond_14

    .line 8
    aget-object v4, v0, v3

    .line 10
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_11

    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_11
    add-int/lit8 v3, v3, 0x1

    .line 20
    goto :goto_5

    .line 21
    :cond_14
    return v2
.end method
