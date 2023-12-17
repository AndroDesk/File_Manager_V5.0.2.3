.class public Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;
.super Ljava/lang/Object;
.source "ID3Unsynchronization.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "org.jaudiotagger.tag.id3"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requiresUnsynchronization([B)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3b

    aget-byte v2, p0, v1

    const/16 v4, 0xff

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_38

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p0, v2

    const/16 v4, 0xe0

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_38

    sget-object p0, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p0

    if-eqz p0, :cond_37

    sget-object p0, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsynchronisation required found bit at:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_37
    return v3

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3b
    return v0
.end method

.method public static synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 8

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 p0, 0x1

    move v5, p0

    move v3, v2

    move v4, v3

    :goto_10
    if-ge v3, v0, :cond_2a

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v1, v3

    if-nez v5, :cond_1a

    if-eqz v3, :cond_1f

    :cond_1a
    add-int/lit8 v5, v4, 0x1

    aput-byte v3, v1, v4

    move v4, v5

    :cond_1f
    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xff

    if-eq v3, v5, :cond_27

    move v5, p0

    goto :goto_28

    :cond_27
    move v5, v2

    :goto_28
    move v3, v6

    goto :goto_10

    :cond_2a
    invoke-static {v1, v2, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static unsynchronize([B)[B
    .registers 8

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :cond_d
    :goto_d
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0xff

    if-lez v4, :cond_81

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    add-int/2addr v3, v5

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_d

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    if-lez v4, :cond_d

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    and-int/lit16 v5, v4, 0xe0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_58

    sget-object v4, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_54

    sget-object v4, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Writing unsynchronisation bit at:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_54
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_7d

    :cond_58
    if-nez v4, :cond_7d

    sget-object v4, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_7a

    sget-object v4, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inserting zero unsynchronisation bit at:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_7a
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_7d
    :goto_7d
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_d

    :cond_81
    array-length v0, p0

    sub-int/2addr v0, v5

    aget-byte p0, p0, v0

    and-int/2addr p0, v6

    if-ne p0, v6, :cond_92

    sget-object p0, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    const-string v0, "Adding unsynchronisation bit at end of stream"

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_92
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
