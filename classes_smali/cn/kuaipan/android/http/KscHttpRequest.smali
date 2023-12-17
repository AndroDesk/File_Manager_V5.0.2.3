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
.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lp1/h;Lp1/b$a;)V

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lp1/b$a;)V
    .registers 5

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lp1/h;Lp1/b$a;)V

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lp1/h;Lp1/b$a;)V
    .registers 6

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    .line 6
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->a:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 7
    iput-object p2, p0, Lcn/kuaipan/android/http/KscHttpRequest;->b:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 9
    iput-object p3, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lp1/h;

    .line 10
    iput-object p4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->f:Lm1/c;

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;Lp1/h;)V
    .registers 5

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lp1/h;Lp1/b$a;)V

    return-void
.end method

.method public static g(Ljava/util/ArrayList;)[Lo1/f;
    .registers 8

    .line 1
    if-eqz p0, :cond_62

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_62

    .line 10
    :cond_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    new-array v1, v0, [Lo1/f;

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_10
    if-ge v2, v0, :cond_61

    .line 19
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 25
    instance-of v4, v3, Lo1/d;

    .line 27
    if-eqz v4, :cond_39

    .line 29
    :try_start_1c
    new-instance v4, Lo1/c;

    .line 31
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    .line 34
    move-result-object v5

    .line 35
    move-object v6, v3

    .line 36
    check-cast v6, Lo1/d;

    .line 38
    invoke-direct {v4, v5}, Lo1/c;-><init>(Ljava/lang/String;)V

    .line 41
    aput-object v4, v1, v2
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_2a} :catch_2b

    .line 43
    goto :goto_5e

    .line 44
    :catch_2b
    move-exception p0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    .line 47
    check-cast v3, Lo1/d;

    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    const-string v1, "The file to be sent should be exist. file=null"

    .line 54
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    throw v0

    .line 58
    :cond_39
    instance-of v4, v3, Lo1/b;

    .line 60
    if-eqz v4, :cond_4f

    .line 62
    new-instance v4, Lo1/c;

    .line 64
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    .line 67
    move-result-object v5

    .line 68
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    .line 71
    move-result-object v6

    .line 72
    check-cast v3, Lo1/b;

    .line 74
    invoke-direct {v4, v5, v6}, Lo1/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    aput-object v4, v1, v2

    .line 79
    goto :goto_5e

    .line 80
    :cond_4f
    new-instance v4, Lo1/i;

    .line 82
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    .line 85
    move-result-object v5

    .line 86
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    invoke-direct {v4, v5, v3}, Lo1/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    aput-object v4, v1, v2

    .line 95
    :goto_5e
    add-int/lit8 v2, v2, 0x1

    .line 97
    goto :goto_10

    .line 98
    :cond_61
    return-object v1

    .line 99
    :cond_62
    :goto_62
    const/4 p0, 0x0

    .line 100
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 3
    if-nez v0, :cond_26

    .line 5
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 7
    if-eqz v0, :cond_15

    .line 9
    instance-of v1, v0, Lo1/e;

    .line 11
    if-nez v1, :cond_15

    .line 13
    invoke-static {v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->isEncoded(Lorg/apache/http/HttpEntity;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 23
    :goto_16
    if-eqz v0, :cond_1e

    .line 25
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    return-void

    .line 31
    :cond_1e
    new-instance p1, Ljava/lang/RuntimeException;

    .line 33
    const-string v0, "Http not support send form data and binary data in one request."

    .line 35
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1

    .line 39
    :cond_26
    new-instance p1, Ljava/lang/RuntimeException;

    .line 41
    const-string v0, "HttpRequest has been created. All input can\'t be changed."

    .line 43
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1
.end method

.method public final b(Ljava/util/ArrayList;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 3
    if-nez v0, :cond_37

    .line 5
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->b:Landroid/net/Uri;

    .line 7
    if-eqz v0, :cond_2f

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 17
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_28

    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 29
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    goto :goto_10

    .line 41
    :cond_28
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->b:Landroid/net/Uri;

    .line 47
    return-void

    .line 48
    :cond_2f
    new-instance p1, Ljava/lang/RuntimeException;

    .line 50
    const-string v0, "A uri should be set firstly"

    .line 52
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1

    .line 56
    :cond_37
    new-instance p1, Ljava/lang/RuntimeException;

    .line 58
    const-string v0, "HttpRequest has been created. All input can\'t be changed."

    .line 60
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1
.end method

.method public final c()Lp1/h;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lp1/h;

    .line 3
    return-object v0
.end method

.method public final d()Lm1/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->f:Lm1/c;

    .line 3
    return-object v0
.end method

.method public final e()Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 10

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 3
    if-nez v0, :cond_119

    .line 5
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->b:Landroid/net/Uri;

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_20

    .line 12
    :cond_b
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v3, "http"

    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_22

    .line 24
    const-string v3, "https"

    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_20

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    :goto_20
    move v0, v1

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    :goto_22
    move v0, v2

    .line 36
    :goto_23
    if-eqz v0, :cond_104

    .line 38
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->b:Landroid/net/Uri;

    .line 40
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    iget-object v3, p0, Lcn/kuaipan/android/http/KscHttpRequest;->a:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 46
    if-nez v3, :cond_40

    .line 48
    iget-object v3, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 50
    if-nez v3, :cond_3e

    .line 52
    iget-object v3, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_3e

    .line 60
    sget-object v3, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->GET:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 62
    goto :goto_40

    .line 63
    :cond_3e
    sget-object v3, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->POST:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 65
    :cond_40
    :goto_40
    const/4 v4, 0x0

    .line 66
    sget-object v5, Lcn/kuaipan/android/http/KscHttpRequest$a;->a:[I

    .line 68
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 71
    move-result v3

    .line 72
    aget v3, v5, v3

    .line 74
    const-string v5, "KscHttpRequest"

    .line 76
    if-eq v3, v2, :cond_eb

    .line 78
    const/4 v6, 0x2

    .line 79
    if-eq v3, v6, :cond_52

    .line 81
    goto/16 :goto_101

    .line 83
    :cond_52
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    .line 85
    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_e5

    .line 96
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 98
    iget-object v3, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_6d

    .line 106
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 108
    goto/16 :goto_d6

    .line 110
    :cond_6d
    if-eqz v0, :cond_74

    .line 112
    instance-of v6, v0, Lo1/e;

    .line 114
    if-eqz v6, :cond_74

    .line 116
    move v1, v2

    .line 117
    :cond_74
    if-nez v1, :cond_8f

    .line 119
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    move-result-object v6

    .line 123
    :cond_7a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_8f

    .line 129
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    move-result-object v7

    .line 133
    check-cast v7, Lorg/apache/http/NameValuePair;

    .line 135
    instance-of v8, v7, Lo1/d;

    .line 137
    if-nez v8, :cond_90

    .line 139
    instance-of v7, v7, Lo1/b;

    .line 141
    if-eqz v7, :cond_7a

    .line 143
    goto :goto_90

    .line 144
    :cond_8f
    move v2, v1

    .line 145
    :cond_90
    :goto_90
    if-eqz v2, :cond_cd

    .line 147
    if-eqz v0, :cond_a2

    .line 149
    instance-of v1, v0, Lo1/e;

    .line 151
    if-eqz v1, :cond_a2

    .line 153
    check-cast v0, Lo1/e;

    .line 155
    invoke-static {v3}, Lcn/kuaipan/android/http/KscHttpRequest;->g(Ljava/util/ArrayList;)[Lo1/f;

    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Lo1/e;->a([Lo1/f;)V

    .line 162
    goto :goto_d6

    .line 163
    :cond_a2
    new-instance v1, Ljava/util/ArrayList;

    .line 165
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    if-eqz v0, :cond_bf

    .line 170
    :try_start_a9
    invoke-static {v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Lorg/apache/http/HttpEntity;)Ljava/util/List;

    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b0} :catch_b1

    .line 177
    goto :goto_bf

    .line 178
    :catch_b1
    move-exception v0

    .line 179
    const-string v1, "Failed parse an user entity."

    .line 181
    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    new-instance v1, Ljava/lang/RuntimeException;

    .line 186
    const-string v2, "Failed parse an user entity. The user entity should be parseable by URLEncodedUtils.parse(HttpEntity)"

    .line 188
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    throw v1

    .line 192
    :cond_bf
    :goto_bf
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 195
    invoke-static {v1}, Lcn/kuaipan/android/http/KscHttpRequest;->g(Ljava/util/ArrayList;)[Lo1/f;

    .line 198
    move-result-object v0

    .line 199
    new-instance v1, Lo1/e;

    .line 201
    invoke-direct {v1, v0}, Lo1/e;-><init>([Lo1/f;)V

    .line 204
    move-object v0, v1

    .line 205
    goto :goto_d6

    .line 206
    :cond_cd
    :try_start_cd
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 208
    iget-object v1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    .line 210
    const-string v2, "UTF-8"

    .line 212
    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_cd .. :try_end_d6} :catch_d9

    .line 215
    :goto_d6
    iput-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 217
    goto :goto_e5

    .line 218
    :catch_d9
    move-exception v0

    .line 219
    const-string v1, "JVM not support UTF_8?"

    .line 221
    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    new-instance v2, Ljava/lang/RuntimeException;

    .line 226
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    throw v2

    .line 230
    :cond_e5
    :goto_e5
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 232
    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 235
    goto :goto_101

    .line 236
    :cond_eb
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    .line 238
    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 243
    if-nez v0, :cond_fc

    .line 245
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 250
    move-result v0

    .line 251
    if-nez v0, :cond_101

    .line 253
    :cond_fc
    const-string v0, "Post data is not empty, but method is GET. All post data is lost."

    .line 255
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_101
    :goto_101
    iput-object v4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 260
    goto :goto_119

    .line 261
    :cond_104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 263
    const-string v1, "Request uri is not valid. uri="

    .line 265
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    move-result-object v1

    .line 269
    iget-object v2, p0, Lcn/kuaipan/android/http/KscHttpRequest;->b:Landroid/net/Uri;

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    move-result-object v1

    .line 278
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 281
    throw v0

    .line 282
    :cond_119
    :goto_119
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 284
    return-object v0
.end method

.method public final f(Lr1/a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 3
    if-nez v0, :cond_1c

    .line 5
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 7
    instance-of v0, p1, Lo1/e;

    .line 9
    if-nez v0, :cond_13

    .line 11
    invoke-static {p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->isEncoded(Lorg/apache/http/HttpEntity;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 p1, 0x1

    .line 21
    :goto_14
    if-nez p1, :cond_1b

    .line 23
    iget-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 28
    :cond_1b
    return-void

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/RuntimeException;

    .line 31
    const-string v0, "HttpRequest has been created. All input can\'t be changed."

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
.end method
