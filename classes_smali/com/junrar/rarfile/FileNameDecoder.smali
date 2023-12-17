.class Lcom/junrar/rarfile/FileNameDecoder;
.super Ljava/lang/Object;
.source "FileNameDecoder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BI)Ljava/lang/String;
    .registers 11

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 3
    invoke-static {p0, p1}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    .line 6
    move-result p1

    .line 7
    new-instance v1, Ljava/lang/StringBuffer;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    move v4, v3

    .line 15
    :goto_e
    array-length v5, p0

    .line 16
    if-ge v0, v5, :cond_a6

    .line 18
    const/16 v5, 0x8

    .line 20
    if-nez v2, :cond_1d

    .line 22
    add-int/lit8 v2, v0, 0x1

    .line 24
    invoke-static {p0, v0}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    .line 27
    move-result v3

    .line 28
    move v0, v2

    .line 29
    move v2, v5

    .line 30
    :cond_1d
    shr-int/lit8 v6, v3, 0x6

    .line 32
    if-eqz v6, :cond_91

    .line 34
    const/4 v7, 0x1

    .line 35
    if-eq v6, v7, :cond_83

    .line 37
    const/4 v7, 0x2

    .line 38
    if-eq v6, v7, :cond_6d

    .line 40
    const/4 v5, 0x3

    .line 41
    if-eq v6, v5, :cond_2c

    .line 43
    goto/16 :goto_9e

    .line 45
    :cond_2c
    add-int/lit8 v5, v0, 0x1

    .line 47
    invoke-static {p0, v0}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    .line 50
    move-result v0

    .line 51
    and-int/lit16 v6, v0, 0x80

    .line 53
    if-eqz v6, :cond_59

    .line 55
    add-int/lit8 v6, v5, 0x1

    .line 57
    invoke-static {p0, v5}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    .line 60
    move-result v5

    .line 61
    and-int/lit8 v0, v0, 0x7f

    .line 63
    add-int/2addr v0, v7

    .line 64
    :goto_3f
    if-lez v0, :cond_57

    .line 66
    array-length v7, p0

    .line 67
    if-ge v4, v7, :cond_57

    .line 69
    invoke-static {p0, v4}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    .line 72
    move-result v7

    .line 73
    add-int/2addr v7, v5

    .line 74
    and-int/lit16 v7, v7, 0xff

    .line 76
    shl-int/lit8 v8, p1, 0x8

    .line 78
    add-int/2addr v8, v7

    .line 79
    int-to-char v7, v8

    .line 80
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    add-int/lit8 v0, v0, -0x1

    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 87
    goto :goto_3f

    .line 88
    :cond_57
    move v0, v6

    .line 89
    goto :goto_9e

    .line 90
    :cond_59
    add-int/lit8 v0, v0, 0x2

    .line 92
    :goto_5b
    if-lez v0, :cond_9d

    .line 94
    array-length v6, p0

    .line 95
    if-ge v4, v6, :cond_9d

    .line 97
    invoke-static {p0, v4}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    .line 100
    move-result v6

    .line 101
    int-to-char v6, v6

    .line 102
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 105
    add-int/lit8 v0, v0, -0x1

    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 109
    goto :goto_5b

    .line 110
    :cond_6d
    invoke-static {p0, v0}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    .line 113
    move-result v6

    .line 114
    add-int/lit8 v7, v0, 0x1

    .line 116
    invoke-static {p0, v7}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    .line 119
    move-result v7

    .line 120
    shl-int/lit8 v5, v7, 0x8

    .line 122
    add-int/2addr v5, v6

    .line 123
    int-to-char v5, v5

    .line 124
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 127
    add-int/lit8 v4, v4, 0x1

    .line 129
    add-int/lit8 v0, v0, 0x2

    .line 131
    goto :goto_9e

    .line 132
    :cond_83
    add-int/lit8 v5, v0, 0x1

    .line 134
    invoke-static {p0, v0}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    .line 137
    move-result v0

    .line 138
    shl-int/lit8 v6, p1, 0x8

    .line 140
    add-int/2addr v0, v6

    .line 141
    int-to-char v0, v0

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 145
    goto :goto_9b

    .line 146
    :cond_91
    add-int/lit8 v5, v0, 0x1

    .line 148
    invoke-static {p0, v0}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    .line 151
    move-result v0

    .line 152
    int-to-char v0, v0

    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    :goto_9b
    add-int/lit8 v4, v4, 0x1

    .line 158
    :cond_9d
    move v0, v5

    .line 159
    :goto_9e
    shl-int/lit8 v3, v3, 0x2

    .line 161
    and-int/lit16 v3, v3, 0xff

    .line 163
    add-int/lit8 v2, v2, -0x2

    .line 165
    goto/16 :goto_e

    .line 167
    :cond_a6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 170
    move-result-object p0

    .line 171
    return-object p0
.end method

.method private static getChar([BI)I
    .registers 2

    .line 1
    aget-byte p0, p0, p1

    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 5
    return p0
.end method
