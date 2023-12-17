.class public Lcom/google/android/gms/common/util/HttpUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final zzha:Ljava/util/regex/Pattern;

.field private static final zzhb:Ljava/util/regex/Pattern;

.field private static final zzhc:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/common/util/HttpUtils;->zzha:Ljava/util/regex/Pattern;

    .line 9
    const-string v0, "^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$"

    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/android/gms/common/util/HttpUtils;->zzhb:Ljava/util/regex/Pattern;

    .line 17
    const-string v0, "^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$"

    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/google/android/gms/common/util/HttpUtils;->zzhc:Ljava/util/regex/Pattern;

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    if-eqz p1, :cond_3

    .line 3
    goto :goto_5

    .line 4
    :cond_3
    :try_start_3
    const-string p1, "ISO-8859-1"

    .line 6
    :goto_5
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p0
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_9} :catch_a

    .line 10
    return-object p0

    .line 11
    :catch_a
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    throw p1
.end method

.method public static parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_54

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_54

    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    new-instance v1, Ljava/util/Scanner;

    .line 24
    invoke-direct {v1, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 27
    const-string p0, "&"

    .line 29
    invoke-virtual {v1, p0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 32
    :goto_1f
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNext()Z

    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_54

    .line 38
    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    const-string v2, "="

    .line 44
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    array-length v2, p0

    .line 49
    if-eqz v2, :cond_4c

    .line 51
    array-length v2, p0

    .line 52
    const/4 v3, 0x2

    .line 53
    if-gt v2, v3, :cond_4c

    .line 55
    const/4 v2, 0x0

    .line 56
    aget-object v2, p0, v2

    .line 58
    invoke-static {v2, p1}, Lcom/google/android/gms/common/util/HttpUtils;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    const/4 v4, 0x0

    .line 63
    array-length v5, p0

    .line 64
    if-ne v5, v3, :cond_48

    .line 66
    const/4 v3, 0x1

    .line 67
    aget-object p0, p0, v3

    .line 69
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/HttpUtils;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    :cond_48
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    goto :goto_1f

    .line 77
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 79
    const-string p1, "bad parameter"

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0

    .line 85
    :cond_54
    return-object v0
.end method
