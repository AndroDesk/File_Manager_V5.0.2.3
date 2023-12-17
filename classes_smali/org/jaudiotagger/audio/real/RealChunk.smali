.class public Lorg/jaudiotagger/audio/real/RealChunk;
.super Ljava/lang/Object;
.source "RealChunk.java"


# static fields
.field public static final CONT:Ljava/lang/String; = "CONT"

.field public static final DATA:Ljava/lang/String; = "DATA"

.field public static final INDX:Ljava/lang/String; = "INDX"

.field public static final MDPR:Ljava/lang/String; = "MDPR"

.field public static final PROP:Ljava/lang/String; = "PROP"

.field public static final RMF:Ljava/lang/String; = ".RMF"


# instance fields
.field private final bytes:[B

.field private final id:Ljava/lang/String;

.field private final size:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I[B)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/audio/real/RealChunk;->id:Ljava/lang/String;

    .line 6
    iput p2, p0, Lorg/jaudiotagger/audio/real/RealChunk;->size:I

    .line 8
    iput-object p3, p0, Lorg/jaudiotagger/audio/real/RealChunk;->bytes:[B

    .line 10
    return-void
.end method

.method public static readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;
    .registers 11

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, v0}, Lorg/jaudiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32AsInt(Ljava/io/DataInput;)I

    .line 9
    move-result v1

    .line 10
    const-wide/16 v2, 0x4

    .line 12
    const/16 v4, 0x8

    .line 14
    if-lt v1, v4, :cond_4c

    .line 16
    int-to-long v4, v1

    .line 17
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    .line 20
    move-result-wide v6

    .line 21
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 24
    move-result-wide v8

    .line 25
    sub-long/2addr v6, v8

    .line 26
    const-wide/16 v8, 0x8

    .line 28
    add-long/2addr v6, v8

    .line 29
    cmp-long v4, v4, v6

    .line 31
    if-gtz v4, :cond_2d

    .line 33
    add-int/lit8 v2, v1, -0x8

    .line 35
    new-array v2, v2, [B

    .line 37
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 40
    new-instance p0, Lorg/jaudiotagger/audio/real/RealChunk;

    .line 42
    invoke-direct {p0, v0, v1, v2}, Lorg/jaudiotagger/audio/real/RealChunk;-><init>(Ljava/lang/String;I[B)V

    .line 45
    return-object p0

    .line 46
    :cond_2d
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 48
    const-string v4, "Corrupt file: RealAudio chunk length of "

    .line 50
    const-string v5, " at position "

    .line 52
    invoke-static {v4, v1, v5}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 59
    move-result-wide v4

    .line 60
    sub-long/2addr v4, v2

    .line 61
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    const-string p0, " extends beyond the end of the file"

    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-direct {v0, p0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 76
    throw v0

    .line 77
    :cond_4c
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 79
    const-string v1, "Corrupt file: RealAudio chunk length at position "

    .line 81
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 88
    move-result-wide v4

    .line 89
    sub-long/2addr v4, v2

    .line 90
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    const-string p0, " cannot be less than 8"

    .line 95
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    invoke-direct {v0, p0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 105
    throw v0
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/real/RealChunk;->bytes:[B

    .line 3
    return-object v0
.end method

.method public getDataInputStream()Ljava/io/DataInputStream;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/DataInputStream;

    .line 3
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/real/RealChunk;->getBytes()[B

    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 12
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/real/RealChunk;->id:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/real/RealChunk;->size:I

    .line 3
    return v0
.end method

.method public isCONT()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/real/RealChunk;->id:Ljava/lang/String;

    .line 3
    const-string v1, "CONT"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isPROP()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/real/RealChunk;->id:Ljava/lang/String;

    .line 3
    const-string v1, "PROP"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/jaudiotagger/audio/real/RealChunk;->id:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "\t"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lorg/jaudiotagger/audio/real/RealChunk;->size:I

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
