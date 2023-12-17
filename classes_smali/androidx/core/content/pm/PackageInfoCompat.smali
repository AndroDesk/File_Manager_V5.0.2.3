.class public final Landroidx/core/content/pm/PackageInfoCompat;
.super Ljava/lang/Object;
.source "PackageInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static byteArrayContains([[B[B)Z
    .registers 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v2, v0, :cond_12

    .line 6
    aget-object v3, p0, v2

    .line 8
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_f

    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_3

    .line 19
    :cond_12
    return v1
.end method

.method private static computeSHA256Digest([B)[B
    .registers 3

    .line 1
    :try_start_0
    const-string v0, "SHA256"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 10
    move-result-object p0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    .line 11
    return-object p0

    .line 12
    :catch_b
    move-exception p0

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    .line 15
    const-string v1, "Device doesn\'t support SHA256 cert checking"

    .line 17
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    throw v0
.end method

.method public static getLongVersionCode(Landroid/content/pm/PackageInfo;)J
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_b

    .line 7
    invoke-static {p0}, Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_b
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 14
    int-to-long v0, p0

    .line 15
    return-wide v0
.end method

.method public static getSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_1e

    .line 7
    const/high16 v0, 0x8000000

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 12
    move-result-object p0

    .line 13
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 15
    invoke-static {p0}, Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;->hasMultipleSigners(Landroid/content/pm/SigningInfo;)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_19

    .line 21
    invoke-static {p0}, Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;->getApkContentsSigners(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    .line 24
    move-result-object p0

    .line 25
    goto :goto_26

    .line 26
    :cond_19
    invoke-static {p0}, Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;->getSigningCertificateHistory(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    .line 29
    move-result-object p0

    .line 30
    goto :goto_26

    .line 31
    :cond_1e
    const/16 v0, 0x40

    .line 33
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 36
    move-result-object p0

    .line 37
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 39
    :goto_26
    if-nez p0, :cond_2d

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_2d
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static hasSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/Map;Z)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "[B",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

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
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v2

    .line 17
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v3

    .line 21
    const-string v4, "Unsupported certificate type "

    .line 23
    const/4 v5, 0x1

    .line 24
    if-eqz v3, :cond_67

    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, [B

    .line 32
    if-eqz v3, :cond_5b

    .line 34
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/Integer;

    .line 40
    if-eqz v3, :cond_4f

    .line 42
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_10

    .line 48
    if-ne v6, v5, :cond_32

    .line 50
    goto :goto_10

    .line 51
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string p3, " when verifying "

    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p0

    .line 80
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 82
    const-string p2, "Type must be specified for cert when verifying "

    .line 84
    invoke-static {p2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p0

    .line 92
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    const-string p2, "Cert byte array cannot be null when verifying "

    .line 96
    invoke-static {p2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    throw p0

    .line 104
    :cond_67
    invoke-static {p0, p1}, Landroidx/core/content/pm/PackageInfoCompat;->getSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    .line 107
    move-result-object v2

    .line 108
    if-nez p3, :cond_95

    .line 110
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 112
    const/16 v6, 0x1c

    .line 114
    if-lt v3, v6, :cond_95

    .line 116
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object p3

    .line 120
    :cond_77
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_94

    .line 126
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object v0

    .line 130
    check-cast v0, [B

    .line 132
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Ljava/lang/Integer;

    .line 138
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 141
    move-result v2

    .line 142
    invoke-static {p0, p1, v0, v2}, Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;->hasSigningCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;[BI)Z

    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_77

    .line 148
    return v1

    .line 149
    :cond_94
    return v5

    .line 150
    :cond_95
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 153
    move-result p0

    .line 154
    if-eqz p0, :cond_125

    .line 156
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 159
    move-result p0

    .line 160
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 163
    move-result p1

    .line 164
    if-gt p0, p1, :cond_125

    .line 166
    if-eqz p3, :cond_b3

    .line 168
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 171
    move-result p0

    .line 172
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 175
    move-result p1

    .line 176
    if-eq p0, p1, :cond_b3

    .line 178
    goto/16 :goto_125

    .line 180
    :cond_b3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    move-result-object p0

    .line 184
    invoke-interface {p2, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 187
    move-result p0

    .line 188
    const/4 p1, 0x0

    .line 189
    if-eqz p0, :cond_de

    .line 191
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 194
    move-result p0

    .line 195
    new-array p1, p0, [[B

    .line 197
    move p0, v1

    .line 198
    :goto_c5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 201
    move-result p3

    .line 202
    if-ge p0, p3, :cond_de

    .line 204
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    move-result-object p3

    .line 208
    check-cast p3, Landroid/content/pm/Signature;

    .line 210
    invoke-virtual {p3}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 213
    move-result-object p3

    .line 214
    invoke-static {p3}, Landroidx/core/content/pm/PackageInfoCompat;->computeSHA256Digest([B)[B

    .line 217
    move-result-object p3

    .line 218
    aput-object p3, p1, p0

    .line 220
    add-int/lit8 p0, p0, 0x1

    .line 222
    goto :goto_c5

    .line 223
    :cond_de
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 226
    move-result-object p0

    .line 227
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    move-result p3

    .line 231
    if-eqz p3, :cond_125

    .line 233
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    move-result-object p0

    .line 237
    check-cast p0, [B

    .line 239
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    move-result-object p2

    .line 243
    check-cast p2, Ljava/lang/Integer;

    .line 245
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 248
    move-result p3

    .line 249
    if-eqz p3, :cond_118

    .line 251
    if-ne p3, v5, :cond_103

    .line 253
    invoke-static {p1, p0}, Landroidx/core/content/pm/PackageInfoCompat;->byteArrayContains([[B[B)Z

    .line 256
    move-result p0

    .line 257
    if-nez p0, :cond_124

    .line 259
    return v1

    .line 260
    :cond_103
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    .line 264
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object p1

    .line 277
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 280
    throw p0

    .line 281
    :cond_118
    new-instance p1, Landroid/content/pm/Signature;

    .line 283
    invoke-direct {p1, p0}, Landroid/content/pm/Signature;-><init>([B)V

    .line 286
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 289
    move-result p0

    .line 290
    if-nez p0, :cond_124

    .line 292
    return v1

    .line 293
    :cond_124
    return v5

    .line 294
    :cond_125
    :goto_125
    return v1
.end method
