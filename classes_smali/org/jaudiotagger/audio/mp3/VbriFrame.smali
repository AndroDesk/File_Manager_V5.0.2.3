.class public Lorg/jaudiotagger/audio/mp3/VbriFrame;
.super Ljava/lang/Object;
.source "VbriFrame.java"


# static fields
.field private static final BYTE_1:I = 0x0

.field private static final BYTE_2:I = 0x1

.field private static final BYTE_3:I = 0x2

.field private static final BYTE_4:I = 0x3

.field public static final MAX_BUFFER_SIZE_NEEDED_TO_READ_VBRI:I = 0x9c

.field private static final VBRI_AUDIOSIZE_BUFFER_SIZE:I = 0x4

.field private static final VBRI_DELAY_BUFFER_SIZE:I = 0x2

.field private static final VBRI_FRAMECOUNT_BUFFER_SIZE:I = 0x4

.field private static final VBRI_HEADER_BUFFER_SIZE:I = 0x78

.field private static final VBRI_IDENTIFIER_BUFFER_SIZE:I = 0x4

.field private static final VBRI_OFFSET:I = 0x24

.field private static final VBRI_QUALITY_BUFFER_SIZE:I = 0x2

.field private static final VBRI_TOC_ENTRY_BUFFER_SIZE:I = 0x2

.field private static final VBRI_VBR_ID:[B

.field private static header:Ljava/nio/ByteBuffer;


# instance fields
.field private audioSize:I

.field private frameCount:I

.field private lameFrame:Lorg/jaudiotagger/audio/mp3/LameFrame;

.field private vbr:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_a

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/mp3/VbriFrame;->VBRI_VBR_ID:[B

    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_a
    .array-data 1
        0x56t
        0x42t
        0x52t
        0x49t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/VbriFrame;->vbr:Z

    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lorg/jaudiotagger/audio/mp3/VbriFrame;->frameCount:I

    .line 10
    iput v0, p0, Lorg/jaudiotagger/audio/mp3/VbriFrame;->audioSize:I

    .line 12
    sget-object v0, Lorg/jaudiotagger/audio/mp3/VbriFrame;->header:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 17
    sget-object v0, Lorg/jaudiotagger/audio/mp3/VbriFrame;->header:Ljava/nio/ByteBuffer;

    .line 19
    const/16 v1, 0xa

    .line 21
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 24
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->setAudioSize()V

    .line 27
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->setFrameCount()V

    .line 30
    return-void
.end method

.method public static isVbriFrame(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 4
    move-result p1

    .line 5
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v2, "Checking VBRI Frame at"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 27
    add-int/lit8 v0, p1, 0x24

    .line 29
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 32
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lorg/jaudiotagger/audio/mp3/VbriFrame;->header:Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    const/4 p0, 0x4

    .line 42
    new-array p0, p0, [B

    .line 44
    sget-object p1, Lorg/jaudiotagger/audio/mp3/VbriFrame;->header:Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 49
    sget-object p1, Lorg/jaudiotagger/audio/mp3/VbriFrame;->VBRI_VBR_ID:[B

    .line 51
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_3a

    .line 57
    const/4 p0, 0x0

    .line 58
    return p0

    .line 59
    :cond_3a
    sget-object p0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    .line 61
    const-string p1, "Found VBRI Frame"

    .line 63
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 66
    const/4 p0, 0x1

    .line 67
    return p0
.end method

.method public static parseVBRIFrame()Lorg/jaudiotagger/audio/mp3/VbriFrame;
    .registers 1

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp3/VbriFrame;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;-><init>()V

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
    sget-object v1, Lorg/jaudiotagger/audio/mp3/VbriFrame;->header:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    const/4 v1, 0x0

    .line 10
    aget-byte v1, v0, v1

    .line 12
    shl-int/lit8 v1, v1, 0x18

    .line 14
    const/high16 v2, -0x1000000

    .line 16
    and-int/2addr v1, v2

    .line 17
    const/4 v2, 0x1

    .line 18
    aget-byte v2, v0, v2

    .line 20
    shl-int/lit8 v2, v2, 0x10

    .line 22
    const/high16 v3, 0xff0000

    .line 24
    and-int/2addr v2, v3

    .line 25
    or-int/2addr v1, v2

    .line 26
    const/4 v2, 0x2

    .line 27
    aget-byte v2, v0, v2

    .line 29
    shl-int/lit8 v2, v2, 0x8

    .line 31
    const v3, 0xff00

    .line 34
    and-int/2addr v2, v3

    .line 35
    or-int/2addr v1, v2

    .line 36
    const/4 v2, 0x3

    .line 37
    aget-byte v0, v0, v2

    .line 39
    and-int/lit16 v0, v0, 0xff

    .line 41
    or-int/2addr v0, v1

    .line 42
    iput v0, p0, Lorg/jaudiotagger/audio/mp3/VbriFrame;->audioSize:I

    .line 44
    return-void
.end method

.method private setFrameCount()V
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 4
    sget-object v1, Lorg/jaudiotagger/audio/mp3/VbriFrame;->header:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    const/4 v1, 0x0

    .line 10
    aget-byte v1, v0, v1

    .line 12
    shl-int/lit8 v1, v1, 0x18

    .line 14
    const/high16 v2, -0x1000000

    .line 16
    and-int/2addr v1, v2

    .line 17
    const/4 v2, 0x1

    .line 18
    aget-byte v2, v0, v2

    .line 20
    shl-int/lit8 v2, v2, 0x10

    .line 22
    const/high16 v3, 0xff0000

    .line 24
    and-int/2addr v2, v3

    .line 25
    or-int/2addr v1, v2

    .line 26
    const/4 v2, 0x2

    .line 27
    aget-byte v2, v0, v2

    .line 29
    shl-int/lit8 v2, v2, 0x8

    .line 31
    const v3, 0xff00

    .line 34
    and-int/2addr v2, v3

    .line 35
    or-int/2addr v1, v2

    .line 36
    const/4 v2, 0x3

    .line 37
    aget-byte v0, v0, v2

    .line 39
    and-int/lit16 v0, v0, 0xff

    .line 41
    or-int/2addr v0, v1

    .line 42
    iput v0, p0, Lorg/jaudiotagger/audio/mp3/VbriFrame;->frameCount:I

    .line 44
    return-void
.end method


# virtual methods
.method public final getAudioSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/VbriFrame;->audioSize:I

    .line 3
    return v0
.end method

.method public getEncoder()Ljava/lang/String;
    .registers 2

    const-string v0, "Fraunhofer"

    return-object v0
.end method

.method public final getFrameCount()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/VbriFrame;->frameCount:I

    .line 3
    return v0
.end method

.method public final isVbr()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "VBRIheader vbr:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/VbriFrame;->vbr:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " frameCount:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lorg/jaudiotagger/audio/mp3/VbriFrame;->frameCount:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " audioFileSize:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lorg/jaudiotagger/audio/mp3/VbriFrame;->audioSize:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, " encoder:"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->getEncoder()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method
