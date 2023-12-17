.class public final Lo1/a;
.super Ljava/lang/Object;
.source "ByteArrayPartSource.java"

# interfaces
.implements Lo1/h;
.implements Lg4/d;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lo1/a;->a:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lo1/a;->b:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lo1/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    iput p1, p0, Lo1/a;->a:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_16

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lo1/a;->b:Ljava/lang/Object;

    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 3
    iput-object p1, p0, Lo1/a;->c:Ljava/lang/Object;

    return-void

    .line 4
    :cond_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo1/a;->b:Ljava/lang/Object;

    .line 6
    new-instance p1, Lm4/c;

    invoke-direct {p1}, Lm4/c;-><init>()V

    iput-object p1, p0, Lo1/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lo1/a;->a:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo1/a;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lo1/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([CJZ)V
    .registers 11

    const/4 v0, 0x3

    iput v0, p0, Lo1/a;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Li4/b;

    invoke-direct {v0}, Li4/b;-><init>()V

    iput-object v0, p0, Lo1/a;->b:Ljava/lang/Object;

    if-eqz p1, :cond_57

    .line 9
    array-length v1, p1

    if-lez v1, :cond_57

    .line 10
    invoke-virtual {v0, p1, p4}, Li4/b;->b([CZ)V

    const/16 v0, 0xc

    new-array v1, v0, [B

    .line 11
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_20
    if-ge v4, v0, :cond_32

    const/16 v5, 0x100

    .line 12
    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {p0, v5}, Lo1/a;->b(B)B

    move-result v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 13
    :cond_32
    iput-object v1, p0, Lo1/a;->c:Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lo1/a;->b:Ljava/lang/Object;

    check-cast v0, Li4/b;

    invoke-virtual {v0, p1, p4}, Li4/b;->b([CZ)V

    .line 15
    iget-object p1, p0, Lo1/a;->c:Ljava/lang/Object;

    check-cast p1, [B

    const/16 p4, 0xb

    const/16 v0, 0x18

    ushr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p4

    const/16 p4, 0xa

    const/16 v0, 0x10

    ushr-long/2addr p2, v0

    long-to-int p2, p2

    int-to-byte p2, p2

    .line 16
    aput-byte p2, p1, p4

    .line 17
    array-length p2, p1

    invoke-virtual {p0, v3, p1, p2}, Lo1/a;->a(I[BI)I

    return-void

    .line 18
    :cond_57
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input password is null or empty, cannot initialize standard encrypter"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I[BI)I
    .registers 6

    .line 1
    if-ltz p3, :cond_13

    .line 3
    move v0, p1

    .line 4
    :goto_3
    add-int v1, p1, p3

    .line 6
    if-ge v0, v1, :cond_12

    .line 8
    aget-byte v1, p2, v0

    .line 10
    invoke-virtual {p0, v1}, Lo1/a;->b(B)B

    .line 13
    move-result v1

    .line 14
    aput-byte v1, p2, v0

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 18
    goto :goto_3

    .line 19
    :cond_12
    return p3

    .line 20
    :cond_13
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 22
    const-string p2, "invalid length specified to decrpyt data"

    .line 24
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method

.method public final b(B)B
    .registers 4

    .line 1
    iget-object v0, p0, Lo1/a;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Li4/b;

    .line 5
    invoke-virtual {v0}, Li4/b;->a()B

    .line 8
    move-result v0

    .line 9
    and-int/lit16 v0, v0, 0xff

    .line 11
    xor-int/2addr v0, p1

    .line 12
    int-to-byte v0, v0

    .line 13
    iget-object v1, p0, Lo1/a;->b:Ljava/lang/Object;

    .line 15
    check-cast v1, Li4/b;

    .line 17
    invoke-virtual {v1, p1}, Li4/b;->c(B)V

    .line 20
    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Lo1/a;->a:I

    .line 3
    packed-switch v0, :pswitch_data_14

    .line 6
    goto :goto_b

    .line 7
    :pswitch_6  #0x0
    iget-object v0, p0, Lo1/a;->b:Ljava/lang/Object;

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :goto_b
    iget-object v0, p0, Lo1/a;->b:Ljava/lang/Object;

    .line 14
    check-cast v0, Ljava/lang/String;

    .line 16
    if-nez v0, :cond_13

    .line 18
    const-string v0, "noname"

    .line 20
    :cond_13
    return-object v0

    .line 21
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
