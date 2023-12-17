.class public Lorg/jaudiotagger/tag/datatype/BooleanByte;
.super Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.source "BooleanByte.java"


# instance fields
.field public bitPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    if-ltz p3, :cond_e

    const/4 p1, 0x7

    if-gt p3, p1, :cond_e

    iput p3, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    return-void

    :cond_e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Bit position needs to be from 0 - 7 : "

    invoke-static {p2, p3}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/BooleanByte;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    iget p1, p1, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    iput p1, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/BooleanByte;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/datatype/BooleanByte;

    iget v2, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    iget v0, v0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    if-ne v2, v0, :cond_16

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public getBitPosition()I
    .registers 2

    iget v0, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    return v0
.end method

.method public getSize()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readByteArray([BI)V
    .registers 6

    if-eqz p1, :cond_31

    if-ltz p2, :cond_1b

    array-length v0, p1

    if-ge p2, v0, :cond_1b

    aget-byte p1, p1, p2

    iget p2, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    shr-int/2addr p1, p2

    int-to-byte p1, p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    int-to-byte p1, p1

    if-ne p1, p2, :cond_13

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    :goto_14
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Offset to byte array is out of bounds: offset = "

    const-string v2, ", array.length = "

    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Byte array is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeByteArray()[B
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-eqz v1, :cond_17

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget v3, p0, Lorg/jaudiotagger/tag/datatype/BooleanByte;->bitPosition:I

    shl-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    :cond_17
    return-object v0
.end method
