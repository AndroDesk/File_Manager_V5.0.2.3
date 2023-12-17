.class public final Lh4/a;
.super Ljava/lang/Object;
.source "MacBasedPRF.java"


# instance fields
.field public a:Ljavax/crypto/Mac;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lh4/a;->c:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 8
    const/16 v1, 0x1000

    .line 10
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 13
    iput-object v0, p0, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    .line 15
    :try_start_e
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lh4/a;->a:Ljavax/crypto/Mac;

    .line 21
    invoke-virtual {p1}, Ljavax/crypto/Mac;->getMacLength()I

    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lh4/a;->b:I
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_1a} :catch_1b

    .line 27
    return-void

    .line 28
    :catch_1b
    move-exception p1

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    throw v0
.end method


# virtual methods
.method public final a(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    sub-int/2addr v1, p1

    .line 9
    const/4 p1, 0x0

    .line 10
    :goto_9
    if-ge p1, v1, :cond_1b

    .line 12
    add-int/lit8 v2, p1, 0x10

    .line 14
    if-gt v2, v1, :cond_12

    .line 16
    const/16 v3, 0x10

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    sub-int v3, v1, p1

    .line 21
    :goto_14
    iget-object v4, p0, Lh4/a;->a:Ljavax/crypto/Mac;

    .line 23
    invoke-virtual {v4, v0, p1, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 26
    move p1, v2

    .line 27
    goto :goto_9

    .line 28
    :cond_1b
    iget-object p1, p0, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    .line 30
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 33
    return-void
.end method
