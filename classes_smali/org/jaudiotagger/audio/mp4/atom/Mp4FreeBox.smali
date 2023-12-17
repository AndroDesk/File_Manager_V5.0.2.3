.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4FreeBox.java"


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 4
    :try_start_3
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 6
    invoke-direct {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 11
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 13
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    add-int/lit8 v1, p1, 0x8

    .line 18
    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 25
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->FREE:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 27
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string v2, "ISO-8859-1"

    .line 33
    invoke-static {v1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 40
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V

    .line 53
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 55
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    const/4 v1, 0x0

    .line 59
    move v2, v1

    .line 60
    :goto_3b
    if-ge v2, p1, :cond_43

    .line 62
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_3b

    .line 68
    :cond_43
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_4d} :catch_4e

    .line 78
    return-void

    .line 79
    :catch_4e
    move-exception p1

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    .line 82
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 85
    throw v0
.end method
