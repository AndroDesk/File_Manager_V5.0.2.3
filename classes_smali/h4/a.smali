.class public final Lh4/a;
.super Ljava/lang/Object;
.source "MacBasedPRF.java"


# instance fields
.field public a:Ljavax/crypto/Mac;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    :try_start_e
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lh4/a;->a:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p1

    iput p1, p0, Lh4/a;->b:I
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .registers 7

    iget-object v0, p0, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    :goto_9
    if-ge p1, v1, :cond_1b

    add-int/lit8 v2, p1, 0x10

    if-gt v2, v1, :cond_12

    const/16 v3, 0x10

    goto :goto_14

    :cond_12
    sub-int v3, v1, p1

    :goto_14
    iget-object v4, p0, Lh4/a;->a:Ljavax/crypto/Mac;

    invoke-virtual {v4, v0, p1, v3}, Ljavax/crypto/Mac;->update([BII)V

    move p1, v2

    goto :goto_9

    :cond_1b
    iget-object p1, p0, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method
