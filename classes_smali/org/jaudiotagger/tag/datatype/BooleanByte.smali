.class public Lorg/jaudiotagger/tag/datatype/BooleanByte;
.super Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.source "BooleanByte.java"


# instance fields
.field public bitPosition:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    if-ltz p3, :cond_e

    const/4 p1, 0x7

    if-gt p3, p1, :cond_e

    .line 3
    iput p3, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    return-void

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Bit position needs to be from 0 - 7 : "

    .line 5
    invoke-static {p2, p3}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/BooleanByte;)V
    .registers 3

    .line 12
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    .line 14
    iget p1, p1, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    iput p1, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/BooleanByte;

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
    check-cast v0, Lorg/jaudiotagger/tag/datatype/BooleanByte;

    .line 10
    iget v2, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    .line 12
    iget v0, v0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

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

.method public getBitPosition()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    .line 3
    return v0
.end method

.method public getSize()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readByteArray([BI)V
    .registers 6

    .line 1
    if-eqz p1, :cond_31

    .line 3
    if-ltz p2, :cond_1b

    .line 5
    array-length v0, p1

    .line 6
    if-ge p2, v0, :cond_1b

    .line 8
    aget-byte p1, p1, p2

    .line 10
    iget p2, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    .line 12
    shr-int/2addr p1, p2

    .line 13
    int-to-byte p1, p1

    .line 14
    const/4 p2, 0x1

    .line 15
    and-int/2addr p1, p2

    .line 16
    int-to-byte p1, p1

    .line 17
    if-ne p1, p2, :cond_13

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p2, 0x0

    .line 21
    :goto_14
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 27
    return-void

    .line 28
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 30
    const-string v1, "Offset to byte array is out of bounds: offset = "

    .line 32
    const-string v2, ", array.length = "

    .line 34
    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object p2

    .line 38
    array-length p1, p1

    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 49
    throw v0

    .line 50
    :cond_31
    new-instance p1, Ljava/lang/NullPointerException;

    .line 52
    const-string p2, "Byte array is null"

    .line 54
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, ""

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public writeByteArray()[B
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 4
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 6
    if-eqz v1, :cond_17

    .line 8
    check-cast v1, Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    move-result v1

    .line 14
    int-to-byte v1, v1

    .line 15
    const/4 v2, 0x0

    .line 16
    aput-byte v1, v0, v2

    .line 18
    iget v3, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    .line 20
    shl-int/2addr v1, v3

    .line 21
    int-to-byte v1, v1

    .line 22
    aput-byte v1, v0, v2

    .line 24
    :cond_17
    return-object v0
.end method
