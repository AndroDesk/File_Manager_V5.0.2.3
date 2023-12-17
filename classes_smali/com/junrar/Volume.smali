.class public Lcom/junrar/Volume;
.super Ljava/lang/Object;
.source "Volume.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static isDigit(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static mergeArchive(Lcom/junrar/Archive;Lcom/junrar/unpack/ComprDataIO;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/ComprDataIO;->getSubHeader()Lcom/junrar/rarfile/FileHeader;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/junrar/rarfile/FileHeader;->getUnpVersion()B

    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x14

    .line 11
    if-lt v1, v2, :cond_28

    .line 13
    invoke-virtual {v0}, Lcom/junrar/rarfile/FileHeader;->getFileCRC()I

    .line 16
    move-result v1

    .line 17
    const/4 v2, -0x1

    .line 18
    if-eq v1, v2, :cond_28

    .line 20
    invoke-virtual {p1}, Lcom/junrar/unpack/ComprDataIO;->getPackedCRC()J

    .line 23
    move-result-wide v1

    .line 24
    invoke-virtual {v0}, Lcom/junrar/rarfile/FileHeader;->getFileCRC()I

    .line 27
    move-result v0

    .line 28
    not-int v0, v0

    .line 29
    int-to-long v3, v0

    .line 30
    cmp-long v0, v1, v3

    .line 32
    if-eqz v0, :cond_28

    .line 34
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 36
    const-string v1, "Data Bad CRC"

    .line 38
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    :cond_28
    invoke-virtual {p0}, Lcom/junrar/Archive;->getMainHeader()Lcom/junrar/rarfile/MainHeader;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/junrar/rarfile/MainHeader;->isNewNumbering()Z

    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x1

    .line 50
    const/4 v2, 0x0

    .line 51
    if-eqz v0, :cond_3d

    .line 53
    invoke-virtual {p0}, Lcom/junrar/Archive;->isOldFormat()Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3b

    .line 59
    goto :goto_3d

    .line 60
    :cond_3b
    move v0, v2

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    :goto_3d
    move v0, v1

    .line 63
    :goto_3e
    invoke-virtual {p0}, Lcom/junrar/Archive;->getFile()Ljava/io/File;

    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    invoke-static {v3, v0}, Lcom/junrar/Volume;->nextVolumeName(Ljava/lang/String;Z)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_73

    .line 77
    new-instance v3, Ljava/io/File;

    .line 79
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/junrar/Archive;->getUnrarCallback()Lcom/junrar/UnrarCallback;

    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_5e

    .line 88
    invoke-interface {v0, v3}, Lcom/junrar/UnrarCallback;->isNextVolumeReady(Ljava/io/File;)Z

    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_5e

    .line 94
    return v2

    .line 95
    :cond_5e
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_65

    .line 101
    return v2

    .line 102
    :cond_65
    invoke-virtual {p0, v3}, Lcom/junrar/Archive;->setFile(Ljava/io/File;)V

    .line 105
    invoke-virtual {p0}, Lcom/junrar/Archive;->nextFileHeader()Lcom/junrar/rarfile/FileHeader;

    .line 108
    move-result-object p0

    .line 109
    if-nez p0, :cond_6f

    .line 111
    return v2

    .line 112
    :cond_6f
    invoke-virtual {p1, p0}, Lcom/junrar/unpack/ComprDataIO;->init(Lcom/junrar/rarfile/FileHeader;)V

    .line 115
    return v1

    .line 116
    :cond_73
    return v2
.end method

.method private static nextVolumeName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    .line 1
    const/16 v0, 0x30

    .line 3
    const/16 v1, 0x3a

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez p1, :cond_69

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result p1

    .line 13
    add-int/lit8 v4, p1, -0x1

    .line 15
    :goto_e
    if-ltz v4, :cond_1d

    .line 17
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 20
    move-result v5

    .line 21
    invoke-static {v5}, Lcom/junrar/Volume;->isDigit(C)Z

    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_1d

    .line 27
    add-int/lit8 v4, v4, -0x1

    .line 29
    goto :goto_e

    .line 30
    :cond_1d
    add-int/lit8 v5, v4, 0x1

    .line 32
    add-int/lit8 v6, v4, -0x1

    .line 34
    :goto_21
    if-ltz v6, :cond_30

    .line 36
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 39
    move-result v7

    .line 40
    invoke-static {v7}, Lcom/junrar/Volume;->isDigit(C)Z

    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_30

    .line 46
    add-int/lit8 v6, v6, -0x1

    .line 48
    goto :goto_21

    .line 49
    :cond_30
    if-gez v6, :cond_33

    .line 51
    return-object v2

    .line 52
    :cond_33
    add-int/lit8 v6, v6, 0x1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 59
    invoke-virtual {v2, p0, v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 62
    sub-int/2addr v4, v6

    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 65
    new-array v7, v4, [C

    .line 67
    invoke-virtual {p0, v6, v5, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 70
    add-int/lit8 v4, v4, -0x1

    .line 72
    :goto_47
    if-ltz v4, :cond_57

    .line 74
    aget-char v3, v7, v4

    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 78
    int-to-char v3, v3

    .line 79
    aput-char v3, v7, v4

    .line 81
    if-ne v3, v1, :cond_57

    .line 83
    aput-char v0, v7, v4

    .line 85
    add-int/lit8 v4, v4, -0x1

    .line 87
    goto :goto_47

    .line 88
    :cond_57
    if-gez v4, :cond_5e

    .line 90
    const/16 v0, 0x31

    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    :cond_5e
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2, p0, v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :cond_69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 109
    move-result p1

    .line 110
    const/4 v4, 0x4

    .line 111
    if-le p1, v4, :cond_c1

    .line 113
    add-int/lit8 v4, p1, -0x4

    .line 115
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 118
    move-result v4

    .line 119
    const/16 v5, 0x2e

    .line 121
    if-eq v4, v5, :cond_7b

    .line 123
    goto :goto_c1

    .line 124
    :cond_7b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    add-int/lit8 v4, p1, -0x3

    .line 131
    invoke-virtual {v2, p0, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v5, v4, 0x1

    .line 136
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 139
    move-result v5

    .line 140
    invoke-static {v5}, Lcom/junrar/Volume;->isDigit(C)Z

    .line 143
    move-result v5

    .line 144
    if-eqz v5, :cond_b7

    .line 146
    add-int/lit8 v5, v4, 0x2

    .line 148
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 151
    move-result v5

    .line 152
    invoke-static {v5}, Lcom/junrar/Volume;->isDigit(C)Z

    .line 155
    move-result v5

    .line 156
    if-nez v5, :cond_9e

    .line 158
    goto :goto_b7

    .line 159
    :cond_9e
    const/4 v5, 0x3

    .line 160
    new-array v5, v5, [C

    .line 162
    invoke-virtual {p0, v4, p1, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 165
    const/4 p0, 0x2

    .line 166
    :goto_a5
    aget-char p1, v5, p0

    .line 168
    add-int/lit8 p1, p1, 0x1

    .line 170
    int-to-char p1, p1

    .line 171
    aput-char p1, v5, p0

    .line 173
    if-ne p1, v1, :cond_b3

    .line 175
    aput-char v0, v5, p0

    .line 177
    add-int/lit8 p0, p0, -0x1

    .line 179
    goto :goto_a5

    .line 180
    :cond_b3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 183
    goto :goto_bc

    .line 184
    :cond_b7
    :goto_b7
    const-string p0, "r00"

    .line 186
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :goto_bc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :cond_c1
    :goto_c1
    return-object v2
.end method
