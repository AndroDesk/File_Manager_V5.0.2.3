.class public final Lm1/d;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "KscBufferedHttpEntity.java"


# instance fields
.field public final a:Lm1/p;

.field public final b:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpEntity;Lm1/l;)V
    .registers 9

    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_15

    goto :goto_18

    :cond_15
    iput-object v1, p0, Lm1/d;->a:Lm1/p;

    goto :goto_28

    :cond_18
    :goto_18
    :try_start_18
    new-instance v0, Lm1/p;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lm1/p;-><init>(Ljava/io/InputStream;Lm1/l;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_24

    move-object p1, v1

    move-object v1, v0

    goto :goto_25

    :catch_24
    move-exception p1

    :goto_25
    iput-object v1, p0, Lm1/d;->a:Lm1/p;

    move-object v1, p1

    :goto_28
    iput-object v1, p0, Lm1/d;->b:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final consumeContent()V
    .registers 2

    iget-object v0, p0, Lm1/d;->a:Lm1/p;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lm1/p;->a()V

    :cond_7
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V

    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lm1/d;->a:Lm1/p;

    if-eqz v0, :cond_c

    new-instance v0, Lm1/a;

    iget-object v1, p0, Lm1/d;->a:Lm1/p;

    invoke-direct {v0, v1}, Lm1/a;-><init>(Lm1/p;)V

    return-object v0

    :cond_c
    iget-object v0, p0, Lm1/d;->b:Ljava/io/IOException;

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_17
    throw v0
.end method

.method public final getContentLength()J
    .registers 3

    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isChunked()Z
    .registers 2

    iget-object v0, p0, Lm1/d;->a:Lm1/p;

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final isRepeatable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final isStreaming()Z
    .registers 2

    iget-object v0, p0, Lm1/d;->a:Lm1/p;

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 6

    if-eqz p1, :cond_2c

    iget-object v0, p0, Lm1/d;->a:Lm1/p;

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0}, Lm1/d;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_f
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1f

    goto :goto_f

    :cond_1b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_2b

    :catchall_1f
    move-exception p1

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_25
    throw p1

    :cond_26
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    :goto_2b
    return-void

    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
