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
.method public constructor <init>(Lk4/j;Lm4/h;[CIZ)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lk4/b;-><init>(Lk4/j;Lm4/h;[CIZ)V

    .line 4
    const/4 p1, 0x1

    .line 5
    new-array p1, p1, [B

    .line 7
    iput-object p1, p0, Lk4/a;->e:[B

    .line 9
    const/16 p1, 0x10

    .line 11
    new-array p1, p1, [B

    .line 13
    iput-object p1, p0, Lk4/a;->f:[B

    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lk4/a;->g:I

    .line 18
    iput p1, p0, Lk4/a;->h:I

    .line 20
    iput p1, p0, Lk4/a;->i:I

    .line 22
    iput p1, p0, Lk4/a;->j:I

    .line 24
    iput p1, p0, Lk4/a;->k:I

    .line 26
    iput p1, p0, Lk4/a;->l:I

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/PushbackInputStream;I)V
    .registers 6

    .line 1
    const/16 v0, 0xa

    .line 3
    new-array v1, v0, [B

    .line 5
    invoke-static {p1, v1}, La/b;->W(Ljava/io/PushbackInputStream;[B)I

    .line 8
    move-result p1

    .line 9
    if-ne p1, v0, :cond_36

    .line 11
    iget-object p1, p0, Lk4/b;->b:Lg4/c;

    .line 13
    check-cast p1, Lg4/a;

    .line 15
    iget-object p1, p1, Lg4/a;->b:Lh4/a;

    .line 17
    iget-object v2, p1, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    .line 19
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_1b

    .line 25
    invoke-virtual {p1, p2}, Lh4/a;->a(I)V

    .line 28
    :cond_1b
    iget-object p1, p1, Lh4/a;->a:Ljavax/crypto/Mac;

    .line 30
    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    .line 33
    move-result-object p1

    .line 34
    new-array p2, v0, [B

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2e

    .line 46
    return-void

    .line 47
    :cond_2e
    new-instance p1, Ljava/io/IOException;

    .line 49
    const-string p2, "Reached end of data for this entry, but aes verification failed"

    .line 51
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1

    .line 55
    :cond_36
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 57
    const-string p2, "Invalid AES Mac bytes. Could not read sufficient data"

    .line 59
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p1
.end method

.method public final e(Lm4/h;[CZ)Lg4/c;
    .registers 11

    .line 1
    new-instance v6, Lg4/a;

    .line 3
    iget-object v1, p1, Lm4/b;->p:Lm4/a;

    .line 5
    if-eqz v1, :cond_28

    .line 7
    iget-object p1, v1, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 9
    if-eqz p1, :cond_20

    .line 11
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getSaltLength()I

    .line 14
    move-result p1

    .line 15
    new-array v3, p1, [B

    .line 17
    invoke-virtual {p0, v3}, Lk4/b;->g([B)V

    .line 20
    const/4 p1, 0x2

    .line 21
    new-array v4, p1, [B

    .line 23
    invoke-virtual {p0, v4}, Lk4/b;->g([B)V

    .line 26
    move-object v0, v6

    .line 27
    move v2, p3

    .line 28
    move-object v5, p2

    .line 29
    invoke-direct/range {v0 .. v5}, Lg4/a;-><init>(Lm4/a;Z[B[B[C)V

    .line 32
    return-object v6

    .line 33
    :cond_20
    new-instance p1, Ljava/io/IOException;

    .line 35
    const-string p2, "Invalid aes key strength in aes extra data record"

    .line 37
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1

    .line 41
    :cond_28
    new-instance p1, Ljava/io/IOException;

    .line 43
    const-string p2, "invalid aes extra data record"

    .line 45
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1
.end method

.method public final h(I[B)V
    .registers 6

    .line 1
    iget v0, p0, Lk4/a;->i:I

    .line 3
    iget v1, p0, Lk4/a;->h:I

    .line 5
    if-ge v0, v1, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    move v0, v1

    .line 9
    :goto_8
    iput v0, p0, Lk4/a;->l:I

    .line 11
    iget-object v1, p0, Lk4/a;->f:[B

    .line 13
    iget v2, p0, Lk4/a;->g:I

    .line 15
    invoke-static {v1, v2, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget p1, p0, Lk4/a;->l:I

    .line 20
    iget p2, p0, Lk4/a;->g:I

    .line 22
    add-int/2addr p2, p1

    .line 23
    iput p2, p0, Lk4/a;->g:I

    .line 25
    const/16 v0, 0xf

    .line 27
    if-lt p2, v0, :cond_1e

    .line 29
    iput v0, p0, Lk4/a;->g:I

    .line 31
    :cond_1e
    iget p2, p0, Lk4/a;->h:I

    .line 33
    sub-int/2addr p2, p1

    .line 34
    iput p2, p0, Lk4/a;->h:I

    .line 36
    if-gtz p2, :cond_28

    .line 38
    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lk4/a;->h:I

    .line 41
    :cond_28
    iget p2, p0, Lk4/a;->k:I

    .line 43
    add-int/2addr p2, p1

    .line 44
    iput p2, p0, Lk4/a;->k:I

    .line 46
    iget p2, p0, Lk4/a;->i:I

    .line 48
    sub-int/2addr p2, p1

    .line 49
    iput p2, p0, Lk4/a;->i:I

    .line 51
    iget p2, p0, Lk4/a;->j:I

    .line 53
    add-int/2addr p2, p1

    .line 54
    iput p2, p0, Lk4/a;->j:I

    .line 56
    return-void
.end method

.method public final read()I
    .registers 3

    .line 1
    iget-object v0, p0, Lk4/a;->e:[B

    invoke-virtual {p0, v0}, Lk4/a;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    .line 2
    :cond_a
    iget-object v0, p0, Lk4/a;->e:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public final read([B)I
    .registers 4

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/a;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .registers 7

    .line 4
    iput p3, p0, Lk4/a;->i:I

    .line 5
    iput p2, p0, Lk4/a;->j:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lk4/a;->k:I

    .line 7
    iget v1, p0, Lk4/a;->h:I

    if-eqz v1, :cond_13

    .line 8
    invoke-virtual {p0, p2, p1}, Lk4/a;->h(I[B)V

    .line 9
    iget p2, p0, Lk4/a;->k:I

    if-ne p2, p3, :cond_13

    return p2

    .line 10
    :cond_13
    iget p2, p0, Lk4/a;->i:I

    const/4 v1, -0x1

    const/16 v2, 0x10

    if-ge p2, v2, :cond_39

    .line 11
    iget-object p2, p0, Lk4/a;->f:[B

    array-length v2, p2

    invoke-super {p0, p2, v0, v2}, Lk4/b;->read([BII)I

    move-result p2

    .line 12
    iput v0, p0, Lk4/a;->g:I

    if-ne p2, v1, :cond_2d

    .line 13
    iput v0, p0, Lk4/a;->h:I

    .line 14
    iget p1, p0, Lk4/a;->k:I

    if-lez p1, :cond_2c

    return p1

    :cond_2c
    return v1

    .line 15
    :cond_2d
    iput p2, p0, Lk4/a;->h:I

    .line 16
    iget p2, p0, Lk4/a;->j:I

    invoke-virtual {p0, p2, p1}, Lk4/a;->h(I[B)V

    .line 17
    iget p2, p0, Lk4/a;->k:I

    if-ne p2, p3, :cond_39

    return p2

    .line 18
    :cond_39
    iget p2, p0, Lk4/a;->j:I

    iget p3, p0, Lk4/a;->i:I

    rem-int/lit8 v0, p3, 0x10

    sub-int/2addr p3, v0

    invoke-super {p0, p1, p2, p3}, Lk4/b;->read([BII)I

    move-result p1

    if-ne p1, v1, :cond_4c

    .line 19
    iget p1, p0, Lk4/a;->k:I

    if-lez p1, :cond_4b

    return p1

    :cond_4b
    return v1

    .line 20
    :cond_4c
    iget p2, p0, Lk4/a;->k:I

    add-int/2addr p1, p2

    return p1
.end method
