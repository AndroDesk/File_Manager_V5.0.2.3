.class public final Ll4/a;
.super Ll4/b;
.source "AesCipherOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll4/b<",
        "Lg4/b;",
        ">;"
    }
.end annotation


# instance fields
.field public c:[B

.field public d:I


# direct methods
.method public constructor <init>(Ll4/j;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ll4/b;-><init>(Ll4/j;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V

    .line 4
    const/16 p1, 0x10

    .line 6
    new-array p1, p1, [B

    .line 8
    iput-object p1, p0, Ll4/a;->c:[B

    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Ll4/a;->d:I

    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget v0, p0, Ll4/a;->d:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_c

    .line 6
    iget-object v2, p0, Ll4/a;->c:[B

    .line 8
    invoke-super {p0, v2, v1, v0}, Ll4/b;->write([BII)V

    .line 11
    iput v1, p0, Ll4/a;->d:I

    .line 13
    :cond_c
    iget-object v0, p0, Ll4/b;->b:Lg4/d;

    .line 15
    check-cast v0, Lg4/b;

    .line 17
    iget-object v0, v0, Lg4/b;->b:Lh4/a;

    .line 19
    iget-object v2, v0, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    .line 21
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_1d

    .line 27
    invoke-virtual {v0, v1}, Lh4/a;->a(I)V

    .line 30
    :cond_1d
    iget-object v0, v0, Lh4/a;->a:Ljavax/crypto/Mac;

    .line 32
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    .line 35
    move-result-object v0

    .line 36
    const/16 v2, 0xa

    .line 38
    new-array v3, v2, [B

    .line 40
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object v0, p0, Ll4/b;->a:Ll4/j;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-virtual {v0, v3, v1, v2}, Ll4/j;->write([BII)V

    .line 51
    invoke-super {p0}, Ll4/b;->a()V

    .line 54
    return-void
.end method

.method public final e(Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lg4/d;
    .registers 6

    .line 1
    new-instance v0, Lg4/b;

    .line 3
    iget-object p1, p1, Lnet/lingala/zip4j/model/ZipParameters;->f:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 5
    invoke-direct {v0, p2, p1, p3}, Lg4/b;-><init>([CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)V

    .line 8
    iget-object p1, v0, Lg4/b;->j:[B

    .line 10
    iget-object p2, p0, Ll4/b;->a:Ll4/j;

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    array-length p3, p1

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2, p1, v1, p3}, Ll4/j;->write([BII)V

    .line 20
    iget-object p1, v0, Lg4/b;->i:[B

    .line 22
    iget-object p2, p0, Ll4/b;->a:Ll4/j;

    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    array-length p3, p1

    .line 28
    invoke-virtual {p2, p1, v1, p3}, Ll4/j;->write([BII)V

    .line 31
    return-object v0
.end method

.method public final write(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Ll4/a;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ll4/a;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 8

    .line 3
    iget v0, p0, Ll4/a;->d:I

    rsub-int/lit8 v1, v0, 0x10

    if-lt p3, v1, :cond_30

    .line 4
    iget-object v1, p0, Ll4/a;->c:[B

    rsub-int/lit8 v2, v0, 0x10

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object p2, p0, Ll4/a;->c:[B

    array-length v0, p2

    const/4 v1, 0x0

    invoke-super {p0, p2, v1, v0}, Ll4/b;->write([BII)V

    .line 6
    iget p2, p0, Ll4/a;->d:I

    rsub-int/lit8 p2, p2, 0x10

    sub-int/2addr p3, p2

    .line 7
    iput v1, p0, Ll4/a;->d:I

    if-eqz p3, :cond_2c

    .line 8
    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_2c

    add-int v2, p3, p2

    sub-int/2addr v2, v0

    .line 9
    iget-object v3, p0, Ll4/a;->c:[B

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iput v0, p0, Ll4/a;->d:I

    sub-int/2addr p3, v0

    .line 11
    :cond_2c
    invoke-super {p0, p1, p2, p3}, Ll4/b;->write([BII)V

    return-void

    .line 12
    :cond_30
    iget-object v1, p0, Ll4/a;->c:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget p1, p0, Ll4/a;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Ll4/a;->d:I

    return-void
.end method
