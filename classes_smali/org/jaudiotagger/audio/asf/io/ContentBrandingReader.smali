.class public Lorg/jaudiotagger/audio/asf/io/ContentBrandingReader;
.super Ljava/lang/Object;
.source "ContentBrandingReader.java"

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
    sget-object v2, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 7
    aput-object v2, v0, v1

    .line 9
    sput-object v0, Lorg/jaudiotagger/audio/asf/io/ContentBrandingReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

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


# virtual methods
.method public canFail()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/ContentBrandingReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

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
    .registers 12

    .line 1
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 8
    move-result-wide v0

    .line 9
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 12
    move-result-wide v2

    .line 13
    invoke-static {p2, v2, v3}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBinary(Ljava/io/InputStream;J)[B

    .line 16
    move-result-object v2

    .line 17
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 20
    move-result-wide v3

    .line 21
    new-instance v5, Ljava/lang/String;

    .line 23
    invoke-static {p2, v3, v4}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBinary(Ljava/io/InputStream;J)[B

    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 30
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 33
    move-result-wide v3

    .line 34
    new-instance v6, Ljava/lang/String;

    .line 36
    invoke-static {p2, v3, v4}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBinary(Ljava/io/InputStream;J)[B

    .line 39
    move-result-object p2

    .line 40
    invoke-direct {v6, p2}, Ljava/lang/String;-><init>([B)V

    .line 43
    new-instance p2, Lorg/jaudiotagger/audio/asf/data/ContentBranding;

    .line 45
    invoke-direct {p2, p3, p4, p1}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;-><init>(JLjava/math/BigInteger;)V

    .line 48
    invoke-virtual {p2, v0, v1, v2}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->setImage(J[B)V

    .line 51
    invoke-virtual {p2, v5}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->setCopyRightURL(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2, v6}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->setBannerImageURL(Ljava/lang/String;)V

    .line 57
    return-object p2
.end method
