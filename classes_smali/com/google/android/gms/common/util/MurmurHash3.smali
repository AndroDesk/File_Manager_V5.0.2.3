.class public Lcom/google/android/gms/common/util/MurmurHash3;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static murmurhash3_x86_32([BIII)I
    .registers 9
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    and-int/lit8 v0, p2, -0x4

    .line 3
    add-int/2addr v0, p1

    .line 4
    :goto_3
    const v1, 0x1b873593

    .line 7
    const v2, -0x3361d2af  # -8.2930312E7f

    .line 10
    if-ge p1, v0, :cond_3e

    .line 12
    aget-byte v3, p0, p1

    .line 14
    and-int/lit16 v3, v3, 0xff

    .line 16
    add-int/lit8 v4, p1, 0x1

    .line 18
    aget-byte v4, p0, v4

    .line 20
    and-int/lit16 v4, v4, 0xff

    .line 22
    shl-int/lit8 v4, v4, 0x8

    .line 24
    or-int/2addr v3, v4

    .line 25
    add-int/lit8 v4, p1, 0x2

    .line 27
    aget-byte v4, p0, v4

    .line 29
    and-int/lit16 v4, v4, 0xff

    .line 31
    shl-int/lit8 v4, v4, 0x10

    .line 33
    or-int/2addr v3, v4

    .line 34
    add-int/lit8 v4, p1, 0x3

    .line 36
    aget-byte v4, p0, v4

    .line 38
    shl-int/lit8 v4, v4, 0x18

    .line 40
    or-int/2addr v3, v4

    .line 41
    mul-int/2addr v3, v2

    .line 42
    shl-int/lit8 v2, v3, 0xf

    .line 44
    ushr-int/lit8 v3, v3, 0x11

    .line 46
    or-int/2addr v2, v3

    .line 47
    mul-int/2addr v2, v1

    .line 48
    xor-int/2addr p3, v2

    .line 49
    shl-int/lit8 v1, p3, 0xd

    .line 51
    ushr-int/lit8 p3, p3, 0x13

    .line 53
    or-int/2addr p3, v1

    .line 54
    mul-int/lit8 p3, p3, 0x5

    .line 56
    const v1, -0x19ab949c

    .line 59
    add-int/2addr p3, v1

    .line 60
    add-int/lit8 p1, p1, 0x4

    .line 62
    goto :goto_3

    .line 63
    :cond_3e
    const/4 p1, 0x0

    .line 64
    and-int/lit8 v3, p2, 0x3

    .line 66
    const/4 v4, 0x1

    .line 67
    if-eq v3, v4, :cond_5c

    .line 69
    const/4 v4, 0x2

    .line 70
    if-eq v3, v4, :cond_53

    .line 72
    const/4 p1, 0x3

    .line 73
    if-eq v3, p1, :cond_4b

    .line 75
    goto :goto_69

    .line 76
    :cond_4b
    add-int/lit8 p1, v0, 0x2

    .line 78
    aget-byte p1, p0, p1

    .line 80
    and-int/lit16 p1, p1, 0xff

    .line 82
    shl-int/lit8 p1, p1, 0x10

    .line 84
    :cond_53
    add-int/lit8 v3, v0, 0x1

    .line 86
    aget-byte v3, p0, v3

    .line 88
    and-int/lit16 v3, v3, 0xff

    .line 90
    shl-int/lit8 v3, v3, 0x8

    .line 92
    or-int/2addr p1, v3

    .line 93
    :cond_5c
    aget-byte p0, p0, v0

    .line 95
    and-int/lit16 p0, p0, 0xff

    .line 97
    or-int/2addr p0, p1

    .line 98
    mul-int/2addr p0, v2

    .line 99
    shl-int/lit8 p1, p0, 0xf

    .line 101
    ushr-int/lit8 p0, p0, 0x11

    .line 103
    or-int/2addr p0, p1

    .line 104
    mul-int/2addr p0, v1

    .line 105
    xor-int/2addr p3, p0

    .line 106
    :goto_69
    xor-int p0, p3, p2

    .line 108
    ushr-int/lit8 p1, p0, 0x10

    .line 110
    xor-int/2addr p0, p1

    .line 111
    const p1, -0x7a143595

    .line 114
    mul-int/2addr p0, p1

    .line 115
    ushr-int/lit8 p1, p0, 0xd

    .line 117
    xor-int/2addr p0, p1

    .line 118
    const p1, -0x3d4d51cb

    .line 121
    mul-int/2addr p0, p1

    .line 122
    ushr-int/lit8 p1, p0, 0x10

    .line 124
    xor-int/2addr p0, p1

    .line 125
    return p0
.end method
