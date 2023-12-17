.class public Lorg/jaudiotagger/audio/asf/io/ContentDescriptionReader;
.super Ljava/lang/Object;
.source "ContentDescriptionReader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/asf/io/ChunkReader;


# static fields
.field private static final APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 4
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    sput-object v0, Lorg/jaudiotagger/audio/asf/io/ContentDescriptionReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private getStringSizes(Ljava/io/InputStream;)[I
    .registers 6

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v1, v0, [I

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_4
    if-ge v2, v0, :cond_f

    .line 7
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 10
    move-result v3

    .line 11
    aput v3, v1, v2

    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 15
    goto :goto_4

    .line 16
    :cond_f
    return-object v1
.end method


# virtual methods
.method public canFail()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/ContentDescriptionReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 9
    return-object v0
.end method

.method public read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/Chunk;
    .registers 11

    .line 1
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/asf/io/ContentDescriptionReader;->getStringSizes(Ljava/io/InputStream;)[I

    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    new-array v2, v1, [Ljava/lang/String;

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_d
    if-ge v4, v1, :cond_1c

    .line 16
    aget v5, v0, v4

    .line 18
    if-lez v5, :cond_19

    .line 20
    invoke-static {p2, v5}, Lorg/jaudiotagger/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    .line 23
    move-result-object v5

    .line 24
    aput-object v5, v2, v4

    .line 26
    :cond_19
    add-int/lit8 v4, v4, 0x1

    .line 28
    goto :goto_d

    .line 29
    :cond_1c
    new-instance p2, Lorg/jaudiotagger/audio/asf/data/ContentDescription;

    .line 31
    invoke-direct {p2, p3, p4, p1}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;-><init>(JLjava/math/BigInteger;)V

    .line 34
    aget p1, v0, v3

    .line 36
    if-lez p1, :cond_2a

    .line 38
    aget-object p1, v2, v3

    .line 40
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->setTitle(Ljava/lang/String;)V

    .line 43
    :cond_2a
    const/4 p1, 0x1

    .line 44
    aget p3, v0, p1

    .line 46
    if-lez p3, :cond_34

    .line 48
    aget-object p1, v2, p1

    .line 50
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->setAuthor(Ljava/lang/String;)V

    .line 53
    :cond_34
    const/4 p1, 0x2

    .line 54
    aget p3, v0, p1

    .line 56
    if-lez p3, :cond_3e

    .line 58
    aget-object p1, v2, p1

    .line 60
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->setCopyright(Ljava/lang/String;)V

    .line 63
    :cond_3e
    const/4 p1, 0x3

    .line 64
    aget p3, v0, p1

    .line 66
    if-lez p3, :cond_48

    .line 68
    aget-object p1, v2, p1

    .line 70
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->setComment(Ljava/lang/String;)V

    .line 73
    :cond_48
    const/4 p1, 0x4

    .line 74
    aget p3, v0, p1

    .line 76
    if-lez p3, :cond_52

    .line 78
    aget-object p1, v2, p1

    .line 80
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->setRating(Ljava/lang/String;)V

    .line 83
    :cond_52
    return-object p2
.end method
