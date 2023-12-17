.class public Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;
.super Lorg/jaudiotagger/tag/mp4/Mp4TagField;
.source "Mp4TagRawBinaryField.java"


# instance fields
.field public dataBytes:[B

.field public dataSize:I


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataSize:I

    .line 14
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;->build(Ljava/nio/ByteBuffer;)V

    .line 17
    return-void
.end method


# virtual methods
.method public build(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataSize:I

    .line 3
    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataBytes:[B

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_7
    iget-object v1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataBytes:[B

    .line 10
    array-length v2, v1

    .line 11
    if-ge v0, v2, :cond_15

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 16
    move-result v2

    .line 17
    aput-byte v2, v1, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_7

    .line 22
    :cond_15
    return-void
.end method

.method public copyContent(Lorg/jaudiotagger/tag/TagField;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "not done"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public getData()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataBytes:[B

    .line 3
    return-object v0
.end method

.method public getDataBytes()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataBytes:[B

    .line 3
    return-object v0
.end method

.method public getDataSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataSize:I

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

.method public getRawContent()[B
    .registers 5

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Getting Raw data for:"

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->getId()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 23
    :try_start_16
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 25
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    iget v1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataSize:I

    .line 30
    add-int/lit8 v1, v1, 0x8

    .line 32
    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 39
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->getId()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    const-string v2, "ISO-8859-1"

    .line 45
    invoke-static {v1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 52
    iget-object v1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataBytes:[B

    .line 54
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 57
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v3, "SIZE"

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 72
    move-result v3

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 86
    move-result-object v0
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_56} :catch_57

    .line 87
    return-object v0

    .line 88
    :catch_57
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    .line 91
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 94
    throw v1
.end method

.method public isBinary()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataBytes:[B

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
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataBytes:[B

    .line 3
    return-void
.end method
