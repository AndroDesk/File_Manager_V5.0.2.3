.class public Lorg/jaudiotagger/tag/datatype/NumberVariableLength;
.super Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.source "NumberVariableLength.java"


# static fields
.field private static final MAXIMUM_NO_OF_DIGITS:I

.field private static final MINIMUM_NO_OF_DIGITS:I


# instance fields
.field public minLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->MAXIMUM_NO_OF_DIGITS:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->MINIMUM_NO_OF_DIGITS:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    iput p3, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/NumberVariableLength;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V

    const/4 v0, 0x1

    iput v0, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    iget p1, p1, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    iput p1, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;

    iget v2, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    iget v0, v0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    if-ne v2, v0, :cond_16

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 v1, 0x1

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

    iget v0, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    return v0
.end method

.method public getSize()I
    .registers 7

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->getWholeNumber(Ljava/lang/Object;)J

    move-result-wide v2

    const/4 v0, 0x1

    :goto_b
    const/16 v4, 0x8

    if-gt v0, v4, :cond_1a

    long-to-int v5, v2

    int-to-byte v5, v5

    and-int/lit16 v5, v5, 0xff

    if-eqz v5, :cond_16

    move v1, v0

    :cond_16
    shr-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1a
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    if-le v0, v1, :cond_1f

    move v1, v0

    :cond_1f
    return v1
.end method

.method public readByteArray([BI)V
    .registers 7

    if-eqz p1, :cond_4e

    if-ltz p2, :cond_42

    array-length v0, p1

    const-wide/16 v1, 0x0

    if-lt p2, v0, :cond_2a

    iget v0, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    if-nez v0, :cond_14

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void

    :cond_14
    new-instance v0, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    const-string v1, "Offset to byte array is out of bounds: offset = "

    const-string v2, ", array.length = "

    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_2a
    array-length v0, p1

    if-ge p2, v0, :cond_3b

    const/16 v0, 0x8

    shl-long v0, v1, v0

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long v1, v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2a

    :cond_3b
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void

    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "negativer offset into an array offset:"

    invoke-static {v0, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Byte array is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinimumSize(I)V
    .registers 2

    if-lez p1, :cond_4

    iput p1, p0, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->minLength:I

    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeByteArray()[B
    .registers 7

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/NumberVariableLength;->getSize()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_24

    :cond_a
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->getWholeNumber(Ljava/lang/Object;)J

    move-result-wide v1

    new-array v3, v0, [B

    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-ltz v0, :cond_23

    const-wide/16 v4, 0xff

    and-long/2addr v4, v1

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    const/16 v4, 0x8

    shr-long/2addr v1, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_23
    move-object v0, v3

    :goto_24
    return-object v0
.end method
