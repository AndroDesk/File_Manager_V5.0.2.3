.class public Lorg/jaudiotagger/tag/datatype/ByteArraySizeTerminated;
.super Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.source "ByteArraySizeTerminated.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/ByteArraySizeTerminated;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/ByteArraySizeTerminated;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    check-cast v0, [B

    .line 7
    array-length v0, v0

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public readByteArray([BI)V
    .registers 6

    .line 1
    if-eqz p1, :cond_2c

    .line 3
    if-ltz p2, :cond_16

    .line 5
    array-length v0, p1

    .line 6
    if-lt p2, v0, :cond_b

    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 11
    return-void

    .line 12
    :cond_b
    array-length v0, p1

    .line 13
    sub-int/2addr v0, p2

    .line 14
    new-array v1, v0, [B

    .line 16
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    return-void

    .line 23
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 25
    const-string v1, "Offset to byte array is out of bounds: offset = "

    .line 27
    const-string v2, ", array.length = "

    .line 29
    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object p2

    .line 33
    array-length p1, p1

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0

    .line 45
    :cond_2c
    new-instance p1, Ljava/lang/NullPointerException;

    .line 47
    const-string p2, "Byte array is null"

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/ByteArraySizeTerminated;->getSize()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " bytes"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public writeByteArray()[B
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Writing byte array"

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->getIdentifier()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 25
    check-cast v0, [B

    .line 27
    return-object v0
.end method
