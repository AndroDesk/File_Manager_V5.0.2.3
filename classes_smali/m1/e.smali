.class public final Lm1/e;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "KscHttpEntity.java"


# instance fields
.field public final a:Lp1/h;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lp1/h;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 4
    iput-object p2, p0, Lm1/e;->a:Lp1/h;

    .line 6
    return-void
.end method

.method public static a(Lorg/apache/http/HttpEntity;Lp1/h;Lm1/l;)Lm1/e;
    .registers 4

    .line 1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    goto :goto_d

    .line 8
    :cond_7
    new-instance v0, Lm1/d;

    .line 10
    invoke-direct {v0, p0, p2}, Lm1/d;-><init>(Lorg/apache/http/HttpEntity;Lm1/l;)V

    .line 13
    move-object p0, v0

    .line 14
    :goto_d
    new-instance p2, Lm1/e;

    .line 16
    invoke-direct {p2, p0, p1}, Lm1/e;-><init>(Lorg/apache/http/HttpEntity;Lp1/h;)V

    .line 19
    return-object p2
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .registers 4

    .line 1
    iget-object v0, p0, Lm1/e;->a:Lp1/h;

    .line 3
    if-nez v0, :cond_9

    .line 5
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_14

    .line 10
    :cond_9
    new-instance v0, Lm1/b;

    .line 12
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lm1/e;->a:Lp1/h;

    .line 18
    invoke-direct {v0, v1, v2}, Lm1/b;-><init>(Ljava/io/InputStream;Lp1/h;)V

    .line 21
    :goto_14
    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 6

    .line 1
    if-eqz p1, :cond_17

    .line 3
    invoke-virtual {p0}, Lm1/e;->getContent()Ljava/io/InputStream;

    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x2000

    .line 9
    new-array v1, v1, [B

    .line 11
    :goto_a
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 14
    move-result v2

    .line 15
    const/4 v3, -0x1

    .line 16
    if-eq v2, v3, :cond_16

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 22
    goto :goto_a

    .line 23
    :cond_16
    return-void

    .line 24
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    const-string v0, "Output stream may not be null"

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1
.end method
