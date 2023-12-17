.class public final Lm1/d;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "KscBufferedHttpEntity.java"


# instance fields
.field public final a:Lm1/p;

.field public final b:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lm1/l;)V
    .registers 9

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 4
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_18

    .line 11
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    .line 14
    move-result-wide v2

    .line 15
    const-wide/16 v4, 0x0

    .line 17
    cmp-long v0, v2, v4

    .line 19
    if-gez v0, :cond_15

    .line 21
    goto :goto_18

    .line 22
    :cond_15
    iput-object v1, p0, Lm1/d;->a:Lm1/p;

    .line 24
    goto :goto_28

    .line 25
    :cond_18
    :goto_18
    :try_start_18
    new-instance v0, Lm1/p;

    .line 27
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1, p2}, Lm1/p;-><init>(Ljava/io/InputStream;Lm1/l;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_24

    .line 34
    move-object p1, v1

    .line 35
    move-object v1, v0

    .line 36
    goto :goto_25

    .line 37
    :catch_24
    move-exception p1

    .line 38
    :goto_25
    iput-object v1, p0, Lm1/d;->a:Lm1/p;

    .line 40
    move-object v1, p1

    .line 41
    :goto_28
    iput-object v1, p0, Lm1/d;->b:Ljava/io/IOException;

    .line 43
    return-void
.end method


# virtual methods
.method public final consumeContent()V
    .registers 2

    .line 1
    iget-object v0, p0, Lm1/d;->a:Lm1/p;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lm1/p;->a()V

    .line 8
    :cond_7
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V

    .line 11
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .registers 3

    .line 1
    iget-object v0, p0, Lm1/d;->a:Lm1/p;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    new-instance v0, Lm1/a;

    .line 7
    iget-object v1, p0, Lm1/d;->a:Lm1/p;

    .line 9
    invoke-direct {v0, v1}, Lm1/a;-><init>(Lm1/p;)V

    .line 12
    return-object v0

    .line 13
    :cond_c
    iget-object v0, p0, Lm1/d;->b:Ljava/io/IOException;

    .line 15
    if-nez v0, :cond_17

    .line 17
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    .line 19
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_17
    throw v0
.end method

.method public final getContentLength()J
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    .line 3
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final isChunked()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lm1/d;->a:Lm1/p;

    .line 3
    if-nez v0, :cond_e

    .line 5
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    .line 7
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
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

    .line 1
    iget-object v0, p0, Lm1/d;->a:Lm1/p;

    .line 3
    if-nez v0, :cond_e

    .line 5
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    .line 7
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 6

    .line 1
    if-eqz p1, :cond_2c

    .line 3
    iget-object v0, p0, Lm1/d;->a:Lm1/p;

    .line 5
    if-eqz v0, :cond_26

    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_7
    invoke-virtual {p0}, Lm1/d;->getContent()Ljava/io/InputStream;

    .line 11
    move-result-object v0

    .line 12
    const/16 v1, 0x1000

    .line 14
    new-array v1, v1, [B

    .line 16
    :goto_f
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 19
    move-result v2

    .line 20
    const/4 v3, -0x1

    .line 21
    if-eq v2, v3, :cond_1b

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1f

    .line 27
    goto :goto_f

    .line 28
    :cond_1b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 31
    goto :goto_2b

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    if-eqz v0, :cond_25

    .line 35
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 38
    :cond_25
    throw p1

    .line 39
    :cond_26
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    .line 41
    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 44
    :goto_2b
    return-void

    .line 45
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    const-string v0, "Output stream may not be null"

    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1
.end method
