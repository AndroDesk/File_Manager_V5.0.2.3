.class public final Lk4/a;
.super Lk4/b;
.source "AesCipherInputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk4/b<",
        "Lg4/a;",
        ">;"
    }
.end annotation


# instance fields
.field public e:[B

.field public f:[B

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lk4/j;Lm4/h;[CIZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lk4/b;-><init>(Lk4/j;Lm4/h;[CIZ)V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lk4/a;->e:[B

    const/16 p1, 0x10

    new-array p1, p1, [B

    iput-object p1, p0, Lk4/a;->f:[B

    const/4 p1, 0x0

    iput p1, p0, Lk4/a;->g:I

    iput p1, p0, Lk4/a;->h:I

    iput p1, p0, Lk4/a;->i:I

    iput p1, p0, Lk4/a;->j:I

    iput p1, p0, Lk4/a;->k:I

    iput p1, p0, Lk4/a;->l:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/PushbackInputStream;I)V
    .registers 6

    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-static {p1, v1}, La/b;->W(Ljava/io/PushbackInputStream;[B)I

    move-result p1

    if-ne p1, v0, :cond_36

    iget-object p1, p0, Lk4/b;->b:Lg4/c;

    check-cast p1, Lg4/a;

    iget-object p1, p1, Lg4/a;->b:Lh4/a;

    iget-object v2, p1, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_1b

    invoke-virtual {p1, p2}, Lh4/a;->a(I)V

    :cond_1b
    iget-object p1, p1, Lh4/a;->a:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    new-array p2, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2e

    return-void

    :cond_2e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Reached end of data for this entry, but aes verification failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid AES Mac bytes. Could not read sufficient data"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Lm4/h;[CZ)Lg4/c;
    .registers 11

    new-instance v6, Lg4/a;

    iget-object v1, p1, Lm4/b;->p:Lm4/a;

    if-eqz v1, :cond_28

    iget-object p1, v1, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getSaltLength()I

    move-result p1

    new-array v3, p1, [B

    invoke-virtual {p0, v3}, Lk4/b;->g([B)V

    const/4 p1, 0x2

    new-array v4, p1, [B

    invoke-virtual {p0, v4}, Lk4/b;->g([B)V

    move-object v0, v6

    move v2, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lg4/a;-><init>(Lm4/a;Z[B[B[C)V

    return-object v6

    :cond_20
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid aes key strength in aes extra data record"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid aes extra data record"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(I[B)V
    .registers 6

    iget v0, p0, Lk4/a;->i:I

    iget v1, p0, Lk4/a;->h:I

    if-ge v0, v1, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    iput v0, p0, Lk4/a;->l:I

    iget-object v1, p0, Lk4/a;->f:[B

    iget v2, p0, Lk4/a;->g:I

    invoke-static {v1, v2, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lk4/a;->l:I

    iget p2, p0, Lk4/a;->g:I

    add-int/2addr p2, p1

    iput p2, p0, Lk4/a;->g:I

    const/16 v0, 0xf

    if-lt p2, v0, :cond_1e

    iput v0, p0, Lk4/a;->g:I

    :cond_1e
    iget p2, p0, Lk4/a;->h:I

    sub-int/2addr p2, p1

    iput p2, p0, Lk4/a;->h:I

    if-gtz p2, :cond_28

    const/4 p2, 0x0

    iput p2, p0, Lk4/a;->h:I

    :cond_28
    iget p2, p0, Lk4/a;->k:I

    add-int/2addr p2, p1

    iput p2, p0, Lk4/a;->k:I

    iget p2, p0, Lk4/a;->i:I

    sub-int/2addr p2, p1

    iput p2, p0, Lk4/a;->i:I

    iget p2, p0, Lk4/a;->j:I

    add-int/2addr p2, p1

    iput p2, p0, Lk4/a;->j:I

    return-void
.end method

.method public final read()I
    .registers 3

    iget-object v0, p0, Lk4/a;->e:[B

    invoke-virtual {p0, v0}, Lk4/a;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lk4/a;->e:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public final read([B)I
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/a;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .registers 7

    iput p3, p0, Lk4/a;->i:I

    iput p2, p0, Lk4/a;->j:I

    const/4 v0, 0x0

    iput v0, p0, Lk4/a;->k:I

    iget v1, p0, Lk4/a;->h:I

    if-eqz v1, :cond_13

    invoke-virtual {p0, p2, p1}, Lk4/a;->h(I[B)V

    iget p2, p0, Lk4/a;->k:I

    if-ne p2, p3, :cond_13

    return p2

    :cond_13
    iget p2, p0, Lk4/a;->i:I

    const/4 v1, -0x1

    const/16 v2, 0x10

    if-ge p2, v2, :cond_39

    iget-object p2, p0, Lk4/a;->f:[B

    array-length v2, p2

    invoke-super {p0, p2, v0, v2}, Lk4/b;->read([BII)I

    move-result p2

    iput v0, p0, Lk4/a;->g:I

    if-ne p2, v1, :cond_2d

    iput v0, p0, Lk4/a;->h:I

    iget p1, p0, Lk4/a;->k:I

    if-lez p1, :cond_2c

    return p1

    :cond_2c
    return v1

    :cond_2d
    iput p2, p0, Lk4/a;->h:I

    iget p2, p0, Lk4/a;->j:I

    invoke-virtual {p0, p2, p1}, Lk4/a;->h(I[B)V

    iget p2, p0, Lk4/a;->k:I

    if-ne p2, p3, :cond_39

    return p2

    :cond_39
    iget p2, p0, Lk4/a;->j:I

    iget p3, p0, Lk4/a;->i:I

    rem-int/lit8 v0, p3, 0x10

    sub-int/2addr p3, v0

    invoke-super {p0, p1, p2, p3}, Lk4/b;->read([BII)I

    move-result p1

    if-ne p1, v1, :cond_4c

    iget p1, p0, Lk4/a;->k:I

    if-lez p1, :cond_4b

    return p1

    :cond_4b
    return v1

    :cond_4c
    iget p2, p0, Lk4/a;->k:I

    add-int/2addr p1, p2

    return p1
.end method
