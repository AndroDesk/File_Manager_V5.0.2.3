.class public Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;
.super Ljava/lang/Object;
.source "ID3Unsynchronization.java"


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
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requiresUnsynchronization([B)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    array-length v2, p0

    .line 4
    const/4 v3, 0x1

    .line 5
    sub-int/2addr v2, v3

    .line 6
    if-ge v1, v2, :cond_3b

    .line 8
    aget-byte v2, p0, v1

    .line 10
    const/16 v4, 0xff

    .line 12
    and-int/2addr v2, v4

    .line 13
    if-ne v2, v4, :cond_38

    .line 15
    add-int/lit8 v2, v1, 0x1

    .line 17
    aget-byte v2, p0, v2

    .line 19
    const/16 v4, 0xe0

    .line 21
    and-int/2addr v2, v4

    .line 22
    if-ne v2, v4, :cond_38

    .line 24
    sget-object p0, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    .line 26
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 28
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_37

    .line 34
    sget-object p0, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v2, "Unsynchronisation required found bit at:"

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 56
    :cond_37
    return v3

    .line 57
    :cond_38
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_2

    .line 60
    :cond_3b
    return v0
.end method

.method public static synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, 0x1

    .line 7
    new-array v1, v1, [B

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 13
    const/4 p0, 0x1

    .line 14
    move v5, p0

    .line 15
    move v3, v2

    .line 16
    move v4, v3

    .line 17
    :goto_10
    if-ge v3, v0, :cond_2a

    .line 19
    add-int/lit8 v6, v3, 0x1

    .line 21
    aget-byte v3, v1, v3

    .line 23
    if-nez v5, :cond_1a

    .line 25
    if-eqz v3, :cond_1f

    .line 27
    :cond_1a
    add-int/lit8 v5, v4, 0x1

    .line 29
    aput-byte v3, v1, v4

    .line 31
    move v4, v5

    .line 32
    :cond_1f
    and-int/lit16 v3, v3, 0xff

    .line 34
    const/16 v5, 0xff

    .line 36
    if-eq v3, v5, :cond_27

    .line 38
    move v5, p0

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v5, v2

    .line 41
    :goto_28
    move v3, v6

    .line 42
    goto :goto_10

    .line 43
    :cond_2a
    invoke-static {v1, v2, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static unsynchronize([B)[B
    .registers 8

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 8
    array-length v2, p0

    .line 9
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :cond_d
    :goto_d
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x1

    .line 19
    const/16 v6, 0xff

    .line 21
    if-lez v4, :cond_81

    .line 23
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    .line 26
    move-result v4

    .line 27
    add-int/2addr v3, v5

    .line 28
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 31
    and-int/2addr v4, v6

    .line 32
    if-ne v4, v6, :cond_d

    .line 34
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    .line 37
    move-result v4

    .line 38
    if-lez v4, :cond_d

    .line 40
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 43
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    .line 46
    move-result v4

    .line 47
    and-int/lit16 v5, v4, 0xe0

    .line 49
    const/16 v6, 0xe0

    .line 51
    if-ne v5, v6, :cond_58

    .line 53
    sget-object v4, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    .line 55
    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 57
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_54

    .line 63
    sget-object v4, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v6, "Writing unsynchronisation bit at:"

    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 85
    :cond_54
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 88
    goto :goto_7d

    .line 89
    :cond_58
    if-nez v4, :cond_7d

    .line 91
    sget-object v4, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    .line 93
    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 95
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_7a

    .line 101
    sget-object v4, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const-string v6, "Inserting zero unsynchronisation bit at:"

    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 123
    :cond_7a
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 126
    :cond_7d
    :goto_7d
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 129
    goto :goto_d

    .line 130
    :cond_81
    array-length v0, p0

    .line 131
    sub-int/2addr v0, v5

    .line 132
    aget-byte p0, p0, v0

    .line 134
    and-int/2addr p0, v6

    .line 135
    if-ne p0, v6, :cond_92

    .line 137
    sget-object p0, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    .line 139
    const-string v0, "Adding unsynchronisation bit at end of stream"

    .line 141
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 147
    :cond_92
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 150
    move-result-object p0

    .line 151
    return-object p0
.end method
