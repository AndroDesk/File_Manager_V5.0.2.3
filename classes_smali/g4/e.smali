.class public final Lg4/e;
.super Ljava/lang/Object;
.source "StandardDecrypter.java"

# interfaces
.implements Lg4/c;


# instance fields
.field public a:Li4/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(JJZ[B[C)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li4/b;

    invoke-direct {v0}, Li4/b;-><init>()V

    iput-object v0, p0, Lg4/e;->a:Li4/b;

    const-string v1, "Wrong password!"

    if-eqz p7, :cond_51

    array-length v2, p7

    if-lez v2, :cond_51

    invoke-virtual {v0, p7, p5}, Li4/b;->b([CZ)V

    const/4 p5, 0x0

    aget-byte p7, p6, p5

    :cond_17
    :goto_17
    const/16 v0, 0xc

    if-ge p5, v0, :cond_50

    add-int/lit8 p5, p5, 0x1

    if-ne p5, v0, :cond_40

    iget-object v2, p0, Lg4/e;->a:Li4/b;

    invoke-virtual {v2}, Li4/b;->a()B

    move-result v2

    xor-int/2addr v2, p7

    int-to-byte v2, v2

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    if-eq v2, v3, :cond_40

    const/16 v3, 0x8

    shr-long v3, p3, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    if-ne v2, v3, :cond_38

    goto :goto_40

    :cond_38
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    sget-object p2, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {p1, v1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw p1

    :cond_40
    :goto_40
    iget-object v2, p0, Lg4/e;->a:Li4/b;

    invoke-virtual {v2}, Li4/b;->a()B

    move-result v3

    xor-int/2addr v3, p7

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Li4/b;->c(B)V

    if-eq p5, v0, :cond_17

    aget-byte p7, p6, p5

    goto :goto_17

    :cond_50
    return-void

    :cond_51
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    sget-object p2, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {p1, v1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw p1
.end method


# virtual methods
.method public final a(I[BI)I
    .registers 7

    if-ltz p1, :cond_22

    if-ltz p3, :cond_22

    move v0, p1

    :goto_5
    add-int v1, p1, p3

    if-ge v0, v1, :cond_21

    aget-byte v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lg4/e;->a:Li4/b;

    invoke-virtual {v2}, Li4/b;->a()B

    move-result v2

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lg4/e;->a:Li4/b;

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Li4/b;->c(B)V

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_21
    return p3

    :cond_22
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "one of the input parameters were null in standard decrypt data"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
