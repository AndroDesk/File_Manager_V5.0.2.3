.class public Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.super Ljava/lang/Object;
.source "AbstractMp4Box.java"


# instance fields
.field public dataBuffer:Ljava/nio/ByteBuffer;

.field public header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 3
    return-object v0
.end method

.method public getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 3
    return-object v0
.end method
