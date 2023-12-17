.class public Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;
.super Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.source "ID3v2LyricLine.java"


# instance fields
.field public text:Ljava/lang/String;

.field public timeStamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;)V
    .registers 4

    .line 4
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    .line 7
    iget-object v0, p1, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    .line 8
    iget-wide v0, p1, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    iput-wide v0, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    move-object v0, p1

    .line 8
    check-cast v0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;

    .line 10
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    .line 12
    iget-object v3, v0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_14

    .line 20
    return v1

    .line 21
    :cond_14
    iget-wide v2, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    .line 23
    iget-wide v4, v0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    .line 25
    cmp-long v0, v2, v4

    .line 27
    if-nez v0, :cond_23

    .line 29
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_23

    .line 35
    const/4 v1, 0x1

    .line 36
    :cond_23
    return v1
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 9
    add-int/lit8 v0, v0, 0x4

    .line 11
    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    .line 3
    return-wide v0
.end method

.method public readByteArray([BI)V
    .registers 7

    .line 1
    if-eqz p1, :cond_42

    .line 3
    if-ltz p2, :cond_2c

    .line 5
    array-length v0, p1

    .line 6
    if-ge p2, v0, :cond_2c

    .line 8
    array-length v0, p1

    .line 9
    sub-int/2addr v0, p2

    .line 10
    add-int/lit8 v0, v0, -0x4

    .line 12
    const-string v1, "ISO-8859-1"

    .line 14
    invoke-static {p1, p2, v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    .line 20
    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    .line 24
    array-length p2, p1

    .line 25
    add-int/lit8 p2, p2, -0x4

    .line 27
    :goto_1a
    array-length v0, p1

    .line 28
    if-ge p2, v0, :cond_2b

    .line 30
    iget-wide v0, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    .line 32
    const/16 v2, 0x8

    .line 34
    shl-long/2addr v0, v2

    .line 35
    aget-byte v2, p1, p2

    .line 37
    int-to-long v2, v2

    .line 38
    add-long/2addr v0, v2

    .line 39
    iput-wide v0, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    .line 41
    add-int/lit8 p2, p2, 0x1

    .line 43
    goto :goto_1a

    .line 44
    :cond_2b
    return-void

    .line 45
    :cond_2c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 47
    const-string v1, "Offset to byte array is out of bounds: offset = "

    .line 49
    const-string v2, ", array.length = "

    .line 51
    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object p2

    .line 55
    array-length p1, p1

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 66
    throw v0

    .line 67
    :cond_42
    new-instance p1, Ljava/lang/NullPointerException;

    .line 69
    const-string p2, "Byte array is null"

    .line 71
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p1
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-wide v1, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public writeByteArray()[B
    .registers 9

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->getSize()I

    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    iget-object v3, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    .line 11
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 14
    move-result v3

    .line 15
    if-ge v2, v3, :cond_1c

    .line 17
    iget-object v3, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 22
    move-result v3

    .line 23
    int-to-byte v3, v3

    .line 24
    aput-byte v3, v0, v2

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_8

    .line 29
    :cond_1c
    add-int/lit8 v3, v2, 0x1

    .line 31
    aput-byte v1, v0, v2

    .line 33
    add-int/lit8 v1, v3, 0x1

    .line 35
    iget-wide v4, p0, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    .line 37
    const-wide/32 v6, -0x1000000

    .line 40
    and-long/2addr v6, v4

    .line 41
    const/16 v2, 0x18

    .line 43
    shr-long/2addr v6, v2

    .line 44
    long-to-int v2, v6

    .line 45
    int-to-byte v2, v2

    .line 46
    aput-byte v2, v0, v3

    .line 48
    add-int/lit8 v2, v1, 0x1

    .line 50
    const-wide/32 v6, 0xff0000

    .line 53
    and-long/2addr v6, v4

    .line 54
    const/16 v3, 0x10

    .line 56
    shr-long/2addr v6, v3

    .line 57
    long-to-int v3, v6

    .line 58
    int-to-byte v3, v3

    .line 59
    aput-byte v3, v0, v1

    .line 61
    add-int/lit8 v1, v2, 0x1

    .line 63
    const-wide/32 v6, 0xff00

    .line 66
    and-long/2addr v6, v4

    .line 67
    const/16 v3, 0x8

    .line 69
    shr-long/2addr v6, v3

    .line 70
    long-to-int v3, v6

    .line 71
    int-to-byte v3, v3

    .line 72
    aput-byte v3, v0, v2

    .line 74
    const-wide/16 v2, 0xff

    .line 76
    and-long/2addr v2, v4

    .line 77
    long-to-int v2, v2

    .line 78
    int-to-byte v2, v2

    .line 79
    aput-byte v2, v0, v1

    .line 81
    return-object v0
.end method
