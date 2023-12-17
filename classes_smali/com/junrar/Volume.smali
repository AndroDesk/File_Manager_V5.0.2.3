.class public Lcom/junrar/Volume;
.super Ljava/lang/Object;
.source "Volume.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-virtual {p1}, Lcom/junrar/unpack/ComprDataIO;->getSubHeader()Lcom/junrar/rarfile/FileHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/junrar/rarfile/FileHeader;->getUnpVersion()B

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_28

    invoke-virtual {v0}, Lcom/junrar/rarfile/FileHeader;->getFileCRC()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    invoke-virtual {p1}, Lcom/junrar/unpack/ComprDataIO;->getPackedCRC()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/junrar/rarfile/FileHeader;->getFileCRC()I

    move-result v0

    not-int v0, v0

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_28

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Data Bad CRC"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_28
    invoke-virtual {p0}, Lcom/junrar/Archive;->getMainHeader()Lcom/junrar/rarfile/MainHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/junrar/rarfile/MainHeader;->isNewNumbering()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/junrar/Archive;->isOldFormat()Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_3d

    :cond_3b
    move v0, v2

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v0, v1

    :goto_3e
    invoke-virtual {p0}, Lcom/junrar/Archive;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/junrar/Volume;->nextVolumeName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_73

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/junrar/Archive;->getUnrarCallback()Lcom/junrar/UnrarCallback;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-interface {v0, v3}, Lcom/junrar/UnrarCallback;->isNextVolumeReady(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_5e

    return v2

    :cond_5e
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_65

    return v2

    :cond_65
    invoke-virtual {p0, v3}, Lcom/junrar/Archive;->setFile(Ljava/io/File;)V

    invoke-virtual {p0}, Lcom/junrar/Archive;->nextFileHeader()Lcom/junrar/rarfile/FileHeader;

    move-result-object p0

    if-nez p0, :cond_6f

    return v2

    :cond_6f
    invoke-virtual {p1, p0}, Lcom/junrar/unpack/ComprDataIO;->init(Lcom/junrar/rarfile/FileHeader;)V

    return v1

    :cond_73
    return v2
.end method

.method private static nextVolumeName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    const/16 v0, 0x30

    const/16 v1, 0x3a

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_69

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 v4, p1, -0x1

    :goto_e
    if-ltz v4, :cond_1d

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/junrar/Volume;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_1d

    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    :cond_1d
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v4, -0x1

    :goto_21
    if-ltz v6, :cond_30

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/junrar/Volume;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_30

    add-int/lit8 v6, v6, -0x1

    goto :goto_21

    :cond_30
    if-gez v6, :cond_33

    return-object v2

    :cond_33
    add-int/lit8 v6, v6, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0, v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    new-array v7, v4, [C

    invoke-virtual {p0, v6, v5, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    add-int/lit8 v4, v4, -0x1

    :goto_47
    if-ltz v4, :cond_57

    aget-char v3, v7, v4

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    aput-char v3, v7, v4

    if-ne v3, v1, :cond_57

    aput-char v0, v7, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_47

    :cond_57
    if-gez v4, :cond_5e

    const/16 v0, 0x31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5e
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v4, 0x4

    if-le p1, v4, :cond_c1

    add-int/lit8 v4, p1, -0x4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_7b

    goto :goto_c1

    :cond_7b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, -0x3

    invoke-virtual {v2, p0, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/junrar/Volume;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_b7

    add-int/lit8 v5, v4, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/junrar/Volume;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_9e

    goto :goto_b7

    :cond_9e
    const/4 v5, 0x3

    new-array v5, v5, [C

    invoke-virtual {p0, v4, p1, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    const/4 p0, 0x2

    :goto_a5
    aget-char p1, v5, p0

    add-int/lit8 p1, p1, 0x1

    int-to-char p1, p1

    aput-char p1, v5, p0

    if-ne p1, v1, :cond_b3

    aput-char v0, v5, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_a5

    :cond_b3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_bc

    :cond_b7
    :goto_b7
    const-string p0, "r00"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_bc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c1
    :goto_c1
    return-object v2
.end method
