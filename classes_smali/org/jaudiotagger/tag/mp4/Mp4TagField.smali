.class public abstract Lorg/jaudiotagger/tag/mp4/Mp4TagField;
.super Ljava/lang/Object;
.source "Mp4TagField.java"

# interfaces
.implements Lorg/jaudiotagger/tag/TagField;


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field public id:Ljava/lang/String;

.field public parentHeader:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.tag.mp4"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->build(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->build(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->parentHeader:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 7
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->build(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public abstract build(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract getDataBytes()[B
.end method

.method public abstract getFieldType()Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getIdBytes()[B
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->getId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ISO-8859-1"

    .line 7
    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 10
    move-result-object v0

    .line 11
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
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->getRawContentDataOnly()[B

    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 29
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    array-length v2, v0

    .line 33
    add-int/lit8 v2, v2, 0x8

    .line 35
    invoke-static {v2}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 42
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->getId()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    const-string v3, "ISO-8859-1"

    .line 48
    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 55
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 58
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 61
    move-result-object v0
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_3d} :catch_3e

    .line 62
    return-object v0

    .line 63
    :catch_3e
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    .line 66
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 69
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
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->getDataBytes()[B

    .line 31
    move-result-object v1

    .line 32
    array-length v2, v1

    .line 33
    add-int/lit8 v2, v2, 0x10

    .line 35
    invoke-static {v2}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 42
    const-string v2, "data"

    .line 44
    const-string v3, "ISO-8859-1"

    .line 46
    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 53
    const/4 v2, 0x1

    .line 54
    new-array v3, v2, [B

    .line 56
    const/4 v4, 0x0

    .line 57
    aput-byte v4, v3, v4

    .line 59
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 62
    const/4 v3, 0x3

    .line 63
    new-array v5, v3, [B

    .line 65
    aput-byte v4, v5, v4

    .line 67
    aput-byte v4, v5, v2

    .line 69
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->getFieldType()Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    .line 76
    move-result v6

    .line 77
    int-to-byte v6, v6

    .line 78
    const/4 v7, 0x2

    .line 79
    aput-byte v6, v5, v7

    .line 81
    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 84
    const/4 v5, 0x4

    .line 85
    new-array v5, v5, [B

    .line 87
    aput-byte v4, v5, v4

    .line 89
    aput-byte v4, v5, v2

    .line 91
    aput-byte v4, v5, v7

    .line 93
    aput-byte v4, v5, v3

    .line 95
    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 98
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 101
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 104
    move-result-object v0
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_68} :catch_69

    .line 105
    return-object v0

    .line 106
    :catch_69
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/RuntimeException;

    .line 109
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 112
    throw v1
.end method

.method public isBinary(Z)V
    .registers 2

    return-void
.end method

.method public isCommon()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    .line 3
    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 5
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_65

    .line 15
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    .line 17
    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 19
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_65

    .line 29
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    .line 31
    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TITLE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 33
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_65

    .line 43
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    .line 45
    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TRACK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 47
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_65

    .line 57
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    .line 59
    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DAY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 61
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_65

    .line 71
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    .line 73
    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMMENT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 75
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_65

    .line 85
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    .line 87
    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 89
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_63

    .line 99
    goto :goto_65

    .line 100
    :cond_63
    const/4 v0, 0x0

    .line 101
    goto :goto_66

    .line 102
    :cond_65
    :goto_65
    const/4 v0, 0x1

    .line 103
    :goto_66
    return v0
.end method
