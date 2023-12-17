.class public Lcom/android/fileexplorer/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final hexDigits:[Ljava/lang/String;

.field private static mNumberPattern:Ljava/util/regex/Pattern;

.field private static final suffixes:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final suffixesCN:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static zhCNUnit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static zhTWUnit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 21

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/util/StringUtils;->suffixes:Ljava/util/NavigableMap;

    .line 8
    new-instance v1, Ljava/util/TreeMap;

    .line 10
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 13
    sput-object v1, Lcom/android/fileexplorer/util/StringUtils;->suffixesCN:Ljava/util/NavigableMap;

    .line 15
    const/4 v2, 0x0

    .line 16
    sput-object v2, Lcom/android/fileexplorer/util/StringUtils;->mNumberPattern:Ljava/util/regex/Pattern;

    .line 18
    const-wide/16 v2, 0x3e8

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    move-result-object v2

    .line 24
    const-string v3, "k"

    .line 26
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-wide/32 v2, 0xf4240

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    move-result-object v2

    .line 36
    const-string v3, "m"

    .line 38
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-wide/32 v2, 0x3b9aca00

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    move-result-object v2

    .line 48
    const-string v3, "b"

    .line 50
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-wide/16 v2, 0x2710

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    move-result-object v0

    .line 59
    const-string v2, "wan"

    .line 61
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-wide/32 v3, 0x989680

    .line 67
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    move-result-object v0

    .line 71
    const-string v3, "qianwan"

    .line 73
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-wide/32 v4, 0x5f5e100

    .line 79
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    move-result-object v0

    .line 83
    const-string v4, "yi"

    .line 85
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    .line 90
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    sput-object v0, Lcom/android/fileexplorer/util/StringUtils;->zhCNUnit:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    .line 97
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    sput-object v0, Lcom/android/fileexplorer/util/StringUtils;->zhTWUnit:Ljava/util/HashMap;

    .line 102
    sget-object v0, Lcom/android/fileexplorer/util/StringUtils;->zhCNUnit:Ljava/util/HashMap;

    .line 104
    const-string v1, "万"

    .line 106
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/fileexplorer/util/StringUtils;->zhCNUnit:Ljava/util/HashMap;

    .line 111
    const-string v1, "千万"

    .line 113
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/fileexplorer/util/StringUtils;->zhCNUnit:Ljava/util/HashMap;

    .line 118
    const-string v1, "亿"

    .line 120
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/fileexplorer/util/StringUtils;->zhTWUnit:Ljava/util/HashMap;

    .line 125
    const-string v1, "萬"

    .line 127
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/fileexplorer/util/StringUtils;->zhTWUnit:Ljava/util/HashMap;

    .line 132
    const-string v1, "千萬"

    .line 134
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/fileexplorer/util/StringUtils;->zhTWUnit:Ljava/util/HashMap;

    .line 139
    const-string v1, "億"

    .line 141
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v5, "0"

    .line 146
    const-string v6, "1"

    .line 148
    const-string v7, "2"

    .line 150
    const-string v8, "3"

    .line 152
    const-string v9, "4"

    .line 154
    const-string v10, "5"

    .line 156
    const-string v11, "6"

    .line 158
    const-string v12, "7"

    .line 160
    const-string v13, "8"

    .line 162
    const-string v14, "9"

    .line 164
    const-string v15, "a"

    .line 166
    const-string v16, "b"

    .line 168
    const-string v17, "c"

    .line 170
    const-string v18, "d"

    .line 172
    const-string v19, "e"

    .line 174
    const-string v20, "f"

    .line 176
    filled-new-array/range {v5 .. v20}, [Ljava/lang/String;

    .line 179
    move-result-object v0

    .line 180
    sput-object v0, Lcom/android/fileexplorer/util/StringUtils;->hexDigits:[Ljava/lang/String;

    .line 182
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5Encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/android/fileexplorer/util/StringUtils;->byteArrayToHexString([B)Ljava/lang/String;

    .line 18
    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 19
    goto :goto_14

    .line 20
    :catch_13
    const/4 p0, 0x0

    .line 21
    :goto_14
    return-object p0
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_7
    if-ge v2, v1, :cond_15

    .line 10
    aget-byte v3, p0, v2

    .line 12
    invoke-static {v3}, Lcom/android/fileexplorer/util/StringUtils;->byteToHexString(B)Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_7

    .line 22
    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method private static byteToHexString(B)Ljava/lang/String;
    .registers 4

    .line 1
    if-gez p0, :cond_4

    .line 3
    add-int/lit16 p0, p0, 0x100

    .line 5
    :cond_4
    ushr-int/lit8 v0, p0, 0x4

    .line 7
    and-int/lit8 v0, v0, 0xf

    .line 9
    and-int/lit8 p0, p0, 0xf

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    sget-object v2, Lcom/android/fileexplorer/util/StringUtils;->hexDigits:[Ljava/lang/String;

    .line 18
    aget-object v0, v2, v0

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    aget-object p0, v2, p0

    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method private static formatNum(J)Ljava/lang/String;
    .registers 11

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_10

    const-wide p0, -0x7fffffffffffffffL  # -4.9E-324

    .line 3
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/StringUtils;->formatNum(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_19

    const-string p0, ""

    return-object p0

    :cond_19
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_24

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_24
    sget-object v0, Lcom/android/fileexplorer/util/StringUtils;->suffixes:Ljava/util/NavigableMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0xa

    div-long/2addr v1, v3

    div-long/2addr p0, v1

    const-wide/16 v1, 0x64

    cmp-long v1, p0, v1

    const-wide/high16 v5, 0x4024000000000000L  # 10.0

    if-gez v1, :cond_55

    long-to-double v1, p0

    div-double/2addr v1, v5

    .line 9
    div-long v7, p0, v3

    long-to-double v7, v7

    cmpl-double v1, v1, v7

    if-eqz v1, :cond_55

    const/4 v1, 0x1

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    :goto_56
    if-eqz v1, :cond_63

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    div-double/2addr p0, v5

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_6c

    :cond_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v3

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_6c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatNum(JLandroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "zh"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_19

    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/StringUtils;->formatNumForCN(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_19
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/StringUtils;->formatNum(J)Ljava/lang/String;

    move-result-object p0

    :goto_1d
    return-object p0
.end method

.method private static formatNumForCN(J)Ljava/lang/String;
    .registers 11

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    cmp-long v0, p0, v0

    .line 5
    if-nez v0, :cond_10

    .line 7
    const-wide p0, -0x7fffffffffffffffL  # -4.9E-324

    .line 12
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/StringUtils;->formatNum(J)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_10
    const-wide/16 v0, 0x0

    .line 19
    cmp-long v0, p0, v0

    .line 21
    if-gez v0, :cond_19

    .line 23
    const-string p0, ""

    .line 25
    return-object p0

    .line 26
    :cond_19
    const-wide/16 v0, 0x2710

    .line 28
    cmp-long v0, p0, v0

    .line 30
    if-gez v0, :cond_24

    .line 32
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_24
    sget-object v0, Lcom/android/fileexplorer/util/StringUtils;->suffixesCN:Ljava/util/NavigableMap;

    .line 39
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Long;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-static {v0}, Lcom/android/fileexplorer/util/StringUtils;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 66
    move-result-wide v1

    .line 67
    const-wide/16 v3, 0xa

    .line 69
    div-long/2addr v1, v3

    .line 70
    div-long/2addr p0, v1

    .line 71
    const-wide/16 v1, 0x64

    .line 73
    cmp-long v1, p0, v1

    .line 75
    const-wide/high16 v5, 0x4024000000000000L  # 10.0

    .line 77
    if-gez v1, :cond_59

    .line 79
    long-to-double v1, p0

    .line 80
    div-double/2addr v1, v5

    .line 81
    div-long v7, p0, v3

    .line 83
    long-to-double v7, v7

    .line 84
    cmpl-double v1, v1, v7

    .line 86
    if-eqz v1, :cond_59

    .line 88
    const/4 v1, 0x1

    .line 89
    goto :goto_5a

    .line 90
    :cond_59
    const/4 v1, 0x0

    .line 91
    :goto_5a
    if-eqz v1, :cond_67

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    long-to-double p0, p0

    .line 99
    div-double/2addr p0, v5

    .line 100
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 103
    goto :goto_70

    .line 104
    :cond_67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    div-long/2addr p0, v3

    .line 110
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    :goto_70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    return-object p0
.end method

.method public static getRandomText(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    array-length p1, p0

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    .line 22
    move-result p1

    .line 23
    aget-object p0, p0, p1

    .line 25
    return-object p0
.end method

.method private static getSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 15
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_21

    .line 25
    sget-object v0, Lcom/android/fileexplorer/util/StringUtils;->zhCNUnit:Ljava/util/HashMap;

    .line 27
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/String;

    .line 33
    goto :goto_38

    .line 34
    :cond_21
    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 36
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_36

    .line 46
    sget-object v0, Lcom/android/fileexplorer/util/StringUtils;->zhTWUnit:Ljava/util/HashMap;

    .line 48
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Ljava/lang/String;

    .line 54
    goto :goto_38

    .line 55
    :cond_36
    const-string p0, ""

    .line 57
    :goto_38
    return-object p0
.end method

.method public static isNameIllegal(Ljava/lang/String;Z)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_33

    .line 12
    if-eqz p1, :cond_20

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    move-result-object p0

    .line 22
    const p1, 0x7f1101b8

    .line 25
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    .line 32
    goto :goto_32

    .line 33
    :cond_20
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    move-result-object p0

    .line 41
    const p1, 0x7f1102c1

    .line 44
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    .line 51
    :goto_32
    return v1

    .line 52
    :cond_33
    const-string v0, ".*[\":/*?<>|\\\\].*"

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_4e

    .line 60
    const-string v0, "."

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_4e

    .line 68
    const-string v0, ".."

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_4c

    .line 76
    goto :goto_4e

    .line 77
    :cond_4c
    const/4 p0, 0x0

    .line 78
    return p0

    .line 79
    :cond_4e
    :goto_4e
    if-eqz p1, :cond_5b

    .line 81
    const p0, 0x7f1101b9

    .line 84
    invoke-static {p0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    .line 91
    goto :goto_65

    .line 92
    :cond_5b
    const p0, 0x7f110182

    .line 95
    invoke-static {p0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    .line 102
    :goto_65
    return v1
.end method

.method public static isNameIllegalMirror(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1c

    .line 11
    if-eqz p1, :cond_14

    .line 13
    const p0, 0x7f1101b8

    .line 16
    invoke-static {p0}, La/a;->e(I)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_14
    const p0, 0x7f1102c1

    .line 24
    invoke-static {p0}, La/a;->e(I)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1c
    const-string v0, ".*[\":/*?<>|\\\\].*"

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_38

    .line 37
    const-string v0, "."

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_38

    .line 45
    const-string v0, ".."

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_35

    .line 53
    goto :goto_38

    .line 54
    :cond_35
    const-string p0, ""

    .line 56
    return-object p0

    .line 57
    :cond_38
    :goto_38
    if-eqz p1, :cond_42

    .line 59
    const p0, 0x7f1101b9

    .line 62
    invoke-static {p0}, La/a;->e(I)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_42
    const p0, 0x7f110182

    .line 70
    invoke-static {p0}, La/a;->e(I)Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/StringUtils;->mNumberPattern:Ljava/util/regex/Pattern;

    .line 3
    if-nez v0, :cond_c

    .line 5
    const-string v0, "-?[0-9]+\\.?[0-9]*"

    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/fileexplorer/util/StringUtils;->mNumberPattern:Ljava/util/regex/Pattern;

    .line 13
    :cond_c
    sget-object v0, Lcom/android/fileexplorer/util/StringUtils;->mNumberPattern:Ljava/util/regex/Pattern;

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public static replaceBackSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    if-eqz p0, :cond_13

    .line 3
    const-string v0, "\\n{2,}|\r{2,}"

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 12
    move-result-object p0

    .line 13
    const-string v0, "\n"

    .line 15
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const-string p0, ""

    .line 22
    :goto_15
    return-object p0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 12
    return p0

    .line 13
    :catch_c
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    return p1
.end method

.method public static toLong(Ljava/lang/String;J)J
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 4
    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-wide p0

    .line 6
    :catch_5
    return-wide p1
.end method

.method public static trimNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    const-string p0, ""

    :goto_5
    return-object p0
.end method
