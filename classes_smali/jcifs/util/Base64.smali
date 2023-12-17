.class public Ljcifs/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_a

    .line 8
    new-array p0, v1, [B

    .line 10
    return-object p0

    .line 11
    :cond_a
    add-int/lit8 v2, v0, -0x2

    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x3d

    .line 19
    if-ne v2, v3, :cond_16

    .line 21
    const/4 v2, 0x2

    .line 22
    goto :goto_21

    .line 23
    :cond_16
    add-int/lit8 v2, v0, -0x1

    .line 25
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 28
    move-result v2

    .line 29
    if-ne v2, v3, :cond_20

    .line 31
    const/4 v2, 0x1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v2, v1

    .line 34
    :goto_21
    mul-int/lit8 v3, v0, 0x3

    .line 36
    div-int/lit8 v3, v3, 0x4

    .line 38
    sub-int/2addr v3, v2

    .line 39
    new-array v2, v3, [B

    .line 41
    move v4, v1

    .line 42
    :goto_29
    if-lt v1, v0, :cond_2c

    .line 44
    return-object v2

    .line 45
    :cond_2c
    add-int/lit8 v5, v1, 0x1

    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 50
    move-result v1

    .line 51
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 53
    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(I)I

    .line 56
    move-result v1

    .line 57
    and-int/lit16 v1, v1, 0xff

    .line 59
    shl-int/lit8 v1, v1, 0x12

    .line 61
    add-int/lit8 v7, v5, 0x1

    .line 63
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 66
    move-result v5

    .line 67
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    .line 70
    move-result v5

    .line 71
    and-int/lit16 v5, v5, 0xff

    .line 73
    shl-int/lit8 v5, v5, 0xc

    .line 75
    or-int/2addr v1, v5

    .line 76
    add-int/lit8 v5, v7, 0x1

    .line 78
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 81
    move-result v7

    .line 82
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    .line 85
    move-result v7

    .line 86
    and-int/lit16 v7, v7, 0xff

    .line 88
    shl-int/lit8 v7, v7, 0x6

    .line 90
    or-int/2addr v1, v7

    .line 91
    add-int/lit8 v7, v5, 0x1

    .line 93
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 96
    move-result v5

    .line 97
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    .line 100
    move-result v5

    .line 101
    and-int/lit16 v5, v5, 0xff

    .line 103
    or-int/2addr v1, v5

    .line 104
    add-int/lit8 v5, v4, 0x1

    .line 106
    ushr-int/lit8 v6, v1, 0x10

    .line 108
    int-to-byte v6, v6

    .line 109
    aput-byte v6, v2, v4

    .line 111
    if-ge v5, v3, :cond_7a

    .line 113
    add-int/lit8 v4, v5, 0x1

    .line 115
    ushr-int/lit8 v6, v1, 0x8

    .line 117
    and-int/lit16 v6, v6, 0xff

    .line 119
    int-to-byte v6, v6

    .line 120
    aput-byte v6, v2, v5

    .line 122
    goto :goto_7b

    .line 123
    :cond_7a
    move v4, v5

    .line 124
    :goto_7b
    if-ge v4, v3, :cond_85

    .line 126
    add-int/lit8 v5, v4, 0x1

    .line 128
    and-int/lit16 v1, v1, 0xff

    .line 130
    int-to-byte v1, v1

    .line 131
    aput-byte v1, v2, v4

    .line 133
    move v4, v5

    .line 134
    :cond_85
    move v1, v7

    .line 135
    goto :goto_29
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 8

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_6

    .line 4
    const-string p0, ""

    .line 6
    return-object p0

    .line 7
    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    .line 9
    int-to-double v2, v0

    .line 10
    const-wide/high16 v4, 0x4008000000000000L  # 3.0

    .line 12
    div-double/2addr v2, v4

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 16
    move-result-wide v2

    .line 17
    double-to-int v2, v2

    .line 18
    mul-int/lit8 v2, v2, 0x4

    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 23
    rem-int/lit8 v2, v0, 0x3

    .line 25
    sub-int/2addr v0, v2

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_1a
    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 29
    if-lt v3, v0, :cond_80

    .line 31
    if-nez v2, :cond_25

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_25
    const/4 v0, 0x1

    .line 39
    if-ne v2, v0, :cond_4a

    .line 41
    aget-byte p0, p0, v3

    .line 43
    and-int/lit16 p0, p0, 0xff

    .line 45
    shl-int/lit8 p0, p0, 0x4

    .line 47
    ushr-int/lit8 v0, p0, 0x6

    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    .line 52
    move-result v0

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 56
    and-int/lit8 p0, p0, 0x3f

    .line 58
    invoke-virtual {v4, p0}, Ljava/lang/String;->charAt(I)C

    .line 61
    move-result p0

    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    const-string p0, "=="

    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_4a
    add-int/lit8 v0, v3, 0x1

    .line 77
    aget-byte v2, p0, v3

    .line 79
    and-int/lit16 v2, v2, 0xff

    .line 81
    shl-int/lit8 v2, v2, 0x8

    .line 83
    aget-byte p0, p0, v0

    .line 85
    and-int/lit16 p0, p0, 0xff

    .line 87
    or-int/2addr p0, v2

    .line 88
    shl-int/lit8 p0, p0, 0x2

    .line 90
    ushr-int/lit8 v0, p0, 0xc

    .line 92
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    .line 95
    move-result v0

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    ushr-int/lit8 v0, p0, 0x6

    .line 101
    and-int/lit8 v0, v0, 0x3f

    .line 103
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    .line 106
    move-result v0

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 110
    and-int/lit8 p0, p0, 0x3f

    .line 112
    invoke-virtual {v4, p0}, Ljava/lang/String;->charAt(I)C

    .line 115
    move-result p0

    .line 116
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    const-string p0, "="

    .line 121
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :cond_80
    add-int/lit8 v5, v3, 0x1

    .line 131
    aget-byte v3, p0, v3

    .line 133
    and-int/lit16 v3, v3, 0xff

    .line 135
    shl-int/lit8 v3, v3, 0x10

    .line 137
    add-int/lit8 v6, v5, 0x1

    .line 139
    aget-byte v5, p0, v5

    .line 141
    and-int/lit16 v5, v5, 0xff

    .line 143
    shl-int/lit8 v5, v5, 0x8

    .line 145
    or-int/2addr v3, v5

    .line 146
    add-int/lit8 v5, v6, 0x1

    .line 148
    aget-byte v6, p0, v6

    .line 150
    and-int/lit16 v6, v6, 0xff

    .line 152
    or-int/2addr v3, v6

    .line 153
    ushr-int/lit8 v6, v3, 0x12

    .line 155
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 158
    move-result v6

    .line 159
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    ushr-int/lit8 v6, v3, 0xc

    .line 164
    and-int/lit8 v6, v6, 0x3f

    .line 166
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 169
    move-result v6

    .line 170
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 173
    ushr-int/lit8 v6, v3, 0x6

    .line 175
    and-int/lit8 v6, v6, 0x3f

    .line 177
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 180
    move-result v6

    .line 181
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 184
    and-int/lit8 v3, v3, 0x3f

    .line 186
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 189
    move-result v3

    .line 190
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 193
    move v3, v5

    .line 194
    goto/16 :goto_1a
.end method
