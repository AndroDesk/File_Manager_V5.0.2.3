.class public final Lm1/g;
.super Ljava/lang/Object;
.source "KscHttpTransmitter.java"


# instance fields
.field public final a:Lm1/h;

.field public final b:Lm1/h;

.field public final c:Lm1/l;

.field public final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "+",
            "Lorg/apache/http/client/HttpClient;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    sput-object p1, Ls1/c;->a:Landroid/content/Context;

    :cond_7
    new-instance v0, Lm1/h;

    invoke-direct {v0}, Lm1/h;-><init>()V

    iput-object v0, p0, Lm1/g;->a:Lm1/h;

    new-instance v0, Lm1/h;

    invoke-direct {v0}, Lm1/h;-><init>()V

    iput-object v0, p0, Lm1/g;->b:Lm1/h;

    sget-object v0, Lm1/l;->f:Ls1/n;

    const-class v0, Lm1/l;

    monitor-enter v0

    :try_start_1a
    invoke-static {p1}, Lm1/l;->b(Landroid/content/Context;)Lm1/l;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_31

    monitor-exit v0

    iput-object p1, p0, Lm1/g;->c:Lm1/l;

    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lm1/g;->d:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lm1/g;->e:Landroid/util/SparseArray;

    return-void

    :catchall_31
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public static d(Ljava/util/List;)[Lorg/apache/http/HttpRequest;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpMessage;

    instance-of v2, v1, Lorg/apache/http/HttpRequest;

    if-eqz v2, :cond_d

    check-cast v1, Lorg/apache/http/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/http/HttpRequest;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/http/HttpRequest;

    return-object p0
.end method

.method public static e(Ljava/util/List;)[Lorg/apache/http/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/HttpMessage;",
            ">;)[",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpMessage;

    instance-of v2, v1, Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_d

    check-cast v1, Lorg/apache/http/HttpResponse;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/http/HttpResponse;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/http/HttpResponse;

    return-object p0
.end method

.method public static f(Lorg/apache/http/HttpMessage;Lm1/i;Lm1/c;Lm1/j;)V
    .registers 11

    instance-of v0, p0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v0, :cond_1a

    check-cast p0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_33

    new-instance v6, Lm1/m;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lm1/m;-><init>(Lorg/apache/http/HttpEntity;Lm1/i;Lm1/c;Lm1/j;Z)V

    invoke-virtual {p0, v6}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_33

    :cond_1a
    instance-of v0, p0, Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_33

    check-cast p0, Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_33

    new-instance v6, Lm1/m;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lm1/m;-><init>(Lorg/apache/http/HttpEntity;Lm1/i;Lm1/c;Lm1/j;Z)V

    invoke-interface {p0, v6}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method public final a(Lcn/kuaipan/android/http/KscHttpRequest;)Lm1/f;
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lm1/g;->b(Lcn/kuaipan/android/http/KscHttpRequest;ILm1/j$a;)Lm1/f;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcn/kuaipan/android/http/KscHttpRequest;ILm1/j$a;)Lm1/f;
    .registers 28

    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string v3, "KscHttpTransmitter"

    if-nez p3, :cond_c

    sget-object v0, La/b;->g:Lm1/j;

    move-object v4, v0

    goto :goto_e

    :cond_c
    move-object/from16 v4, p3

    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcn/kuaipan/android/http/KscHttpRequest;->d()Lm1/c;

    move-result-object v5

    new-instance v6, Lm1/f;

    iget-object v0, v1, Lm1/g;->c:Lm1/l;

    invoke-direct {v6, v0}, Lm1/f;-><init>(Lm1/l;)V

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    :try_start_1e
    invoke-virtual/range {p1 .. p1}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v7

    invoke-virtual {v6, v7}, Lm1/f;->j(Lorg/apache/http/client/methods/HttpUriRequest;)V

    invoke-virtual {v1, v2}, Lm1/g;->c(I)Lorg/apache/http/client/HttpClient;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_31

    goto :goto_3c

    :cond_31
    invoke-interface {v9}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    if-nez v9, :cond_38

    goto :goto_3c

    :cond_38
    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v10

    :goto_3c
    iget-object v9, v1, Lm1/g;->a:Lm1/h;

    invoke-virtual {v9, v10}, Lm1/h;->e(Ljava/lang/String;)Lm1/i;

    move-result-object v11

    iget-object v9, v1, Lm1/g;->b:Lm1/h;

    invoke-virtual {v9, v10}, Lm1/h;->e(Ljava/lang/String;)Lm1/i;

    move-result-object v9

    invoke-static {v7, v11, v5, v4}, Lm1/g;->f(Lorg/apache/http/HttpMessage;Lm1/i;Lm1/c;Lm1/j;)V

    invoke-static {}, Lm1/h;->c()J

    move-result-wide v18

    invoke-interface {v8, v7, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    invoke-static {}, Lm1/h;->c()J

    move-result-wide v20

    const-string v8, "ksc.message_list"

    invoke-virtual {v0, v8}, Lorg/apache/http/protocol/BasicHttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Ljava/util/List;
    :try_end_5f
    .catchall {:try_start_1e .. :try_end_5f} :catchall_ab

    const/4 v10, 0x0

    if-eqz v8, :cond_9d

    :try_start_62
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6f

    invoke-virtual {v6, v0}, Lm1/f;->i(Ljava/util/List;)V

    :cond_6f
    invoke-static {v0}, Lm1/g;->d(Ljava/util/List;)[Lorg/apache/http/HttpRequest;

    move-result-object v8

    invoke-static {v8}, Ls1/e;->d([Lorg/apache/http/HttpRequest;)J

    move-result-wide v16

    invoke-static {v0}, Lm1/g;->e(Ljava/util/List;)[Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Ls1/e;->f([Lorg/apache/http/HttpResponse;)J

    move-result-wide v12

    invoke-static {v7}, Ls1/e;->e(Lorg/apache/http/HttpResponse;)J

    move-result-wide v14

    add-long v22, v12, v14

    move-wide/from16 v12, v18

    move-wide/from16 v14, v20

    invoke-virtual/range {v11 .. v17}, Lm1/i;->a(JJJ)V

    move-object v12, v9

    move-wide/from16 v13, v18

    move-wide/from16 v15, v20

    move-wide/from16 v17, v22

    invoke-virtual/range {v12 .. v18}, Lm1/i;->a(JJJ)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_96} :catch_97
    .catchall {:try_start_62 .. :try_end_96} :catchall_ab

    goto :goto_9d

    :catch_97
    move-exception v0

    :try_start_98
    const-string v8, "Failed get requestList from context."

    invoke-static {v3, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9d
    :goto_9d
    invoke-static {v7, v9, v5, v4}, Lm1/g;->f(Lorg/apache/http/HttpMessage;Lm1/i;Lm1/c;Lm1/j;)V

    and-int/lit8 v0, v2, 0x4

    if-nez v0, :cond_a5

    const/4 v10, 0x1

    :cond_a5
    move-object/from16 v2, p1

    invoke-virtual {v6, v2, v7, v10}, Lm1/f;->f(Lcn/kuaipan/android/http/KscHttpRequest;Lorg/apache/http/HttpResponse;Z)V
    :try_end_aa
    .catchall {:try_start_98 .. :try_end_aa} :catchall_ab

    goto :goto_b7

    :catchall_ab
    move-exception v0

    invoke-static {v0}, La/b;->F(Ljava/lang/Throwable;)V

    const-string v2, "Meet exception when execute a KscHttpRequest."

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v6, v0}, Lm1/f;->h(Ljava/lang/Throwable;)V

    :goto_b7
    return-object v6
.end method

.method public final c(I)Lorg/apache/http/client/HttpClient;
    .registers 9

    and-int/lit8 p1, p1, 0x7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lm1/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_27

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/32 v5, 0x2bf20

    cmp-long v3, v3, v5

    if-lez v3, :cond_22

    goto :goto_27

    :cond_22
    iget-object p1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lorg/apache/http/client/HttpClient;

    goto :goto_70

    :cond_27
    :goto_27
    iget-object v2, p0, Lm1/g;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    and-int/lit8 v3, p1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_37

    move v3, v5

    goto :goto_38

    :cond_37
    move v3, v4

    :goto_38
    if-eqz v3, :cond_48

    invoke-static {v2}, Ln1/a;->c(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2}, Ln1/a;->b(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    new-instance v4, Ln1/a;

    invoke-direct {v4, v3, v2}, Ln1/a;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    goto :goto_62

    :cond_48
    and-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_4e

    move v3, v5

    goto :goto_4f

    :cond_4e
    move v3, v4

    :goto_4f
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_54

    move v4, v5

    :cond_54
    invoke-static {v2}, Ln1/a;->c(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2}, Ln1/a;->b(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    new-instance v6, Ln1/a;

    invoke-direct {v6, v5, v2, v3, v4}, Ln1/a;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;ZZ)V

    move-object v4, v6

    :goto_62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lm1/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object p1, v4

    :goto_70
    return-object p1
.end method

.method public final g(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lm1/g;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lm1/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-eqz p1, :cond_1c

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p1, :cond_1c

    check-cast p1, Lorg/apache/http/client/HttpClient;

    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method
