.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4DrmsBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4DrmsBox.java"


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 6
    iput-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 8
    return-void
.end method


# virtual methods
.method public processData()V
    .registers 8

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_49

    .line 9
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x65

    .line 17
    if-eq v0, v1, :cond_13

    .line 19
    goto :goto_0

    .line 20
    :cond_13
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 29
    move-result v1

    .line 30
    const/16 v2, 0x73

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    if-ne v1, v2, :cond_25

    .line 36
    move v1, v4

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move v1, v3

    .line 39
    :goto_26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 42
    move-result v5

    .line 43
    const/16 v6, 0x64

    .line 45
    if-ne v5, v6, :cond_30

    .line 47
    move v5, v4

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v5, v3

    .line 50
    :goto_31
    and-int/2addr v1, v5

    .line 51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 54
    move-result v0

    .line 55
    if-ne v0, v2, :cond_39

    .line 57
    move v3, v4

    .line 58
    :cond_39
    and-int v0, v1, v3

    .line 60
    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 67
    move-result v1

    .line 68
    sub-int/2addr v1, v4

    .line 69
    add-int/lit8 v1, v1, -0x4

    .line 71
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 74
    :cond_49
    return-void
.end method
