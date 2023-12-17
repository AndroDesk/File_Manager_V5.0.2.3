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
.method public constructor <init>(Lm1/l;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lm1/f;->a:Lm1/l;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lm1/f;->c:Ljava/util/List;

    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "]\n"

    .line 11
    if-eqz v1, :cond_65

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 17
    move v4, v2

    .line 18
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_65

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lorg/apache/http/HttpMessage;

    .line 30
    instance-of v6, v5, Lorg/apache/http/HttpRequest;

    .line 32
    if-eqz v6, :cond_41

    .line 34
    const-string v6, "[Request "

    .line 36
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v6

    .line 40
    add-int/lit8 v7, v4, 0x1

    .line 42
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    check-cast v5, Lorg/apache/http/HttpRequest;

    .line 57
    invoke-static {v5}, Ls1/e;->g(Lorg/apache/http/HttpRequest;)Ljava/lang/StringBuffer;

    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 64
    move v4, v7

    .line 65
    goto :goto_11

    .line 66
    :cond_41
    instance-of v6, v5, Lorg/apache/http/HttpResponse;

    .line 68
    if-eqz v6, :cond_11

    .line 70
    const-string v6, "[Response "

    .line 72
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    move-result-object v6

    .line 76
    add-int/lit8 v7, v2, 0x1

    .line 78
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    check-cast v5, Lorg/apache/http/HttpResponse;

    .line 93
    invoke-static {v5}, Ls1/e;->h(Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuffer;

    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 100
    move v2, v7

    .line 101
    goto :goto_11

    .line 102
    :cond_65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 105
    move-result v1

    .line 106
    if-gtz v1, :cond_79

    .line 108
    const-string v1, "[Origin Request]\n"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Lm1/f;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 115
    invoke-static {v1}, Ls1/e;->g(Lorg/apache/http/HttpRequest;)Ljava/lang/StringBuffer;

    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 122
    :cond_79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const-string v4, "\n[Response "

    .line 129
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    .line 147
    invoke-static {v1}, Ls1/e;->h(Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuffer;

    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v1, p0, Lm1/f;->e:Ljava/lang/Throwable;

    .line 156
    if-eqz v1, :cond_ab

    .line 158
    const-string v1, "\n[Error]\n"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v1, p0, Lm1/f;->e:Ljava/lang/Throwable;

    .line 165
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_ab
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    const-string v1, "password=.*&"

    .line 178
    const-string v2, "password=[secData]&"

    .line 180
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 184
    return-object v0
.end method

.method public final b()Ljava/io/InputStream;
    .registers 4

    .line 1
    iget-object v0, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_7

    .line 6
    move-object v0, v1

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    if-nez v0, :cond_e

    .line 14
    return-object v1

    .line 15
    :cond_e
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_19

    .line 25
    goto :goto_1d

    .line 26
    :cond_19
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    :goto_1d
    if-eqz v1, :cond_2d

    .line 32
    const-string v0, "gzip"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2d

    .line 40
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 42
    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    move-object v2, v0

    .line 46
    :cond_2d
    return-object v2
.end method

.method public final c()Ljava/lang/Throwable;
    .registers 2

    .line 1
    iget-object v0, p0, Lm1/f;->e:Ljava/lang/Throwable;

    .line 3
    return-object v0
.end method

.method public final d()Lorg/apache/http/HttpResponse;
    .registers 2

    .line 1
    iget-object v0, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    .line 3
    return-object v0
.end method

.method public final e()I
    .registers 2

    .line 1
    iget-object v0, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_f

    .line 11
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 14
    move-result v0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, -0x1

    .line 17
    :goto_10
    return v0
.end method

.method public final f(Lcn/kuaipan/android/http/KscHttpRequest;Lorg/apache/http/HttpResponse;Z)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lm1/f;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 7
    iput-object p2, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    .line 9
    invoke-virtual {p1}, Lcn/kuaipan/android/http/KscHttpRequest;->c()Lp1/h;

    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_28

    .line 19
    if-eqz p3, :cond_1e

    .line 21
    iget-object p3, p0, Lm1/f;->a:Lm1/l;

    .line 23
    invoke-static {v0, p1, p3}, Lm1/e;->a(Lorg/apache/http/HttpEntity;Lp1/h;Lm1/l;)Lm1/e;

    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, p1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 30
    goto :goto_28

    .line 31
    :cond_1e
    if-eqz p1, :cond_28

    .line 33
    new-instance p3, Lm1/e;

    .line 35
    invoke-direct {p3, v0, p1}, Lm1/e;-><init>(Lorg/apache/http/HttpEntity;Lp1/h;)V

    .line 38
    invoke-interface {p2, p3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 41
    :cond_28
    :goto_28
    return-void
.end method

.method public final g()V
    .registers 5

    .line 1
    iget-object v0, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    .line 3
    if-eqz v0, :cond_27

    .line 5
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_27

    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_b
    iget-object v1, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    .line 14
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_22
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_19
    .catchall {:try_start_b .. :try_end_14} :catchall_17

    .line 21
    :goto_14
    iput-object v0, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    .line 23
    goto :goto_27

    .line 24
    :catchall_17
    move-exception v1

    .line 25
    goto :goto_24

    .line 26
    :catch_19
    move-exception v1

    .line 27
    :try_start_1a
    const-string v2, "KscHttpResponse"

    .line 29
    const-string v3, "Meet exception when release a KscHttpResponse."

    .line 31
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    goto :goto_14

    .line 35
    :catch_22
    move-exception v1

    .line 36
    throw v1
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_17

    .line 37
    :goto_24
    iput-object v0, p0, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    .line 39
    throw v1

    .line 40
    :cond_27
    :goto_27
    return-void
.end method

.method public final h(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lm1/f;->e:Ljava/lang/Throwable;

    .line 3
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

    .line 1
    iput-object p1, p0, Lm1/f;->c:Ljava/util/List;

    .line 3
    return-void
.end method

.method public final j(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lm1/f;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 3
    return-void
.end method
