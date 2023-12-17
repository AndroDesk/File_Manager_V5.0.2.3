.class public Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;
.super Lorg/jaudiotagger/tag/mp4/Mp4TagField;
.source "Mp4TagBinaryField.java"


# instance fields
.field public dataBytes:[B

.field public dataSize:I

.field public isBinary:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->isBinary:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->isBinary:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->isBinary:Z

    .line 5
    iput-object p2, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    return-void
.end method


# virtual methods
.method public build(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 3
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 6
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataSize:I

    .line 12
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, 0x8

    .line 18
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataSize:I

    .line 23
    add-int/lit8 v0, v0, -0x8

    .line 25
    new-array v0, v0, [B

    .line 27
    iput-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_1d
    iget-object v1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    .line 32
    array-length v2, v1

    .line 33
    if-ge v0, v2, :cond_2b

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 38
    move-result v2

    .line 39
    aput-byte v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 43
    goto :goto_1d

    .line 44
    :cond_2b
    return-void
.end method

.method public copyContent(Lorg/jaudiotagger/tag/TagField;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;

    .line 8
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->getData()[B

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    .line 14
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->isBinary()Z

    .line 17
    move-result p1

    .line 18
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->isBinary:Z

    .line 20
    :cond_13
    return-void
.end method

.method public getData()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    .line 3
    return-object v0
.end method

.method public getDataBytes()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    .line 3
    return-object v0
.end method

.method public getDataSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataSize:I

    .line 3
    return v0
.end method

.method public getFieldType()Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 3
    return-object v0
.end method

.method public isBinary()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->isBinary:Z

    .line 3
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    .line 3
    array-length v0, v0

    .line 4
    if-nez v0, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return v0
.end method

.method public setData([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    .line 3
    return-void
.end method
