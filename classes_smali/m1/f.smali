.class public final Lm1/f;
.super Ljava/lang/Object;
.source "KscHttpResponse.java"


# instance fields
.field public final a:Lm1/l;

.field public b:Lorg/apache/http/client/methods/HttpUriRequest;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/HttpMessage;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lorg/apache/http/HttpResponse;

.field public e:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm1/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/f;->a:Lm1/l;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lm1/f;->c:Ljava/util/List;

    const/4 v2, 0x0

    const-string v3, "]\n"

    if-eqz v1, :cond_65

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/HttpMessage;

    instance-of v6, v5, Lorg/apache/http/HttpRequest;

    if-eqz v6, :cond_41

    const-string v6, "[Request "

    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v5, Lorg/apache/http/HttpRequest;

    invoke-static {v5}, Ls1/e;->g(Lorg/apache/http/HttpRequest;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move v4, v7

    goto :goto_11

    :cond_41
    instance-of v6, v5, Lorg/apache/http/HttpResponse;

    if-eqz v6, :cond_11

    const-string v6, "[Response "

    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v5, Lorg/apache/http/HttpResponse;

    invoke-static {v5}, Ls1/e;->h(Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move v2, v7

    goto :goto_11

    :cond_65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_79

    const-string v1, "[Origin Request]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm1/f;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {v1}, Ls1/e;->g(Lorg/apache/http/HttpRequest;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    :cond_79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n[Response "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    invoke-static {v1}, Ls1/e;->h(Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm1/f;->e:Ljava/lang/Throwable;

    if-eqz v1, :cond_ab

    const-string v1, "\n[Error]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm1/f;->e:Ljava/lang/Throwable;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ab
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password=.*&"

    const-string v2, "password=[secData]&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/io/InputStream;
    .registers 4

    iget-object v0, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_b

    :cond_7
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    :goto_b
    if-nez v0, :cond_e

    return-object v1

    :cond_e
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_1d

    :cond_19
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_1d
    if-eqz v1, :cond_2d

    const-string v0, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v0

    :cond_2d
    return-object v2
.end method

.method public final c()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lm1/f;->e:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final d()Lorg/apache/http/HttpResponse;
    .registers 2

    iget-object v0, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public final e()I
    .registers 2

    iget-object v0, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    :goto_10
    return v0
.end method

.method public final f(Lcn/kuaipan/android/http/KscHttpRequest;Lorg/apache/http/HttpResponse;Z)V
    .registers 5

    invoke-virtual {p1}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    iput-object v0, p0, Lm1/f;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p2, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    invoke-virtual {p1}, Lcn/kuaipan/android/http/KscHttpRequest;->c()Lp1/h;

    move-result-object p1

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_28

    if-eqz p3, :cond_1e

    iget-object p3, p0, Lm1/f;->a:Lm1/l;

    invoke-static {v0, p1, p3}, Lm1/e;->a(Lorg/apache/http/HttpEntity;Lp1/h;Lm1/l;)Lm1/e;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_28

    :cond_1e
    if-eqz p1, :cond_28

    new-instance p3, Lm1/e;

    invoke-direct {p3, v0, p1}, Lm1/e;-><init>(Lorg/apache/http/HttpEntity;Lp1/h;)V

    invoke-interface {p2, p3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public final g()V
    .registers 5

    iget-object v0, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_27

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_22
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_19
    .catchall {:try_start_b .. :try_end_14} :catchall_17

    :goto_14
    iput-object v0, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    goto :goto_27

    :catchall_17
    move-exception v1

    goto :goto_24

    :catch_19
    move-exception v1

    :try_start_1a
    const-string v2, "KscHttpResponse"

    const-string v3, "Meet exception when release a KscHttpResponse."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :catch_22
    move-exception v1

    throw v1
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_17

    :goto_24
    iput-object v0, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    throw v1

    :cond_27
    :goto_27
    return-void
.end method

.method public final h(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Lm1/f;->e:Ljava/lang/Throwable;

    return-void
.end method

.method public final i(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/HttpMessage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lm1/f;->c:Ljava/util/List;

    return-void
.end method

.method public final j(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 2

    iput-object p1, p0, Lm1/f;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    return-void
.end method
