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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lk4/j;Lm4/h;[CIZ)V
    .registers 7

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lk4/b;->d:[B

    iput-object p1, p0, Lk4/b;->a:Lk4/j;

    invoke-virtual {p0, p2, p3, p5}, Lk4/b;->e(Lm4/h;[CZ)Lg4/c;

    move-result-object p1

    iput-object p1, p0, Lk4/b;->b:Lg4/c;

    invoke-static {p2}, La/b;->B(Lm4/b;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p1

    sget-object p2, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    new-array p1, p4, [B

    iput-object p1, p0, Lk4/b;->c:[B

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

    iget-object v0, p0, Lk4/b;->a:Lk4/j;

    invoke-virtual {v0}, Lk4/j;->close()V

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

    iget-object v0, p0, Lk4/b;->a:Lk4/j;

    iget-object v1, v0, Lk4/j;->a:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    array-length v3, p1

    if-eq v1, v3, :cond_35

    array-length v3, p1

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_12
    array-length v6, p1

    if-ge v1, v6, :cond_29

    if-eq v4, v2, :cond_29

    const/16 v6, 0xf

    if-ge v5, v6, :cond_29

    iget-object v6, v0, Lk4/j;->a:Ljava/io/InputStream;

    invoke-virtual {v6, p1, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    add-int/2addr v4, v6

    if-lez v4, :cond_26

    add-int/2addr v1, v4

    sub-int/2addr v3, v4

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_29
    array-length p1, p1

    if-ne v1, p1, :cond_2d

    goto :goto_35

    :cond_2d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot read fully into byte buffer"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    :goto_35
    return-void

    :cond_36
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected EOF reached when trying to read stream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read()I
    .registers 3

    iget-object v0, p0, Lk4/b;->d:[B

    invoke-virtual {p0, v0}, Lk4/b;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lk4/b;->d:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/b;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 6

    iget-object v0, p0, Lk4/b;->a:Lk4/j;

    invoke-static {v0, p1, p2, p3}, La/b;->V(Ljava/io/InputStream;[BII)I

    move-result p3

    if-lez p3, :cond_15

    iget-object v0, p0, Lk4/b;->c:[B

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    iget-object v0, p0, Lk4/b;->b:Lg4/c;

    invoke-interface {v0, p2, p1, p3}, Lg4/c;->a(I[BI)I

    :cond_15
    return p3
.end method
