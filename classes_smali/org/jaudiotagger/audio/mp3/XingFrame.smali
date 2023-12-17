.class public Lorg/jaudiotagger/audio/mp3/XingFrame;
.super Ljava/lang/Object;
.source "XingFrame.java"


# static fields
.field private static final BYTE_1:I = 0x0

.field private static final BYTE_2:I = 0x1

.field private static final BYTE_3:I = 0x2

.field private static final BYTE_4:I = 0x3

.field public static final MAX_BUFFER_SIZE_NEEDED_TO_READ_XING:I = 0xc0

.field private static final MPEG_VERSION_1_MODE_MONO_OFFSET:I = 0x15

.field private static final MPEG_VERSION_1_MODE_STEREO_OFFSET:I = 0x24

.field private static final MPEG_VERSION_2_MODE_MONO_OFFSET:I = 0xd

.field private static final MPEG_VERSION_2_MODE_STEREO_OFFSET:I = 0x15

.field private static final XING_AUDIOSIZE_BUFFER_SIZE:I = 0x4

.field private static final XING_CBR_ID:[B

.field private static final XING_FLAG_BUFFER_SIZE:I = 0x4

.field private static final XING_FRAMECOUNT_BUFFER_SIZE:I = 0x4

.field private static final XING_HEADER_BUFFER_SIZE:I = 0x78

.field private static final XING_IDENTIFIER_BUFFER_SIZE:I = 0x4

.field private static final XING_VBR_ID:[B

.field private static header:Ljava/nio/ByteBuffer;


# instance fields
.field private audioSize:I

.field private frameCount:I

.field private isAudioSizeEnabled:Z

.field private isFrameCountEnabled:Z

.field private lameFrame:Lorg/jaudiotagger/audio/mp3/LameFrame;

.field private vbr:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 4
    fill-array-data v1, :array_10

    .line 7
    sput-object v1, Lorg/jaudiotagger/audio/mp3/XingFrame;->XING_VBR_ID:[B

    .line 9
    new-array v0, v0, [B

    .line 11
    fill-array-data v0, :array_16

    .line 14
    sput-object v0, Lorg/jaudiotagger/audio/mp3/XingFrame;->XING_CBR_ID:[B

    .line 16
    return-void

    .line 17
    :array_10
    .array-data 1
        0x58t
        0x69t
        0x6et
        0x67t
    .end array-data

    .line 23
    :array_16
    .array-data 1
        0x49t
        0x6et
        0x66t
        0x6ft
    .end array-data
.end method

.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->vbr:Z

    .line 7
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->isFrameCountEnabled:Z

    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->frameCount:I

    .line 12
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->isAudioSizeEnabled:Z

    .line 14
    iput v1, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->audioSize:I

    .line 16
    sget-object v0, Lorg/jaudiotagger/audio/mp3/XingFrame;->header:Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 21
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->setVbr()V

    .line 24
    const/4 v0, 0x4

    .line 25
    new-array v0, v0, [B

    .line 27
    sget-object v1, Lorg/jaudiotagger/audio/mp3/XingFrame;->header:Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 32
    const/4 v1, 0x3

    .line 33
    aget-byte v2, v0, v1

    .line 35
    and-int/lit8 v2, v2, 0x1

    .line 37
    if-eqz v2, :cond_29

    .line 39
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->setFrameCount()V

    .line 42
    :cond_29
    aget-byte v0, v0, v1

    .line 44
    and-int/lit8 v0, v0, 0x2

    .line 46
    if-eqz v0, :cond_32

    .line 48
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->setAudioSize()V

    .line 51
    :cond_32
    sget-object v0, Lorg/jaudiotagger/audio/mp3/XingFrame;->header:Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 56
    move-result v0

    .line 57
    const/16 v1, 0x9c

    .line 59
    if-lt v0, v1, :cond_4b

    .line 61
    sget-object v0, Lorg/jaudiotagger/audio/mp3/XingFrame;->header:Ljava/nio/ByteBuffer;

    .line 63
    const/16 v1, 0x78

    .line 65
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    sget-object v0, Lorg/jaudiotagger/audio/mp3/XingFrame;->header:Ljava/nio/ByteBuffer;

    .line 70
    invoke-static {v0}, Lorg/jaudiotagger/audio/mp3/LameFrame;->parseLameFrame(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/LameFrame;

    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->lameFrame:Lorg/jaudiotagger/audio/mp3/LameFrame;

    .line 76
    :cond_4b
    return-void
.end method

.method public static isXingFrame(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getVersion()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    if-ne v1, v2, :cond_1d

    .line 12
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getChannelMode()I

    .line 15
    move-result p1

    .line 16
    if-ne p1, v2, :cond_17

    .line 18
    add-int/lit8 p1, v0, 0x15

    .line 20
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 23
    goto :goto_2e

    .line 24
    :cond_17
    add-int/lit8 p1, v0, 0x24

    .line 26
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 29
    goto :goto_2e

    .line 30
    :cond_1d
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getChannelMode()I

    .line 33
    move-result p1

    .line 34
    if-ne p1, v2, :cond_29

    .line 36
    add-int/lit8 p1, v0, 0xd

    .line 38
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    goto :goto_2e

    .line 42
    :cond_29
    add-int/lit8 p1, v0, 0x15

    .line 44
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    :goto_2e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 50
    move-result-object p1

    .line 51
    sput-object p1, Lorg/jaudiotagger/audio/mp3/XingFrame;->header:Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    const/4 p0, 0x4

    .line 57
    new-array p0, p0, [B

    .line 59
    sget-object p1, Lorg/jaudiotagger/audio/mp3/XingFrame;->header:Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 64
    sget-object p1, Lorg/jaudiotagger/audio/mp3/XingFrame;->XING_VBR_ID:[B

    .line 66
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_51

    .line 72
    sget-object p1, Lorg/jaudiotagger/audio/mp3/XingFrame;->XING_CBR_ID:[B

    .line 74
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 77
    move-result p0

    .line 78
    if-nez p0, :cond_51

    .line 80
    const/4 p0, 0x0

    .line 81
    return p0

    .line 82
    :cond_51
    sget-object p0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 84
    const-string p1, "Found Xing Frame"

    .line 86
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 89
    const/4 p0, 0x1

    .line 90
    return p0
.end method

.method public static parseXingFrame()Lorg/jaudiotagger/audio/mp3/XingFrame;
    .registers 1

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp3/XingFrame;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;-><init>()V

    .line 6
    return-object v0
.end method

.method private setAudioSize()V
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 4
    sget-object v1, Lorg/jaudiotagger/audio/mp3/XingFrame;->header:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->isAudioSizeEnabled:Z

    .line 12
    const/4 v2, 0x0

    .line 13
    aget-byte v2, v0, v2

    .line 15
    shl-int/lit8 v2, v2, 0x18

    .line 17
    const/high16 v3, -0x1000000

    .line 19
    and-int/2addr v2, v3

    .line 20
    aget-byte v1, v0, v1

    .line 22
    shl-int/lit8 v1, v1, 0x10

    .line 24
    const/high16 v3, 0xff0000

    .line 26
    and-int/2addr v1, v3

    .line 27
    or-int/2addr v1, v2

    .line 28
    const/4 v2, 0x2

    .line 29
    aget-byte v2, v0, v2

    .line 31
    shl-int/lit8 v2, v2, 0x8

    .line 33
    const v3, 0xff00

    .line 36
    and-int/2addr v2, v3

    .line 37
    or-int/2addr v1, v2

    .line 38
    const/4 v2, 0x3

    .line 39
    aget-byte v0, v0, v2

    .line 41
    and-int/lit16 v0, v0, 0xff

    .line 43
    or-int/2addr v0, v1

    .line 44
    iput v0, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->audioSize:I

    .line 46
    return-void
.end method

.method private setFrameCount()V
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 4
    sget-object v1, Lorg/jaudiotagger/audio/mp3/XingFrame;->header:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->isFrameCountEnabled:Z

    .line 12
    const/4 v2, 0x0

    .line 13
    aget-byte v2, v0, v2

    .line 15
    shl-int/lit8 v2, v2, 0x18

    .line 17
    const/high16 v3, -0x1000000

    .line 19
    and-int/2addr v2, v3

    .line 20
    aget-byte v1, v0, v1

    .line 22
    shl-int/lit8 v1, v1, 0x10

    .line 24
    const/high16 v3, 0xff0000

    .line 26
    and-int/2addr v1, v3

    .line 27
    or-int/2addr v1, v2

    .line 28
    const/4 v2, 0x2

    .line 29
    aget-byte v2, v0, v2

    .line 31
    shl-int/lit8 v2, v2, 0x8

    .line 33
    const v3, 0xff00

    .line 36
    and-int/2addr v2, v3

    .line 37
    or-int/2addr v1, v2

    .line 38
    const/4 v2, 0x3

    .line 39
    aget-byte v0, v0, v2

    .line 41
    and-int/lit16 v0, v0, 0xff

    .line 43
    or-int/2addr v0, v1

    .line 44
    iput v0, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->frameCount:I

    .line 46
    return-void
.end method

.method private setVbr()V
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 4
    sget-object v1, Lorg/jaudiotagger/audio/mp3/XingFrame;->header:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    sget-object v1, Lorg/jaudiotagger/audio/mp3/XingFrame;->XING_VBR_ID:[B

    .line 11
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1a

    .line 17
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 19
    const-string v1, "Is Vbr"

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->vbr:Z

    .line 27
    :cond_1a
    return-void
.end method


# virtual methods
.method public final getAudioSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->audioSize:I

    .line 3
    return v0
.end method

.method public final getFrameCount()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->frameCount:I

    .line 3
    return v0
.end method

.method public getLameFrame()Lorg/jaudiotagger/audio/mp3/LameFrame;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->lameFrame:Lorg/jaudiotagger/audio/mp3/LameFrame;

    .line 3
    return-object v0
.end method

.method public final isAudioSizeEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->isAudioSizeEnabled:Z

    .line 3
    return v0
.end method

.method public final isFrameCountEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->isFrameCountEnabled:Z

    .line 3
    return v0
.end method

.method public final isVbr()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->vbr:Z

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "xingheader vbr:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->vbr:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " frameCountEnabled:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->isFrameCountEnabled:Z

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " frameCount:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->frameCount:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, " audioSizeEnabled:"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->isAudioSizeEnabled:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, " audioFileSize:"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Lorg/jaudiotagger/audio/mp3/XingFrame;->audioSize:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
