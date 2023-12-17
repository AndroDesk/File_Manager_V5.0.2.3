.class public Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;
.super Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;
.source "AsfExtHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader<",
        "Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;",
        ">;"
    }
.end annotation


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
    sget-object v2, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 7
    aput-object v2, v0, v1

    .line 9
    sput-object v0, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/audio/asf/io/ChunkReader;",
            ">;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;-><init>(Ljava/util/List;Z)V

    .line 4
    return-void
.end method


# virtual methods
.method public canFail()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;
    .registers 5

    .line 2
    invoke-static {p4}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-static {p4}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 4
    invoke-static {p4}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 5
    new-instance p4, Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;

    invoke-direct {p4, p1, p2, p3}, Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;-><init>(JLjava/math/BigInteger;)V

    return-object p4
.end method

.method public bridge synthetic createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;->createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;

    move-result-object p1

    return-object p1
.end method

.method public getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 9
    return-object v0
.end method
