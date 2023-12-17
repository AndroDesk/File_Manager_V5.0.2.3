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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-eqz p1, :cond_7

    .line 6
    sput-object p1, Ls1/c;->a:Landroid/content/Context;

    .line 8
    :cond_7
    new-instance v0, Lm1/h;

    .line 10
    invoke-direct {v0}, Lm1/h;-><init>()V

    .line 13
    iput-object v0, p0, Lm1/g;->a:Lm1/h;

    .line 15
    new-instance v0, Lm1/h;

    .line 17
    invoke-direct {v0}, Lm1/h;-><init>()V

    .line 20
    iput-object v0, p0, Lm1/g;->b:Lm1/h;

    .line 22
    sget-object v0, Lm1/l;->f:Ls1/n;

    .line 24
    const-class v0, Lm1/l;

    .line 26
    monitor-enter v0

    .line 27
    :try_start_1a
    invoke-static {p1}, Lm1/l;->b(Landroid/content/Context;)Lm1/l;

    .line 30
    move-result-object p1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_31

    .line 31
    monitor-exit v0

    .line 32
    iput-object p1, p0, Lm1/g;->c:Lm1/l;

    .line 34
    new-instance p1, Landroid/util/SparseArray;

    .line 36
    const/4 v0, 0x4

    .line 37
    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 40
    iput-object p1, p0, Lm1/g;->d:Landroid/util/SparseArray;

    .line 42
    new-instance p1, Landroid/util/SparseArray;

    .line 44
    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 47
    iput-object p1, p0, Lm1/g;->e:Landroid/util/SparseArray;

    .line 49
    return-void

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    monitor-exit v0

    .line 52
    throw p1
.end method

