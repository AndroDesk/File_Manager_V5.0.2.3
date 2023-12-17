.class public final Lcn/kuaipan/android/http/KscHttpRequest;
.super Ljava/lang/Object;
.source "KscHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;
    }
.end annotation


# instance fields
.field public final a:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

.field public b:Landroid/net/Uri;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lorg/apache/http/entity/AbstractHttpEntity;

.field public final e:Lp1/h;

.field public final f:Lm1/c;

.field public g:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lp1/h;Lp1/b$a;)V

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lp1/b$a;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lp1/h;Lp1/b$a;)V

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lp1/h;Lp1/b$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->a:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    iput-object p2, p0, Lcn/kuaipan/android/http/KscHttpRequest;->b:Landroid/net/Uri;

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    iput-object p3, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lp1/h;

    iput-object p4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->f:Lm1/c;

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;Lp1/h;)V
    .registers 5

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lp1/h;Lp1/b$a;)V

    return-void
.end method

.method public static g(Ljava/util/ArrayList;)[Lo1/f;
    .registers 8

    if-eqz p0, :cond_62

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_62

    :cond_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lo1/f;

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_61

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    instance-of v4, v3, Lo1/d;

    if-eqz v4, :cond_39

    :try_start_1c
    new-instance v4, Lo1/c;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lo1/d;

    invoke-direct {v4, v5}, Lo1/c;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v2
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_2a} :catch_2b

    goto :goto_5e

    :catch_2b
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    check-cast v3, Lo1/d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "The file to be sent should be exist. file=null"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_39
    instance-of v4, v3, Lo1/b;

    if-eqz v4, :cond_4f

    new-instance v4, Lo1/c;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    check-cast v3, Lo1/b;

    invoke-direct {v4, v5, v6}, Lo1/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2

    goto :goto_5e

    :cond_4f
    new-instance v4, Lo1/i;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lo1/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2

    :goto_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_61
    return-object v1

    :cond_62
    :goto_62
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .registers 4

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    if-eqz v0, :cond_15

    instance-of v1, v0, Lo1/e;

    if-nez v1, :cond_15

    invoke-static {v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->isEncoded(Lorg/apache/http/HttpEntity;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Http not support send form data and binary data in one request."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HttpRequest has been created. All input can\'t be changed."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/util/ArrayList;)V
    .registers 5

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    if-nez v0, :cond_37

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->b:Landroid/net/Uri;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_10

    :cond_28
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->b:Landroid/net/Uri;

    return-void

    :cond_2f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "A uri should be set firstly"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HttpRequest has been created. All input can\'t be changed."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Lp1/h;
    .registers 2

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lp1/h;

    return-object v0
.end method

.method public final d()Lm1/c;
    .registers 2

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->f:Lm1/c;

    return-object v0
.end method

.method public final e()Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 10

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    if-nez v0, :cond_119

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    goto :goto_20

    :cond_b
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "https"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_22

    :cond_20
    :goto_20
    move v0, v1

    goto :goto_23

    :cond_22
    :goto_22
    move v0, v2

    :goto_23
    if-eqz v0, :cond_104

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/kuaipan/android/http/KscHttpRequest;->a:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    if-nez v3, :cond_40

    iget-object v3, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    if-nez v3, :cond_3e

    iget-object v3, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3e

    sget-object v3, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->GET:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    goto :goto_40

    :cond_3e
    sget-object v3, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->POST:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    :cond_40
    :goto_40
    const/4 v4, 0x0

    sget-object v5, Lcn/kuaipan/android/http/KscHttpRequest$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    const-string v5, "KscHttpRequest"

    if-eq v3, v2, :cond_eb

    const/4 v6, 0x2

    if-eq v3, v6, :cond_52

    goto/16 :goto_101

    :cond_52
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e5

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    iget-object v3, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6d

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    goto/16 :goto_d6

    :cond_6d
    if-eqz v0, :cond_74

    instance-of v6, v0, Lo1/e;

    if-eqz v6, :cond_74

    move v1, v2

    :cond_74
    if-nez v1, :cond_8f

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/NameValuePair;

    instance-of v8, v7, Lo1/d;

    if-nez v8, :cond_90

    instance-of v7, v7, Lo1/b;

    if-eqz v7, :cond_7a

    goto :goto_90

    :cond_8f
    move v2, v1

    :cond_90
    :goto_90
    if-eqz v2, :cond_cd

    if-eqz v0, :cond_a2

    instance-of v1, v0, Lo1/e;

    if-eqz v1, :cond_a2

    check-cast v0, Lo1/e;

    invoke-static {v3}, Lcn/kuaipan/android/http/KscHttpRequest;->g(Ljava/util/ArrayList;)[Lo1/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo1/e;->a([Lo1/f;)V

    goto :goto_d6

    :cond_a2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_bf

    :try_start_a9
    invoke-static {v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Lorg/apache/http/HttpEntity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b0} :catch_b1

    goto :goto_bf

    :catch_b1
    move-exception v0

    const-string v1, "Failed parse an user entity."

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed parse an user entity. The user entity should be parseable by URLEncodedUtils.parse(HttpEntity)"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_bf
    :goto_bf
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcn/kuaipan/android/http/KscHttpRequest;->g(Ljava/util/ArrayList;)[Lo1/f;

    move-result-object v0

    new-instance v1, Lo1/e;

    invoke-direct {v1, v0}, Lo1/e;-><init>([Lo1/f;)V

    move-object v0, v1

    goto :goto_d6

    :cond_cd
    :try_start_cd
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_cd .. :try_end_d6} :catch_d9

    :goto_d6
    iput-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    goto :goto_e5

    :catch_d9
    move-exception v0

    const-string v1, "JVM not support UTF_8?"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_e5
    :goto_e5
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_101

    :cond_eb
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    if-nez v0, :cond_fc

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_101

    :cond_fc
    const-string v0, "Post data is not empty, but method is GET. All post data is lost."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_101
    :goto_101
    iput-object v4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_119

    :cond_104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request uri is not valid. uri="

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuaipan/android/http/KscHttpRequest;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_119
    :goto_119
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public final f(Lr1/a;)V
    .registers 3

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    if-nez v0, :cond_1c

    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    instance-of v0, p1, Lo1/e;

    if-nez v0, :cond_13

    invoke-static {p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->isEncoded(Lorg/apache/http/HttpEntity;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    if-nez p1, :cond_1b

    iget-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1b
    return-void

    :cond_1c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HttpRequest has been created. All input can\'t be changed."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
