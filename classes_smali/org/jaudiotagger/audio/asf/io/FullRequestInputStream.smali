.class public Lorg/jaudiotagger/audio/asf/io/FullRequestInputStream;
.super Ljava/io/FilterInputStream;
.source "FullRequestInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    return-void
.end method


# virtual methods
.method public read([B)I
    .registers 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jaudiotagger/audio/asf/io/FullRequestInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2a

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 2
    invoke-super {p0, p1, v1, v2}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_e

    add-int/2addr v0, v1

    :cond_e
    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    goto :goto_1

    .line 3
    :cond_12
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " more bytes expected."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    return v0
.end method

.method public skip(J)J
    .registers 11

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move-wide v3, v0

    .line 5
    :goto_4
    cmp-long v5, v3, p1

    .line 7
    if-gez v5, :cond_1a

    .line 9
    sub-long v5, p1, v3

    .line 11
    invoke-super {p0, v5, v6}, Ljava/io/FilterInputStream;->skip(J)J

    .line 14
    move-result-wide v5

    .line 15
    cmp-long v7, v5, v0

    .line 17
    if-nez v7, :cond_18

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 21
    const/4 v7, 0x2

    .line 22
    if-ne v2, v7, :cond_18

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    add-long/2addr v3, v5

    .line 26
    goto :goto_4

    .line 27
    :cond_1a
    :goto_1a
    return-wide v3
.end method