.method public static d(Ljava/util/List;)[Lorg/apache/http/HttpRequest;
    .registers 4

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_23

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lorg/apache/http/HttpMessage;

    .line 26
    instance-of v2, v1, Lorg/apache/http/HttpRequest;

    .line 28
    if-eqz v2, :cond_d

    .line 30
    check-cast v1, Lorg/apache/http/HttpRequest;

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_d

    .line 36
    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result p0

    .line 40
    new-array p0, p0, [Lorg/apache/http/HttpRequest;

    .line 42
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 46
    check-cast p0, [Lorg/apache/http/HttpRequest;

    .line 48
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

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_23

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lorg/apache/http/HttpMessage;

    .line 26
    instance-of v2, v1, Lorg/apache/http/HttpResponse;

    .line 28
    if-eqz v2, :cond_d

    .line 30
    check-cast v1, Lorg/apache/http/HttpResponse;

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_d

    .line 36
    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result p0

    .line 40
    new-array p0, p0, [Lorg/apache/http/HttpResponse;

    .line 42
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 46
    check-cast p0, [Lorg/apache/http/HttpResponse;

    .line 48
    return-object p0
.end method

.method public static f(Lorg/apache/http/HttpMessage;Lm1/i;Lm1/c;Lm1/j;)V
    .registers 11

    .line 1
    instance-of v0, p0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    check-cast p0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 7
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lorg/apache/http/HttpEntity;

    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_33

    .line 13
    new-instance v6, Lm1/m;

    .line 15
    const/4 v5, 0x1

    .line 16
    move-object v0, v6

    .line 17
    move-object v2, p1

    .line 18
    move-object v3, p2

    .line 19
    move-object v4, p3

    .line 20
    invoke-direct/range {v0 .. v5}, Lm1/m;-><init>(Lorg/apache/http/HttpEntity;Lm1/i;Lm1/c;Lm1/j;Z)V

    .line 23
    invoke-virtual {p0, v6}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 26
    goto :goto_33

    .line 27
    :cond_1a
    instance-of v0, p0, Lorg/apache/http/HttpResponse;

    .line 29
    if-eqz v0, :cond_33

    .line 31
    check-cast p0, Lorg/apache/http/HttpResponse;

    .line 33
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_33

    .line 39
    new-instance v6, Lm1/m;

    .line 41
    const/4 v5, 0x0

    .line 42
    move-object v0, v6

    .line 43
    move-object v2, p1

    .line 44
    move-object v3, p2

    .line 45
    move-object v4, p3

    .line 46
    invoke-direct/range {v0 .. v5}, Lm1/m;-><init>(Lorg/apache/http/HttpEntity;Lm1/i;Lm1/c;Lm1/j;Z)V

    .line 49
    invoke-interface {p0, v6}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 52
    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method public final a(Lcn/kuaipan/android/http/KscHttpRequest;)Lm1/f;
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lm1/g;->b(Lcn/kuaipan/android/http/KscHttpRequest;ILm1/j$a;)Lm1/f;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final b(Lcn/kuaipan/android/http/KscHttpRequest;ILm1/j$a;)Lm1/f;
    .registers 28

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v2, p2

    .line 5
    const-string v3, "KscHttpTransmitter"

    .line 7
    if-nez p3, :cond_c

    .line 9
    sget-object v0, La/b;->g:Lm1/j;

    .line 11
    move-object v4, v0

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    move-object/from16 v4, p3

    .line 15
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcn/kuaipan/android/http/KscHttpRequest;->d()Lm1/c;

    .line 18
    move-result-object v5

    .line 19
    new-instance v6, Lm1/f;

    .line 21
    iget-object v0, v1, Lm1/g;->c:Lm1/l;

    .line 23
    invoke-direct {v6, v0}, Lm1/f;-><init>(Lm1/l;)V

    .line 26
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    .line 28
    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 31
    :try_start_1e
    invoke-virtual/range {p1 .. p1}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v6, v7}, Lm1/f;->j(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 38
    invoke-virtual {v1, v2}, Lm1/g;->c(I)Lorg/apache/http/client/HttpClient;

    .line 41
    move-result-object v8

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    .line 45
    move-result-object v9

    .line 46
    const/4 v10, 0x0

    .line 47
    if-nez v9, :cond_31

    .line 49
    goto :goto_3c

    .line 50
    :cond_31
    invoke-interface {v9}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    .line 53
    move-result-object v9

    .line 54
    if-nez v9, :cond_38

    .line 56
    goto :goto_3c

    .line 57
    :cond_38
    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 60
    move-result-object v10

    .line 61
    :goto_3c
    iget-object v9, v1, Lm1/g;->a:Lm1/h;

    .line 63
    invoke-virtual {v9, v10}, Lm1/h;->e(Ljava/lang/String;)Lm1/i;

    .line 66
    move-result-object v11

    .line 67
    iget-object v9, v1, Lm1/g;->b:Lm1/h;

    .line 69
    invoke-virtual {v9, v10}, Lm1/h;->e(Ljava/lang/String;)Lm1/i;

    .line 72
    move-result-object v9

    .line 73
    invoke-static {v7, v11, v5, v4}, Lm1/g;->f(Lorg/apache/http/HttpMessage;Lm1/i;Lm1/c;Lm1/j;)V

    .line 76
    invoke-static {}, Lm1/h;->c()J

    .line 79
    move-result-wide v18

    .line 80
    invoke-interface {v8, v7, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    .line 83
    move-result-object v7

    .line 84
    invoke-static {}, Lm1/h;->c()J

    .line 87
    move-result-wide v20

    .line 88
    const-string v8, "ksc.message_list"

    .line 90
    invoke-virtual {v0, v8}, Lorg/apache/http/protocol/BasicHttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 94
    instance-of v8, v0, Ljava/util/List;
    :try_end_5f
    .catchall {:try_start_1e .. :try_end_5f} :catchall_ab

    .line 96
    const/4 v10, 0x0

    .line 97
    if-eqz v8, :cond_9d

    .line 99
    :try_start_62
    check-cast v0, Ljava/util/List;

    .line 101
    if-eqz v0, :cond_6f

    .line 103
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 106
    move-result v8

    .line 107
    if-nez v8, :cond_6f

    .line 109
    invoke-virtual {v6, v0}, Lm1/f;->i(Ljava/util/List;)V

    .line 112
    :cond_6f
    invoke-static {v0}, Lm1/g;->d(Ljava/util/List;)[Lorg/apache/http/HttpRequest;

    .line 115
    move-result-object v8

    .line 116
    invoke-static {v8}, Ls1/e;->d([Lorg/apache/http/HttpRequest;)J

    .line 119
    move-result-wide v16

    .line 120
    invoke-static {v0}, Lm1/g;->e(Ljava/util/List;)[Lorg/apache/http/HttpResponse;

    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Ls1/e;->f([Lorg/apache/http/HttpResponse;)J

    .line 127
    move-result-wide v12

    .line 128
    invoke-static {v7}, Ls1/e;->e(Lorg/apache/http/HttpResponse;)J

    .line 131
    move-result-wide v14

    .line 132
    add-long v22, v12, v14

    .line 134
    move-wide/from16 v12, v18

    .line 136
    move-wide/from16 v14, v20

    .line 138
    invoke-virtual/range {v11 .. v17}, Lm1/i;->a(JJJ)V

    .line 141
    move-object v12, v9

    .line 142
    move-wide/from16 v13, v18

    .line 144
    move-wide/from16 v15, v20

    .line 146
    move-wide/from16 v17, v22

    .line 148
    invoke-virtual/range {v12 .. v18}, Lm1/i;->a(JJJ)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_96} :catch_97
    .catchall {:try_start_62 .. :try_end_96} :catchall_ab

    .line 151
    goto :goto_9d

    .line 152
    :catch_97
    move-exception v0

    .line 153
    :try_start_98
    const-string v8, "Failed get requestList from context."

    .line 155
    invoke-static {v3, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    :cond_9d
    :goto_9d
    invoke-static {v7, v9, v5, v4}, Lm1/g;->f(Lorg/apache/http/HttpMessage;Lm1/i;Lm1/c;Lm1/j;)V

    .line 161
    and-int/lit8 v0, v2, 0x4

    .line 163
    if-nez v0, :cond_a5

    .line 165
    const/4 v10, 0x1

    .line 166
    :cond_a5
    move-object/from16 v2, p1

    .line 168
    invoke-virtual {v6, v2, v7, v10}, Lm1/f;->f(Lcn/kuaipan/android/http/KscHttpRequest;Lorg/apache/http/HttpResponse;Z)V
    :try_end_aa
    .catchall {:try_start_98 .. :try_end_aa} :catchall_ab

    .line 171
    goto :goto_b7

    .line 172
    :catchall_ab
    move-exception v0

    .line 173
    invoke-static {v0}, La/b;->F(Ljava/lang/Throwable;)V

    .line 176
    const-string v2, "Meet exception when execute a KscHttpRequest."

    .line 178
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    invoke-virtual {v6, v0}, Lm1/f;->h(Ljava/lang/Throwable;)V

    .line 184
    :goto_b7
    return-object v6
.end method

.method public final c(I)Lorg/apache/http/client/HttpClient;
    .registers 9

    .line 1
    and-int/lit8 p1, p1, 0x7

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lm1/g;->d:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/util/Pair;

    .line 15
    if-eqz v2, :cond_27

    .line 17
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 19
    check-cast v3, Ljava/lang/Long;

    .line 21
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 24
    move-result-wide v3

    .line 25
    sub-long v3, v0, v3

    .line 27
    const-wide/32 v5, 0x2bf20

    .line 30
    cmp-long v3, v3, v5

    .line 32
    if-lez v3, :cond_22

    .line 34
    goto :goto_27

    .line 35
    :cond_22
    iget-object p1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 37
    check-cast p1, Lorg/apache/http/client/HttpClient;

    .line 39
    goto :goto_70

    .line 40
    :cond_27
    :goto_27
    iget-object v2, p0, Lm1/g;->e:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 48
    and-int/lit8 v3, p1, 0x4

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x1

    .line 52
    if-eqz v3, :cond_37

    .line 54
    move v3, v5

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move v3, v4

    .line 57
    :goto_38
    if-eqz v3, :cond_48

    .line 59
    invoke-static {v2}, Ln1/a;->c(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;

    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Ln1/a;->b(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/ClientConnectionManager;

    .line 66
    move-result-object v3

    .line 67
    new-instance v4, Ln1/a;

    .line 69
    invoke-direct {v4, v3, v2}, Ln1/a;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 72
    goto :goto_62

    .line 73
    :cond_48
    and-int/lit8 v3, p1, 0x2

    .line 75
    if-nez v3, :cond_4e

    .line 77
    move v3, v5

    .line 78
    goto :goto_4f

    .line 79
    :cond_4e
    move v3, v4

    .line 80
    :goto_4f
    and-int/lit8 v6, p1, 0x1

    .line 82
    if-eqz v6, :cond_54

    .line 84
    move v4, v5

    .line 85
    :cond_54
    invoke-static {v2}, Ln1/a;->c(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v2}, Ln1/a;->b(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/ClientConnectionManager;

    .line 92
    move-result-object v5

    .line 93
    new-instance v6, Ln1/a;

    .line 95
    invoke-direct {v6, v5, v2, v3, v4}, Ln1/a;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;ZZ)V

    .line 98
    move-object v4, v6

    .line 99
    :goto_62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 106
    move-result-object v0

    .line 107
    iget-object v1, p0, Lm1/g;->d:Landroid/util/SparseArray;

    .line 109
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    move-object p1, v4

    .line 113
    :goto_70
    return-object p1
.end method

.method public final g(ILjava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm1/g;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lm1/g;->d:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/util/Pair;

    .line 14
    if-eqz p1, :cond_1c

    .line 16
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 18
    if-eqz p1, :cond_1c

    .line 20
    check-cast p1, Lorg/apache/http/client/HttpClient;

    .line 22
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 29
    :cond_1c
    return-void
.end method
