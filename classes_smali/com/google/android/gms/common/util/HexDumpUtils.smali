.class public final Lcom/google/android/gms/common/util/HexDumpUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([BIIZ)Ljava/lang/String;
    .registers 15
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    if-eqz p0, :cond_c1

    .line 3
    array-length v0, p0

    .line 4
    if-eqz v0, :cond_c1

    .line 6
    if-ltz p1, :cond_c1

    .line 8
    if-lez p2, :cond_c1

    .line 10
    add-int v0, p1, p2

    .line 12
    array-length v1, p0

    .line 13
    if-le v0, v1, :cond_10

    .line 15
    goto/16 :goto_c1

    .line 17
    :cond_10
    const/16 v0, 0x39

    .line 19
    if-eqz p3, :cond_16

    .line 21
    const/16 v0, 0x4b

    .line 23
    :cond_16
    add-int/lit8 v1, p2, 0x10

    .line 25
    const/4 v2, 0x1

    .line 26
    sub-int/2addr v1, v2

    .line 27
    const/16 v3, 0x10

    .line 29
    div-int/2addr v1, v3

    .line 30
    mul-int/2addr v1, v0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 36
    const/4 v1, 0x0

    .line 37
    move v4, p2

    .line 38
    move v5, v1

    .line 39
    move v6, v5

    .line 40
    :goto_27
    if-lez v4, :cond_bc

    .line 42
    const/16 v7, 0x8

    .line 44
    if-nez v5, :cond_56

    .line 46
    const/high16 v6, 0x10000

    .line 48
    if-ge p2, v6, :cond_43

    .line 50
    new-array v6, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v8

    .line 56
    aput-object v8, v6, v1

    .line 58
    const-string v8, "%04X:"

    .line 60
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    goto :goto_54

    .line 68
    :cond_43
    new-array v6, v2, [Ljava/lang/Object;

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v8

    .line 74
    aput-object v8, v6, v1

    .line 76
    const-string v8, "%08X:"

    .line 78
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :goto_54
    move v6, p1

    .line 86
    goto :goto_5d

    .line 87
    :cond_56
    if-ne v5, v7, :cond_5d

    .line 89
    const-string v8, " -"

    .line 91
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_5d
    :goto_5d
    new-array v8, v2, [Ljava/lang/Object;

    .line 96
    aget-byte v9, p0, p1

    .line 98
    and-int/lit16 v9, v9, 0xff

    .line 100
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v9

    .line 104
    aput-object v9, v8, v1

    .line 106
    const-string v9, " %02X"

    .line 108
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v4, v4, -0x1

    .line 117
    add-int/lit8 v5, v5, 0x1

    .line 119
    if-eqz p3, :cond_ae

    .line 121
    if-eq v5, v3, :cond_7c

    .line 123
    if-nez v4, :cond_ae

    .line 125
    :cond_7c
    rsub-int/lit8 v8, v5, 0x10

    .line 127
    if-lez v8, :cond_8b

    .line 129
    move v9, v1

    .line 130
    :goto_81
    if-ge v9, v8, :cond_8b

    .line 132
    const-string v10, "   "

    .line 134
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v9, v9, 0x1

    .line 139
    goto :goto_81

    .line 140
    :cond_8b
    const-string v9, "  "

    .line 142
    if-lt v8, v7, :cond_92

    .line 144
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_92
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    move v7, v1

    .line 151
    :goto_96
    if-ge v7, v5, :cond_ae

    .line 153
    add-int v8, v6, v7

    .line 155
    aget-byte v8, p0, v8

    .line 157
    int-to-char v8, v8

    .line 158
    const/16 v9, 0x20

    .line 160
    if-lt v8, v9, :cond_a6

    .line 162
    const/16 v9, 0x7e

    .line 164
    if-gt v8, v9, :cond_a6

    .line 166
    goto :goto_a8

    .line 167
    :cond_a6
    const/16 v8, 0x2e

    .line 169
    :goto_a8
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v7, v7, 0x1

    .line 174
    goto :goto_96

    .line 175
    :cond_ae
    if-eq v5, v3, :cond_b2

    .line 177
    if-nez v4, :cond_b8

    .line 179
    :cond_b2
    const/16 v5, 0xa

    .line 181
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    move v5, v1

    .line 185
    :cond_b8
    add-int/lit8 p1, p1, 0x1

    .line 187
    goto/16 :goto_27

    .line 189
    :cond_bc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :cond_c1
    :goto_c1
    const/4 p0, 0x0

    .line 195
    return-object p0
.end method
