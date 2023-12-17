.class public Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;
.super Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.source "Lyrics3TimeStamp.java"


# instance fields
.field private minute:J

.field private second:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 6
    iput-wide v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 3
    iput-wide p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;)V
    .registers 4

    .line 7
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 9
    iput-wide v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 10
    iget-wide v0, p1, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    iput-wide v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 11
    iget-wide v0, p1, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    iput-wide v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

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
    check-cast v0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 10
    iget-wide v2, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 12
    iget-wide v4, v0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 14
    cmp-long v2, v2, v4

    .line 16
    if-eqz v2, :cond_12

    .line 18
    return v1

    .line 19
    :cond_12
    iget-wide v2, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 21
    iget-wide v4, v0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 23
    cmp-long v0, v2, v4

    .line 25
    if-nez v0, :cond_21

    .line 27
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_21

    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_21
    return v1
.end method

.method public getMinute()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 3
    return-wide v0
.end method

.method public getSecond()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 3
    return-wide v0
.end method

.method public getSize()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public readByteArray([BI)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->readString(Ljava/lang/String;I)V

    .line 8
    return-void
.end method

.method public readString(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public readString(Ljava/lang/String;I)V
    .registers 6

    .line 1
    if-eqz p1, :cond_50

    .line 3
    if-ltz p2, :cond_37

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    if-ge p2, v0, :cond_37

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    move-result p2

    .line 19
    const/4 v0, 0x7

    .line 20
    if-ne p2, v0, :cond_30

    .line 22
    const/4 p2, 0x1

    .line 23
    const/4 v0, 0x3

    .line 24
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    move-result p2

    .line 32
    int-to-long v0, p2

    .line 33
    iput-wide v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 35
    const/4 p2, 0x4

    .line 36
    const/4 v0, 0x6

    .line 37
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    move-result p1

    .line 45
    int-to-long p1, p1

    .line 46
    iput-wide p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 48
    goto :goto_36

    .line 49
    :cond_30
    const-wide/16 p1, 0x0

    .line 51
    iput-wide p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 53
    iput-wide p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 55
    :goto_36
    return-void

    .line 56
    :cond_37
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 58
    const-string v1, "Offset to timeStamp is out of bounds: offset = "

    .line 60
    const-string v2, ", timeStamp.length()"

    .line 62
    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 69
    move-result p1

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 80
    throw v0

    .line 81
    :cond_50
    new-instance p1, Ljava/lang/NullPointerException;

    .line 83
    const-string p2, "Image is null"

    .line 85
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p1
.end method

.method public setMinute(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 3
    return-void
.end method

.method public setSecond(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 3
    return-void
.end method

.method public setTimeStamp(JB)V
    .registers 8

    .line 1
    const-wide/16 v0, 0x3e8

    .line 3
    div-long/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x3c

    .line 6
    div-long v2, p1, v0

    .line 8
    iput-wide v2, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 10
    rem-long/2addr p1, v0

    .line 11
    iput-wide p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->writeString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public writeByteArray()[B
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->writeString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ISO8859-1"

    .line 7
    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public writeString()Ljava/lang/String;
    .registers 10

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v4, v0, v2

    .line 7
    const-wide/16 v5, 0xa

    .line 9
    if-gez v4, :cond_d

    .line 11
    const-string v0, "[00"

    .line 13
    goto :goto_27

    .line 14
    :cond_d
    cmp-long v0, v0, v5

    .line 16
    if-gez v0, :cond_14

    .line 18
    const-string v0, "[0"

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    const-string v0, "["

    .line 23
    :goto_16
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v0

    .line 27
    iget-wide v7, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 29
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const/16 v0, 0x3a

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    iget-wide v7, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 59
    cmp-long v1, v7, v2

    .line 61
    if-gez v1, :cond_45

    .line 63
    const-string v1, "00"

    .line 65
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    goto :goto_6b

    .line 70
    :cond_45
    cmp-long v1, v7, v5

    .line 72
    if-gez v1, :cond_5a

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const/16 v0, 0x30

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    :cond_5a
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    move-result-object v0

    .line 95
    iget-wide v1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 97
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    :goto_6b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const/16 v0, 0x5d

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
