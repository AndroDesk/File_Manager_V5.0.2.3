.class Lcom/junrar/rarfile/FileNameDecoder;
.super Ljava/lang/Object;
.source "FileNameDecoder.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BI)Ljava/lang/String;
    .registers 11

    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, p1}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_e
    array-length v5, p0

    if-ge v0, v5, :cond_a6

    const/16 v5, 0x8

    if-nez v2, :cond_1d

    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v0}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v3

    move v0, v2

    move v2, v5

    :cond_1d
    shr-int/lit8 v6, v3, 0x6

    if-eqz v6, :cond_91

    const/4 v7, 0x1

    if-eq v6, v7, :cond_83

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6d

    const/4 v5, 0x3

    if-eq v6, v5, :cond_2c

    goto/16 :goto_9e

    :cond_2c
    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v0

    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_59

    add-int/lit8 v6, v5, 0x1

    invoke-static {p0, v5}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v5

    and-int/lit8 v0, v0, 0x7f

    add-int/2addr v0, v7

    :goto_3f
    if-lez v0, :cond_57

    array-length v7, p0

    if-ge v4, v7, :cond_57

    invoke-static {p0, v4}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v7

    add-int/2addr v7, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v8, p1, 0x8

    add-int/2addr v8, v7

    int-to-char v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_57
    move v0, v6

    goto :goto_9e

    :cond_59
    add-int/lit8 v0, v0, 0x2

    :goto_5b
    if-lez v0, :cond_9d

    array-length v6, p0

    if-ge v4, v6, :cond_9d

    invoke-static {p0, v4}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    :cond_6d
    invoke-static {p0, v0}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v6

    add-int/lit8 v7, v0, 0x1

    invoke-static {p0, v7}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v7

    shl-int/lit8 v5, v7, 0x8

    add-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_9e

    :cond_83
    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v0

    shl-int/lit8 v6, p1, 0x8

    add-int/2addr v0, v6

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9b

    :cond_91
    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0}, Lcom/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_9b
    add-int/lit8 v4, v4, 0x1

    :cond_9d
    move v0, v5

    :goto_9e
    shl-int/lit8 v3, v3, 0x2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v2, v2, -0x2

    goto/16 :goto_e

    :cond_a6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getChar([BI)I
    .registers 2

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
