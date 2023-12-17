.class public final Lg4/e;
.super Ljava/lang/Object;
.source "StandardDecrypter.java"

# interfaces
.implements Lg4/c;


# instance fields
.field public a:Li4/b;


# direct methods
.method public constructor <init>(JJZ[B[C)V
    .registers 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Li4/b;

    .line 6
    invoke-direct {v0}, Li4/b;-><init>()V

    .line 9
    iput-object v0, p0, Lg4/e;->a:Li4/b;

    .line 11
    const-string v1, "Wrong password!"

    .line 13
    if-eqz p7, :cond_51

    .line 15
    array-length v2, p7

    .line 16
    if-lez v2, :cond_51

    .line 18
    invoke-virtual {v0, p7, p5}, Li4/b;->b([CZ)V

    .line 21
    const/4 p5, 0x0

    .line 22
    aget-byte p7, p6, p5

    .line 24
    :cond_17
    :goto_17
    const/16 v0, 0xc

    .line 26
    if-ge p5, v0, :cond_50

    .line 28
    add-int/lit8 p5, p5, 0x1

    .line 30
    if-ne p5, v0, :cond_40

    .line 32
    iget-object v2, p0, Lg4/e;->a:Li4/b;

    .line 34
    invoke-virtual {v2}, Li4/b;->a()B

    .line 37
    move-result v2

    .line 38
    xor-int/2addr v2, p7

    .line 39
    int-to-byte v2, v2

    .line 40
    const/16 v3, 0x18

    .line 42
    shr-long v3, p1, v3

    .line 44
    long-to-int v3, v3

    .line 45
    int-to-byte v3, v3

    .line 46
    if-eq v2, v3, :cond_40

    .line 48
    const/16 v3, 0x8

    .line 50
    shr-long v3, p3, v3

    .line 52
    long-to-int v3, v3

    .line 53
    int-to-byte v3, v3

    .line 54
    if-ne v2, v3, :cond_38

    .line 56
    goto :goto_40

    .line 57
    :cond_38
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 59
    sget-object p2, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 61
    invoke-direct {p1, v1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    .line 64
    throw p1

    .line 65
    :cond_40
    :goto_40
    iget-object v2, p0, Lg4/e;->a:Li4/b;

    .line 67
    invoke-virtual {v2}, Li4/b;->a()B

    .line 70
    move-result v3

    .line 71
    xor-int/2addr v3, p7

    .line 72
    int-to-byte v3, v3

    .line 73
    invoke-virtual {v2, v3}, Li4/b;->c(B)V

    .line 76
    if-eq p5, v0, :cond_17

    .line 78
    aget-byte p7, p6, p5

    .line 80
    goto :goto_17

    .line 81
    :cond_50
    return-void

    .line 82
    :cond_51
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 84
    sget-object p2, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 86
    invoke-direct {p1, v1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    .line 89
    throw p1
.end method


# virtual methods
.method public final a(I[BI)I
    .registers 7

    .line 1
    if-ltz p1, :cond_22

    .line 3
    if-ltz p3, :cond_22

    .line 5
    move v0, p1

    .line 6
    :goto_5
    add-int v1, p1, p3

    .line 8
    if-ge v0, v1, :cond_21

    .line 10
    aget-byte v1, p2, v0

    .line 12
    and-int/lit16 v1, v1, 0xff

    .line 14
    iget-object v2, p0, Lg4/e;->a:Li4/b;

    .line 16
    invoke-virtual {v2}, Li4/b;->a()B

    .line 19
    move-result v2

    .line 20
    xor-int/2addr v1, v2

    .line 21
    and-int/lit16 v1, v1, 0xff

    .line 23
    iget-object v2, p0, Lg4/e;->a:Li4/b;

    .line 25
    int-to-byte v1, v1

    .line 26
    invoke-virtual {v2, v1}, Li4/b;->c(B)V

    .line 29
    aput-byte v1, p2, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_5

    .line 34
    :cond_21
    return p3

    .line 35
    :cond_22
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 37
    const-string p2, "one of the input parameters were null in standard decrypt data"

    .line 39
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method
