.class public Lorg/jaudiotagger/tag/datatype/NumberFixedLength;
.super Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.source "NumberFixedLength.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    if-ltz p3, :cond_8

    .line 2
    iput p3, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    return-void

    .line 3
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Length is less than zero: "

    .line 4
    invoke-static {p2, p3}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/NumberFixedLength;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V

    .line 12
    iget p1, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    iput p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

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
    check-cast v0, Lorg/jaudiotagger/tag/datatype/NumberFixedLength;

    .line 10
    iget v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 12
    iget v0, v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 14
    if-ne v2, v0, :cond_16

    .line 16
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_16

    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_16
    return v1
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 3
    return v0
.end method

.method public readByteArray([BI)V
    .registers 8

    .line 1
    if-eqz p1, :cond_72

    .line 3
    if-ltz p2, :cond_5c

    .line 5
    array-length v0, p1

    .line 6
    if-ge p2, v0, :cond_5c

    .line 8
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 10
    add-int/2addr v0, p2

    .line 11
    array-length v1, p1

    .line 12
    if-gt v0, v1, :cond_3c

    .line 14
    const-wide/16 v0, 0x0

    .line 16
    move v2, p2

    .line 17
    :goto_10
    iget v3, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 19
    add-int/2addr v3, p2

    .line 20
    if-ge v2, v3, :cond_21

    .line 22
    const/16 v3, 0x8

    .line 24
    shl-long/2addr v0, v3

    .line 25
    aget-byte v3, p1, v2

    .line 27
    and-int/lit16 v3, v3, 0xff

    .line 29
    int-to-long v3, v3

    .line 30
    add-long/2addr v0, v3

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_10

    .line 34
    :cond_21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 40
    sget-object p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 42
    const-string p2, "Read NumberFixedlength:"

    .line 44
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object p2

    .line 48
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 60
    return-void

    .line 61
    :cond_3c
    new-instance v0, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    .line 63
    const-string v1, "Offset plus size to byte array is out of bounds: offset = "

    .line 65
    const-string v2, ", size = "

    .line 67
    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    move-result-object p2

    .line 71
    iget v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 73
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, " + arr.length "

    .line 78
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    array-length p1, p1

    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    .line 92
    throw v0

    .line 93
    :cond_5c
    new-instance v0, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    .line 95
    const-string v1, "Offset to byte array is out of bounds: offset = "

    .line 97
    const-string v2, ", array.length = "

    .line 99
    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    move-result-object p2

    .line 103
    array-length p1, p1

    .line 104
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    .line 114
    throw v0

    .line 115
    :cond_72
    new-instance p1, Ljava/lang/NullPointerException;

    .line 117
    const-string p2, "Byte array is null"

    .line 119
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 122
    throw p1
.end method

.method public setSize(I)V
    .registers 2

    .line 1
    if-lez p1, :cond_4

    .line 3
    iput p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 5
    :cond_4
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4

    .line 1
    instance-of v0, p1, Ljava/lang/Number;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->setValue(Ljava/lang/Object;)V

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string v1, "Invalid value type for NumberFixedLength:"

    .line 13
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-string v0, ""

    .line 7
    return-object v0

    .line 8
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public writeByteArray()[B
    .registers 7

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 3
    new-array v0, v0, [B

    .line 5
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 7
    if-eqz v1, :cond_1f

    .line 9
    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->getWholeNumber(Ljava/lang/Object;)J

    .line 12
    move-result-wide v1

    .line 13
    iget v3, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 15
    add-int/lit8 v3, v3, -0x1

    .line 17
    :goto_10
    if-ltz v3, :cond_1f

    .line 19
    const-wide/16 v4, 0xff

    .line 21
    and-long/2addr v4, v1

    .line 22
    long-to-int v4, v4

    .line 23
    int-to-byte v4, v4

    .line 24
    aput-byte v4, v0, v3

    .line 26
    const/16 v4, 0x8

    .line 28
    shr-long/2addr v1, v4

    .line 29
    add-int/lit8 v3, v3, -0x1

    .line 31
    goto :goto_10

    .line 32
    :cond_1f
    return-object v0
.end method
