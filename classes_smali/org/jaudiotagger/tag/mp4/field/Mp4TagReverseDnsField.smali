.class public Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;
.super Lorg/jaudiotagger/tag/mp4/Mp4TagField;
.source "Mp4TagReverseDnsField.java"

# interfaces
.implements Lorg/jaudiotagger/tag/TagTextField;


# static fields
.field public static final IDENTIFIER:Ljava/lang/String; = "----"


# instance fields
.field public content:Ljava/lang/String;

.field public dataSize:I

.field private descriptor:Ljava/lang/String;

.field private issuer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 6
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 7
    iput-object p2, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getIssuer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 3
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 6
    new-instance v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4MeanBox;

    .line 8
    invoke-direct {v1, v0, p1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4MeanBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 11
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4MeanBox;->getIssuer()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->setIssuer(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 25
    move-result v2

    .line 26
    add-int/2addr v2, v1

    .line 27
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 30
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 32
    invoke-direct {v1, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 35
    new-instance v2, Lorg/jaudiotagger/tag/mp4/atom/Mp4NameBox;

    .line 37
    invoke-direct {v2, v1, p1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4NameBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 40
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/atom/Mp4NameBox;->getName()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->setDescriptor(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 54
    move-result v3

    .line 55
    add-int/2addr v3, v2

    .line 56
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    iget-object v2, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->parentHeader:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 61
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 64
    move-result v2

    .line 65
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 68
    move-result v0

    .line 69
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 72
    move-result v1

    .line 73
    add-int/2addr v1, v0

    .line 74
    const-string v0, ":"

    .line 76
    const-string v3, "----:"

    .line 78
    if-ne v2, v1, :cond_7f

    .line 80
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    move-result-object p1

    .line 84
    iget-object v1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    .line 103
    const-string p1, ""

    .line 105
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->setContent(Ljava/lang/String;)V

    .line 108
    sget-object p1, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    .line 110
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_REVERSE_DNS_FIELD_HAS_NO_DATA:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 112
    const/4 v1, 0x1

    .line 113
    new-array v1, v1, [Ljava/lang/Object;

    .line 115
    const/4 v2, 0x0

    .line 116
    iget-object v3, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    .line 118
    aput-object v3, v1, v2

    .line 120
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 127
    goto :goto_b7

    .line 128
    :cond_7f
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 130
    invoke-direct {v1, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 133
    new-instance v2, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;

    .line 135
    invoke-direct {v2, v1, p1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 138
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->getContent()Ljava/lang/String;

    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->setContent(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 148
    move-result v2

    .line 149
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 152
    move-result v1

    .line 153
    add-int/2addr v1, v2

    .line 154
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object p1

    .line 182
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    .line 184
    :goto_b7
    return-void
.end method

.method public copyContent(Lorg/jaudiotagger/tag/TagField;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;

    .line 3
    if-eqz v0, :cond_18

    .line 5
    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;

    .line 7
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getIssuer()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getDescriptor()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getContent()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    .line 25
    :cond_18
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDataBytes()[B
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getEncoding()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getFieldType()Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->TEXT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 3
    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRawContent()[B
    .registers 10

    .line 1
    const-string v0, "ISO-8859-1"

    .line 3
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 5
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    iget-object v2, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getEncoding()Ljava/lang/String;

    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 17
    move-result-object v2

    .line 18
    array-length v3, v2

    .line 19
    add-int/lit8 v3, v3, 0xc

    .line 21
    invoke-static {v3}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 28
    const-string v3, "mean"

    .line 30
    invoke-static {v3, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 37
    const/4 v3, 0x4

    .line 38
    new-array v4, v3, [B

    .line 40
    const/4 v5, 0x0

    .line 41
    aput-byte v5, v4, v5

    .line 43
    const/4 v6, 0x1

    .line 44
    aput-byte v5, v4, v6

    .line 46
    const/4 v7, 0x2

    .line 47
    aput-byte v5, v4, v7

    .line 49
    const/4 v8, 0x3

    .line 50
    aput-byte v5, v4, v8

    .line 52
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 55
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 58
    iget-object v2, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getEncoding()Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 67
    move-result-object v2

    .line 68
    array-length v4, v2

    .line 69
    add-int/lit8 v4, v4, 0xc

    .line 71
    invoke-static {v4}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 78
    const-string v4, "name"

    .line 80
    invoke-static {v4, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 87
    new-array v3, v3, [B

    .line 89
    aput-byte v5, v3, v5

    .line 91
    aput-byte v5, v3, v6

    .line 93
    aput-byte v5, v3, v7

    .line 95
    aput-byte v5, v3, v8

    .line 97
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 100
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 103
    iget-object v2, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 108
    move-result v2

    .line 109
    if-lez v2, :cond_75

    .line 111
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getRawContentDataOnly()[B

    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 118
    :cond_75
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 120
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 126
    move-result v3

    .line 127
    add-int/lit8 v3, v3, 0x8

    .line 129
    invoke-static {v3}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 136
    const-string v3, "----"

    .line 138
    invoke-static {v3, v0}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 145
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 152
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 155
    move-result-object v0
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9b} :catch_9c

    .line 156
    return-object v0

    .line 157
    :catch_9c
    move-exception v0

    .line 158
    new-instance v1, Ljava/lang/RuntimeException;

    .line 160
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 163
    throw v1
.end method

.method public getRawContentDataOnly()[B
    .registers 9

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
    iget-object v1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getEncoding()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 37
    move-result-object v1

    .line 38
    array-length v2, v1

    .line 39
    add-int/lit8 v2, v2, 0x10

    .line 41
    invoke-static {v2}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 48
    const-string v2, "data"

    .line 50
    const-string v3, "ISO-8859-1"

    .line 52
    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 59
    const/4 v2, 0x1

    .line 60
    new-array v3, v2, [B

    .line 62
    const/4 v4, 0x0

    .line 63
    aput-byte v4, v3, v4

    .line 65
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 68
    const/4 v3, 0x3

    .line 69
    new-array v5, v3, [B

    .line 71
    aput-byte v4, v5, v4

    .line 73
    aput-byte v4, v5, v2

    .line 75
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getFieldType()Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    .line 82
    move-result v6

    .line 83
    int-to-byte v6, v6

    .line 84
    const/4 v7, 0x2

    .line 85
    aput-byte v6, v5, v7

    .line 87
    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 90
    const/4 v5, 0x4

    .line 91
    new-array v5, v5, [B

    .line 93
    aput-byte v4, v5, v4

    .line 95
    aput-byte v4, v5, v2

    .line 97
    aput-byte v4, v5, v7

    .line 99
    aput-byte v4, v5, v3

    .line 101
    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 104
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 107
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 110
    move-result-object v0
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_6e} :catch_6f

    .line 111
    return-object v0

    .line 112
    :catch_6f
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/RuntimeException;

    .line 115
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 118
    throw v1
.end method

.method public isBinary()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setDescriptor(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setIssuer(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    .line 3
    return-object v0
.end method
