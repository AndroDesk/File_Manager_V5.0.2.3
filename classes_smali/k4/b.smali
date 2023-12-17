.class public abstract Lk4/b;
.super Ljava/io/InputStream;
.source "CipherInputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lg4/c;",
        ">",
        "Ljava/io/InputStream;"
    }
.end annotation


# instance fields
.field public a:Lk4/j;

.field public b:Lg4/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:[B

.field public d:[B


# direct methods
.method public constructor <init>(Lk4/j;Lm4/h;[CIZ)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Lk4/b;->d:[B

    .line 9
    iput-object p1, p0, Lk4/b;->a:Lk4/j;

    .line 11
    invoke-virtual {p0, p2, p3, p5}, Lk4/b;->e(Lm4/h;[CZ)Lg4/c;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lk4/b;->b:Lg4/c;

    .line 17
    invoke-static {p2}, La/b;->B(Lm4/b;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 20
    move-result-object p1

    .line 21
    sget-object p2, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_20

    .line 29
    new-array p1, p4, [B

    .line 31
    iput-object p1, p0, Lk4/b;->c:[B

    .line 33
    :cond_20
    return-void
.end method


# virtual methods
.method public a(Ljava/io/PushbackInputStream;I)V
    .registers 3

    return-void
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lk4/b;->a:Lk4/j;

    .line 3
    invoke-virtual {v0}, Lk4/j;->close()V

    .line 6
    return-void
.end method

.method public abstract e(Lm4/h;[CZ)Lg4/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm4/h;",
            "[CZ)TT;"
        }
    .end annotation
.end method

.method public final g([B)V
    .registers 9

    .line 1
    iget-object v0, p0, Lk4/b;->a:Lk4/j;

    .line 3
    iget-object v1, v0, Lk4/j;->a:Ljava/io/InputStream;

    .line 5
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_36

    .line 12
    array-length v3, p1

    .line 13
    if-eq v1, v3, :cond_35

    .line 15
    array-length v3, p1

    .line 16
    sub-int/2addr v3, v1

    .line 17
    const/4 v4, 0x0

    .line 18
    move v5, v4

    .line 19
    :goto_12
    array-length v6, p1

    .line 20
    if-ge v1, v6, :cond_29

    .line 22
    if-eq v4, v2, :cond_29

    .line 24
    const/16 v6, 0xf

    .line 26
    if-ge v5, v6, :cond_29

    .line 28
    iget-object v6, v0, Lk4/j;->a:Ljava/io/InputStream;

    .line 30
    invoke-virtual {v6, p1, v1, v3}, Ljava/io/InputStream;->read([BII)I

    .line 33
    move-result v6

    .line 34
    add-int/2addr v4, v6

    .line 35
    if-lez v4, :cond_26

    .line 37
    add-int/2addr v1, v4

    .line 38
    sub-int/2addr v3, v4

    .line 39
    :cond_26
    add-int/lit8 v5, v5, 0x1

    .line 41
    goto :goto_12

    .line 42
    :cond_29
    array-length p1, p1

    .line 43
    if-ne v1, p1, :cond_2d

    .line 45
    goto :goto_35

    .line 46
    :cond_2d
    new-instance p1, Ljava/io/IOException;

    .line 48
    const-string v0, "Cannot read fully into byte buffer"

    .line 50
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1

    .line 54
    :cond_35
    :goto_35
    return-void

    .line 55
    :cond_36
    new-instance p1, Ljava/io/IOException;

    .line 57
    const-string v0, "Unexpected EOF reached when trying to read stream"

    .line 59
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p1
.end method

.method public read()I
    .registers 3

    .line 1
    iget-object v0, p0, Lk4/b;->d:[B

    invoke-virtual {p0, v0}, Lk4/b;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    .line 2
    :cond_a
    iget-object v0, p0, Lk4/b;->d:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .registers 4

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/b;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 6

    .line 4
    iget-object v0, p0, Lk4/b;->a:Lk4/j;

    invoke-static {v0, p1, p2, p3}, La/b;->V(Ljava/io/InputStream;[BII)I

    move-result p3

    if-lez p3, :cond_15

    .line 5
    iget-object v0, p0, Lk4/b;->c:[B

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    :cond_10
    iget-object v0, p0, Lk4/b;->b:Lg4/c;

    invoke-interface {v0, p2, p1, p3}, Lg4/c;->a(I[BI)I

    :cond_15
    return p3
.end method
