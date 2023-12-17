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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/o;->h:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/o;->i:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/util/o;
    .registers 2

    sget-object v0, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/onetrack/util/o;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/onetrack/util/o;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/o;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "content://com.miui.analytics.OneTrackProvider/insId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/onetrack/util/o;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_2c

    :catch_21
    move-exception v0

    invoke-static {p1}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/xiaomi/onetrack/util/o;->a:Ljava/lang/String;

    const-string v1, "setRemoteCacheInstanceId e"

    invoke-static {p1, v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2c
    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "content://com.miui.analytics.OneTrackProvider/insId"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "pkg"

    sget-object v3, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/onetrack/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/util/o;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5a

    :goto_42
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    :cond_4e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_51} :catch_52

    goto :goto_5a

    :catch_52
    move-exception v1

    sget-object v2, Lcom/xiaomi/onetrack/util/o;->a:Ljava/lang/String;

    const-string v3, "getRemoteCacheInstanceId e"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5a
    :goto_5a
    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/onetrack/util/o;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sput-object p1, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    if-eqz v0, :cond_10

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/o;->b(Ljava/lang/String;)V

    :cond_10
    sget-object p1, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    return-object v0

    :cond_b
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    if-eqz v0, :cond_38

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-direct {p0, v1}, Lcom/xiaomi/onetrack/util/o;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3c

    :cond_28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    goto :goto_3c

    :cond_38
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/o;->d()Ljava/lang/String;

    move-result-object v0

    :cond_3c
    :goto_3c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    if-eqz v1, :cond_53

    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/util/o;->b(Ljava/lang/String;)V

    :cond_53
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    goto :goto_5b

    :cond_59
    sput-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    :goto_5b
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    return-object v0
.end method
