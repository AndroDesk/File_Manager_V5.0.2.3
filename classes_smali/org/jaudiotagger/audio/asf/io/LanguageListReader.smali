.class public Lorg/jaudiotagger/audio/asf/io/LanguageListReader;
.super Ljava/lang/Object;
.source "LanguageListReader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/asf/io/ChunkReader;


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 7
    aput-object v2, v0, v1

    .line 9
    sput-object v0, Lorg/jaudiotagger/audio/asf/io/LanguageListReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/LanguageListReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

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
    .registers 7

    .line 1
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 8
    move-result v0

    .line 9
    new-instance v1, Lorg/jaudiotagger/audio/asf/data/LanguageList;

    .line 11
    invoke-direct {v1, p3, p4, p1}, Lorg/jaudiotagger/audio/asf/data/LanguageList;-><init>(JLjava/math/BigInteger;)V

    .line 14
    const/4 p1, 0x0

    .line 15
    :goto_e
    if-ge p1, v0, :cond_20

    .line 17
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    .line 20
    move-result p3

    .line 21
    and-int/lit16 p3, p3, 0xff

    .line 23
    invoke-static {p2, p3}, Lorg/jaudiotagger/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    .line 26
    move-result-object p3

    .line 27
    invoke-virtual {v1, p3}, Lorg/jaudiotagger/audio/asf/data/LanguageList;->addLanguage(Ljava/lang/String;)V

    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 32
    goto :goto_e

    .line 33
    :cond_20
    return-object v1
.end method
