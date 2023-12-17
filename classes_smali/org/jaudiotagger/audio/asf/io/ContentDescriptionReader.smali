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

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/jaudiotagger/audio/asf/io/ContentDescriptionReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getStringSizes(Ljava/io/InputStream;)[I
    .registers 6

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_f

    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

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

    sget-object v0, Lorg/jaudiotagger/audio/asf/io/ContentDescriptionReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    return-object v0
.end method

.method public read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/Chunk;
    .registers 11

    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/asf/io/ContentDescriptionReader;->getStringSizes(Ljava/io/InputStream;)[I

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v1, :cond_1c

    aget v5, v0, v4

    if-lez v5, :cond_19

    invoke-static {p2, v5}, Lorg/jaudiotagger/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1c
    new-instance p2, Lorg/jaudiotagger/audio/asf/data/ContentDescription;

    invoke-direct {p2, p3, p4, p1}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;-><init>(JLjava/math/BigInteger;)V

    aget p1, v0, v3

    if-lez p1, :cond_2a

    aget-object p1, v2, v3

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->setTitle(Ljava/lang/String;)V

    :cond_2a
    const/4 p1, 0x1

    aget p3, v0, p1

    if-lez p3, :cond_34

    aget-object p1, v2, p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->setAuthor(Ljava/lang/String;)V

    :cond_34
    const/4 p1, 0x2

    aget p3, v0, p1

    if-lez p3, :cond_3e

    aget-object p1, v2, p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->setCopyright(Ljava/lang/String;)V

    :cond_3e
    const/4 p1, 0x3

    aget p3, v0, p1

    if-lez p3, :cond_48

    aget-object p1, v2, p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->setComment(Ljava/lang/String;)V

    :cond_48
    const/4 p1, 0x4

    aget p3, v0, p1

    if-lez p3, :cond_52

    aget-object p1, v2, p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->setRating(Ljava/lang/String;)V

    :cond_52
    return-object p2
.end method
