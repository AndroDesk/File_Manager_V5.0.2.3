.class public Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PacketStartAndLength"
.end annotation


# instance fields
.field private length:Ljava/lang/Integer;

.field private startPosition:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->startPosition:Ljava/lang/Integer;

    .line 11
    iput-object v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->length:Ljava/lang/Integer;

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->startPosition:Ljava/lang/Integer;

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->length:Ljava/lang/Integer;

    .line 25
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->length:Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStartPosition()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->startPosition:Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setLength(I)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->length:Ljava/lang/Integer;

    .line 7
    return-void
.end method

.method public setStartPosition(I)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->startPosition:Ljava/lang/Integer;

    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "NextPkt(start:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->startPosition:Ljava/lang/Integer;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ":length:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->length:Ljava/lang/Integer;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "),"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
