.class public Lcom/google/android/gms/common/util/Hex;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# static fields
.field private static final zzgy:[C

.field private static final zzgz:[C


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0x10

    .line 3
    new-array v1, v0, [C

    .line 5
    fill-array-data v1, :array_12

    .line 8
    sput-object v1, Lcom/google/android/gms/common/util/Hex;->zzgy:[C

    .line 10
    new-array v0, v0, [C

    .line 12
    fill-array-data v0, :array_26

    .line 15
    sput-object v0, Lcom/google/android/gms/common/util/Hex;->zzgz:[C

    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_26
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToStringLowercase([B)Ljava/lang/String;
    .registers 8
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    shl-int/lit8 v0, v0, 0x1

    .line 4
    new-array v0, v0, [C

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_7
    array-length v3, p0

    .line 9
    if-ge v1, v3, :cond_23

    .line 11
    aget-byte v3, p0, v1

    .line 13
    and-int/lit16 v3, v3, 0xff

    .line 15
    add-int/lit8 v4, v2, 0x1

    .line 17
    sget-object v5, Lcom/google/android/gms/common/util/Hex;->zzgz:[C

    .line 19
    ushr-int/lit8 v6, v3, 0x4

    .line 21
    aget-char v6, v5, v6

    .line 23
    aput-char v6, v0, v2

    .line 25
    add-int/lit8 v2, v4, 0x1

    .line 27
    and-int/lit8 v3, v3, 0xf

    .line 29
    aget-char v3, v5, v3

    .line 31
    aput-char v3, v0, v4

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_7

    .line 36
    :cond_23
    new-instance p0, Ljava/lang/String;

    .line 38
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 41
    return-object p0
.end method

.method public static bytesToStringUppercase([B)Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/Hex;->bytesToStringUppercase([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToStringUppercase([BZ)Ljava/lang/String;
    .registers 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 2
    array-length v0, p0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    shl-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_30

    if-eqz p1, :cond_17

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_17

    .line 4
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_30

    .line 5
    :cond_17
    sget-object v3, Lcom/google/android/gms/common/util/Hex;->zzgy:[C

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v4, v3, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 7
    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .registers 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    rem-int/lit8 v1, v0, 0x2

    .line 7
    if-nez v1, :cond_23

    .line 9
    div-int/lit8 v1, v0, 0x2

    .line 11
    new-array v1, v1, [B

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    if-ge v2, v0, :cond_22

    .line 16
    div-int/lit8 v3, v2, 0x2

    .line 18
    add-int/lit8 v4, v2, 0x2

    .line 20
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    const/16 v5, 0x10

    .line 26
    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 29
    move-result v2

    .line 30
    int-to-byte v2, v2

    .line 31
    aput-byte v2, v1, v3

    .line 33
    move v2, v4

    .line 34
    goto :goto_d

    .line 35
    :cond_22
    return-object v1

    .line 36
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    const-string v0, "Hex string has odd number of characters"

    .line 40
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p0
.end method
