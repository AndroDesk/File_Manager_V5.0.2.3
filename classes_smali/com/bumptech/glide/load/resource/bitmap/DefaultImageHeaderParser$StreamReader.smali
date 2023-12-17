.class final Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;
.super Ljava/lang/Object;
.source "DefaultImageHeaderParser.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamReader"
.end annotation


# instance fields
.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    .line 6
    return-void
.end method


# virtual methods
.method public getUInt16()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;->getUInt8()S

    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;->getUInt8()S

    .line 10
    move-result v1

    .line 11
    or-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public getUInt8()S
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_b

    .line 10
    int-to-short v0, v0

    .line 11
    return v0

    .line 12
    :cond_b
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException;

    .line 14
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException;-><init>()V

    .line 17
    throw v0
.end method

.method public read([BI)I
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    const/4 v2, -0x1

    .line 4
    if-ge v0, p2, :cond_11

    .line 6
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    .line 8
    sub-int v3, p2, v0

    .line 10
    invoke-virtual {v1, p1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    .line 13
    move-result v1

    .line 14
    if-eq v1, v2, :cond_11

    .line 16
    add-int/2addr v0, v1

    .line 17
    goto :goto_2

    .line 18
    :cond_11
    if-nez v0, :cond_1c

    .line 20
    if-eq v1, v2, :cond_16

    .line 22
    goto :goto_1c

    .line 23
    :cond_16
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException;

    .line 25
    invoke-direct {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException;-><init>()V

    .line 28
    throw p1

    .line 29
    :cond_1c
    :goto_1c
    return v0
.end method

.method public skip(J)J
    .registers 10

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p1, v0

    .line 5
    if-gez v2, :cond_7

    .line 7
    return-wide v0

    .line 8
    :cond_7
    move-wide v2, p1

    .line 9
    :goto_8
    cmp-long v4, v2, v0

    .line 11
    if-lez v4, :cond_25

    .line 13
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    .line 15
    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 18
    move-result-wide v4

    .line 19
    cmp-long v6, v4, v0

    .line 21
    if-lez v6, :cond_18

    .line 23
    :goto_16
    sub-long/2addr v2, v4

    .line 24
    goto :goto_8

    .line 25
    :cond_18
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    .line 27
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    .line 30
    move-result v4

    .line 31
    const/4 v5, -0x1

    .line 32
    if-ne v4, v5, :cond_22

    .line 34
    goto :goto_25

    .line 35
    :cond_22
    const-wide/16 v4, 0x1

    .line 37
    goto :goto_16

    .line 38
    :cond_25
    :goto_25
    sub-long/2addr p1, v2

    .line 39
    return-wide p1
.end method
