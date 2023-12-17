.class public Lorg/jaudiotagger/tag/id3/ID3Compression;
.super Ljava/lang/Object;
.source "ID3Compression.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.tag.id3"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3Compression;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static uncompress(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .registers 12

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Compression;->logger:Ljava/util/logging/Logger;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v2, ":About to decompress "

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v2, " bytes, expect result to be:"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, " bytes"

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 39
    new-array p3, p3, [B

    .line 41
    new-array v0, p4, [B

    .line 43
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 46
    move-result v1

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p2, v0, v3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 54
    new-instance v1, Ljava/util/zip/Inflater;

    .line 56
    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    .line 59
    invoke-virtual {v1, v0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 62
    :try_start_3d
    invoke-virtual {v1, p3}, Ljava/util/zip/Inflater;->inflate([B)I

    .line 65
    move-result v0

    .line 66
    sget-object v4, Lorg/jaudiotagger/tag/id3/ID3Compression;->logger:Ljava/util/logging/Logger;

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v6, ":Decompressed to "

    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/util/zip/DataFormatException; {:try_start_3d .. :try_end_5d} :catch_65

    .line 94
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    .line 97
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :catch_65
    move-exception p3

    .line 103
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Compression;->logger:Ljava/util/logging/Logger;

    .line 105
    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v4, "Unable to decompress this frame:"

    .line 114
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 130
    move-result v0

    .line 131
    add-int/2addr v0, p4

    .line 132
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    new-instance p2, Lorg/jaudiotagger/tag/InvalidFrameException;

    .line 137
    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_UNABLE_TO_DECOMPRESS_FRAME:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 139
    const/4 v0, 0x3

    .line 140
    new-array v0, v0, [Ljava/lang/Object;

    .line 142
    aput-object p0, v0, v3

    .line 144
    const/4 p0, 0x1

    .line 145
    aput-object p1, v0, p0

    .line 147
    const/4 p0, 0x2

    .line 148
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 151
    move-result-object p1

    .line 152
    aput-object p1, v0, p0

    .line 154
    invoke-virtual {p4, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    move-result-object p0

    .line 158
    invoke-direct {p2, p0}, Lorg/jaudiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    .line 161
    throw p2
.end method
