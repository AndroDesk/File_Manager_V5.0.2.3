.class public final Lr1/a;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "KssInputStreamEntity.java"


# instance fields
.field public final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lm1/b;J)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 4
    const-wide/32 v0, 0x7fffffff

    .line 7
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 10
    move-result-wide p2

    .line 11
    long-to-int p2, p2

    .line 12
    invoke-virtual {p1, p2}, Lm1/b;->mark(I)V

    .line 15
    iput-object p1, p0, Lr1/a;->a:Ljava/io/InputStream;

    .line 17
    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .registers 2

    .line 1
    iget-object v0, p0, Lr1/a;->a:Ljava/io/InputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 6
    invoke-super {p0}, Lorg/apache/http/entity/InputStreamEntity;->getContent()Ljava/io/InputStream;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final isRepeatable()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lorg/apache/http/entity/InputStreamEntity;->isRepeatable()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_11

    .line 7
    iget-object v0, p0, Lr1/a;->a:Ljava/io/InputStream;

    .line 9
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 19
    :goto_12
    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lr1/a;->a:Ljava/io/InputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 6
    invoke-super {p0, p1}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 9
    return-void
.end method
