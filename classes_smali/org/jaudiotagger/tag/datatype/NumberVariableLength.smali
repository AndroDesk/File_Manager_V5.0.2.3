.class public Lorg/jaudiotagger/tag/datatype/NumberVariableLength;
.super Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.source "NumberVariableLength.java"


# static fields
.field private static final MAXIMUM_NO_OF_DIGITS:I = 0x8

.field private static final MINIMUM_NO_OF_DIGITS:I = 0x1


# instance fields
.field public minLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 2
    iput p3, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/NumberVariableLength;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    .line 5
    iget p1, p1, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    iput p1, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;

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
    check-cast v0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;

    .line 10
    iget v2, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    .line 12
    iget v0, v0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

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

.method public getMaximumLenth()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public getMinimumLength()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    .line 3
    return v0
.end method

.method public getSize()I
    .registers 7

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->getWholeNumber(Ljava/lang/Object;)J

    .line 10
    move-result-wide v2

    .line 11
    const/4 v0, 0x1

    .line 12
    :goto_b
    const/16 v4, 0x8

    .line 14
    if-gt v0, v4, :cond_1a

    .line 16
    long-to-int v5, v2

    .line 17
    int-to-byte v5, v5

    .line 18
    and-int/lit16 v5, v5, 0xff

    .line 20
    if-eqz v5, :cond_16

    .line 22
    move v1, v0

    .line 23
    :cond_16
    shr-long/2addr v2, v4

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_b

    .line 27
    :cond_1a
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    .line 29
    if-le v0, v1, :cond_1f

    .line 31
    move v1, v0

    .line 32
    :cond_1f
    return v1
.end method

.method public readByteArray([BI)V
    .registers 7

    .line 1
    if-eqz p1, :cond_4e

    .line 3
    if-ltz p2, :cond_42

    .line 5
    array-length v0, p1

    .line 6
    const-wide/16 v1, 0x0

    .line 8
    if-lt p2, v0, :cond_2a

    .line 10
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    .line 12
    if-nez v0, :cond_14

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 20
    return-void

    .line 21
    :cond_14
    new-instance v0, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    .line 23
    const-string v1, "Offset to byte array is out of bounds: offset = "

    .line 25
    const-string v2, ", array.length = "

    .line 27
    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object p2

    .line 31
    array-length p1, p1

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0

    .line 43
    :cond_2a
    :goto_2a
    array-length v0, p1

    .line 44
    if-ge p2, v0, :cond_3b

    .line 46
    const/16 v0, 0x8

    .line 48
    shl-long v0, v1, v0

    .line 50
    aget-byte v2, p1, p2

    .line 52
    and-int/lit16 v2, v2, 0xff

    .line 54
    int-to-long v2, v2

    .line 55
    add-long v1, v0, v2

    .line 57
    add-int/lit8 p2, p2, 0x1

    .line 59
    goto :goto_2a

    .line 60
    :cond_3b
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 66
    return-void

    .line 67
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    const-string v0, "negativer offset into an array offset:"

    .line 71
    invoke-static {v0, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 74
    move-result-object p2

    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p1

    .line 79
    :cond_4e
    new-instance p1, Ljava/lang/NullPointerException;

    .line 81
    const-string p2, "Byte array is null"

    .line 83
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p1
.end method

.method public setMinimumSize(I)V
    .registers 2

    .line 1
    if-lez p1, :cond_4

    .line 3
    iput p1, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    .line 5
    :cond_4
    return-void
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
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->getSize()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [B

    .line 10
    goto :goto_24

    .line 11
    :cond_a
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 13
    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->getWholeNumber(Ljava/lang/Object;)J

    .line 16
    move-result-wide v1

    .line 17
    new-array v3, v0, [B

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 21
    :goto_14
    if-ltz v0, :cond_23

    .line 23
    const-wide/16 v4, 0xff

    .line 25
    and-long/2addr v4, v1

    .line 26
    long-to-int v4, v4

    .line 27
    int-to-byte v4, v4

    .line 28
    aput-byte v4, v3, v0

    .line 30
    const/16 v4, 0x8

    .line 32
    shr-long/2addr v1, v4

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_14

    .line 36
    :cond_23
    move-object v0, v3

    .line 37
    :goto_24
    return-object v0
.end method
