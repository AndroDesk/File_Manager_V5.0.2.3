.class public Lcom/xiaomi/onetrack/util/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "o"

.field private static final b:Ljava/lang/String; = "content://com.miui.analytics.OneTrackProvider/insId"

.field private static final c:Ljava/lang/String; = "insId"

.field private static final d:Ljava/lang/String; = "pkg"

.field private static final e:Ljava/lang/String; = "sign"

.field private static volatile f:Lcom/xiaomi/onetrack/util/o;

.field private static g:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# instance fields
.field private final h:Landroid/content/Context;

.field private final i:Landroid/content/Context;

.field private k:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    .line 7
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/o;->h:Landroid/content/Context;

    .line 13
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/o;->i:Landroid/content/Context;

    .line 19
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/util/o;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcom/xiaomi/onetrack/util/o;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcom/xiaomi/onetrack/util/o;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/o;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    .line 5
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 6
    :cond_17
    :goto_17
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    .line 18
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "content://com.miui.analytics.OneTrackProvider/insId"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 20
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 21
    sget-object v2, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/o;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_2c

    :catch_21
    move-exception v0

    .line 23
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    .line 24
    sget-object p1, Lcom/xiaomi/onetrack/util/o;->a:Ljava/lang/String;

    const-string v1, "setRemoteCacheInstanceId e"

    invoke-static {p1, v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2c
    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "content://com.miui.analytics.OneTrackProvider/insId"

    .line 4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "pkg"

    .line 14
    sget-object v3, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 19
    const-string v2, "sign"

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v4, "insId"

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    sget-object v4, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, Lcom/xiaomi/onetrack/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 47
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/o;->i:Landroid/content/Context;

    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 56
    move-result-object v4

    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v6, 0x0

    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_5a

    .line 67
    :goto_42
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_4e

    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    goto :goto_42

    .line 79
    :cond_4e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_51} :catch_52

    .line 82
    goto :goto_5a

    .line 83
    :catch_52
    move-exception v1

    .line 84
    sget-object v2, Lcom/xiaomi/onetrack/util/o;->a:Ljava/lang/String;

    .line 86
    const-string v3, "getRemoteCacheInstanceId e"

    .line 88
    invoke-static {v2, v3, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    :cond_5a
    :goto_5a
    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/o;->h:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_11

    .line 13
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->m()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_11
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    .line 21
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 9
    :cond_7
    sput-object p1, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    .line 10
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    if-eqz v0, :cond_10

    .line 11
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/o;->b(Ljava/lang/String;)V

    .line 12
    :cond_10
    sget-object p1, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_b
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    if-eqz v0, :cond_38

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/o;->c()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/o;->d()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 7
    invoke-direct {p0, v1}, Lcom/xiaomi/onetrack/util/o;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3c

    .line 8
    :cond_28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 9
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    goto :goto_3c

    .line 10
    :cond_38
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/o;->d()Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_3c
    :goto_3c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    .line 13
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    if-eqz v1, :cond_53

    .line 14
    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/util/o;->b(Ljava/lang/String;)V

    .line 15
    :cond_53
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    goto :goto_5b

    .line 16
    :cond_59
    sput-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    .line 17
    :goto_5b
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    return-object v0
.end method
