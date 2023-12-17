.class public Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;
.super Lorg/jaudiotagger/audio/asf/data/Chunk;
.source "StreamBitratePropertiesChunk.java"


# instance fields
.field private final bitRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final streamNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/audio/asf/data/Chunk;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;->bitRates:Ljava/util/List;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;->streamNumbers:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public addBitrateRecord(IJ)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;->streamNumbers:Ljava/util/List;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;->bitRates:Ljava/util/List;

    .line 12
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public getAvgBitrate(I)J
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;->streamNumbers:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 10
    move-result p1

    .line 11
    const/4 v0, -0x1

    .line 12
    if-ne p1, v0, :cond_10

    .line 14
    const-wide/16 v0, -0x1

    .line 16
    goto :goto_1c

    .line 17
    :cond_10
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;->bitRates:Ljava/util/List;

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Long;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 28
    move-result-wide v0

    .line 29
    :goto_1c
    return-wide v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;->bitRates:Ljava/util/List;

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_3e

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, "  |-> Stream no. \""

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;->streamNumbers:Ljava/util/List;

    .line 29
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "\" has an average bitrate of \""

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;->bitRates:Ljava/util/List;

    .line 43
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    const/16 v2, 0x22

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    sget-object v2, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 62
    goto :goto_a

    .line 63
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method
