.class public final Lm1/e;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "KscHttpEntity.java"


# instance fields
.field public final a:Lp1/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpEntity;Lp1/h;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    iput-object p2, p0, Lm1/e;->a:Lp1/h;

    return-void
.end method

.method public static a(Lorg/apache/http/HttpEntity;Lp1/h;Lm1/l;)Lm1/e;
    .registers 4

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_d

    :cond_7
    new-instance v0, Lm1/d;

    invoke-direct {v0, p0, p2}, Lm1/d;-><init>(Lorg/apache/http/HttpEntity;Lm1/l;)V

    move-object p0, v0

    :goto_d
    new-instance p2, Lm1/e;

    invoke-direct {p2, p0, p1}, Lm1/e;-><init>(Lorg/apache/http/HttpEntity;Lp1/h;)V

    return-object p2
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .registers 4

    iget-object v0, p0, Lm1/e;->a:Lp1/h;

    if-nez v0, :cond_9

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_14

    :cond_9
    new-instance v0, Lm1/b;

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lm1/e;->a:Lp1/h;

    invoke-direct {v0, v1, v2}, Lm1/b;-><init>(Ljava/io/InputStream;Lp1/h;)V

    :goto_14
    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 6

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lm1/e;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_a
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_a

    :cond_16
    return-void

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
