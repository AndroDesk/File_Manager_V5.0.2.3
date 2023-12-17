.class public Lcom/xiaomi/stat/ab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/ab$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MiStatPref"

.field private static final b:Ljava/lang/String; = "true"

.field private static final c:Ljava/lang/String; = "false"

.field private static e:Lcom/xiaomi/stat/ab;


# instance fields
.field private d:Landroid/os/FileObserver;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/util/HashMap;

    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    .line 15
    new-instance v1, Lcom/xiaomi/stat/ab$a;

    .line 17
    invoke-direct {v1, v0}, Lcom/xiaomi/stat/ab$a;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v1, p0, Lcom/xiaomi/stat/ab;->g:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 22
    invoke-direct {p0}, Lcom/xiaomi/stat/ab;->b()V

    .line 25
    const-string v1, "mistat_pf"

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/ab;->c(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/stat/ab;)Landroid/database/sqlite/SQLiteOpenHelper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/stat/ab;->g:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/stat/ab;
    .registers 2

    .line 2
    sget-object v0, Lcom/xiaomi/stat/ab;->e:Lcom/xiaomi/stat/ab;

    if-nez v0, :cond_17

    .line 3
    const-class v0, Lcom/xiaomi/stat/ab;

    monitor-enter v0

    .line 4
    :try_start_7
    sget-object v1, Lcom/xiaomi/stat/ab;->e:Lcom/xiaomi/stat/ab;

    if-nez v1, :cond_12

    .line 5
    new-instance v1, Lcom/xiaomi/stat/ab;

    invoke-direct {v1}, Lcom/xiaomi/stat/ab;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/ab;->e:Lcom/xiaomi/stat/ab;

    .line 6
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 7
    :cond_17
    :goto_17
    sget-object v0, Lcom/xiaomi/stat/ab;->e:Lcom/xiaomi/stat/ab;

    return-object v0
.end method

.method private b()V
    .registers 9

    const-string v0, "MiStatPref"

    .line 2
    new-instance v1, Lcom/xiaomi/stat/ac;

    invoke-direct {v1, p0}, Lcom/xiaomi/stat/ac;-><init>(Lcom/xiaomi/stat/ab;)V

    .line 3
    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4
    :try_start_c
    invoke-static {v2}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_c .. :try_end_f} :catch_6d

    const/4 v1, 0x0

    const-wide/16 v3, 0x2

    .line 5
    :try_start_12
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_1a} :catch_1b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_12 .. :try_end_1a} :catch_1b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_12 .. :try_end_1a} :catch_1b

    move-object v1, v2

    :catch_1b
    if-nez v1, :cond_1e

    return-void

    .line 6
    :cond_1e
    iget-object v2, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :try_start_23
    const-string v2, "load pref from db"

    .line 7
    invoke-static {v0, v2}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pref_key"

    .line 8
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "pref_value"

    .line 9
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 10
    :goto_34
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 11
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 13
    iget-object v6, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,value="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_63} :catch_69
    .catchall {:try_start_23 .. :try_end_63} :catchall_64

    goto :goto_34

    :catchall_64
    move-exception v0

    .line 15
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_69
    :cond_69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :catch_6d
    move-exception v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load data execute failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/xiaomi/stat/ab;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/stat/ab;->b()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/stat/ad;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/ad;-><init>(Lcom/xiaomi/stat/ab;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/stat/ab;->d:Landroid/os/FileObserver;

    .line 2
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 3
    monitor-enter p0

    const/4 v0, 0x1

    .line 4
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5
    iget-object v1, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 6
    iget-object v1, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_16
    const/4 v0, 0x0

    goto :goto_1d

    .line 7
    :cond_18
    iget-object v1, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1d
    const-string v1, "MiStatPref"

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put value: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3f

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_3f
    new-instance v0, Lcom/xiaomi/stat/ae;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaomi/stat/ae;-><init>(Lcom/xiaomi/stat/ab;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance p1, Ljava/util/concurrent/FutureTask;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_2 .. :try_end_4a} :catchall_6b

    .line 12
    :try_start_4a
    invoke-static {p1}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V
    :try_end_4d
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4a .. :try_end_4d} :catch_52
    .catchall {:try_start_4a .. :try_end_4d} :catchall_6b

    .line 13
    :try_start_4d
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_50} :catch_50
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4d .. :try_end_50} :catch_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_6b

    .line 14
    :catch_50
    :try_start_50
    monitor-exit p0

    return-void

    :catch_52
    move-exception p1

    const-string p2, "MiStatPref"

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute failed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    monitor-exit p0

    return-void

    :catchall_6b
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_50 .. :try_end_6d} :catchall_6b

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;F)F
    .registers 4

    .line 13
    monitor-enter p0

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1d

    if-eqz v0, :cond_1b

    .line 15
    :try_start_9
    iget-object v0, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_19} :catch_1b
    .catchall {:try_start_9 .. :try_end_19} :catchall_1d

    :try_start_19
    monitor-exit p0

    return p1

    .line 16
    :catch_1b
    :cond_1b
    monitor-exit p0

    return p2

    :catchall_1d
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public a(Ljava/lang/String;I)I
    .registers 4

    .line 8
    monitor-enter p0

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1d

    if-eqz v0, :cond_1b

    .line 10
    :try_start_9
    iget-object v0, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_19} :catch_1b
    .catchall {:try_start_9 .. :try_end_19} :catchall_1d

    :try_start_19
    monitor-exit p0

    return p1

    .line 11
    :catch_1b
    :cond_1b
    monitor-exit p0

    return p2

    :catchall_1d
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public a(Ljava/lang/String;J)J
    .registers 5

    .line 23
    monitor-enter p0

    .line 24
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1d

    if-eqz v0, :cond_1b

    .line 25
    :try_start_9
    iget-object v0, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_19} :catch_1b
    .catchall {:try_start_9 .. :try_end_19} :catchall_1d

    :try_start_19
    monitor-exit p0

    return-wide p1

    .line 26
    :catch_1b
    :cond_1b
    monitor-exit p0

    return-wide p2

    :catchall_1d
    move-exception p1

    .line 27
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 18
    monitor-enter p0

    .line 19
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 20
    iget-object p2, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit p0

    return-object p1

    .line 21
    :cond_13
    monitor-exit p0

    return-object p2

    :catchall_15
    move-exception p1

    .line 22
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .line 37
    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    .line 39
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 4

    .line 28
    monitor-enter p0

    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 30
    iget-object v0, p0, Lcom/xiaomi/stat/ab;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "true"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p1, 0x1

    .line 32
    monitor-exit p0

    return p1

    :cond_1c
    const-string v0, "false"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 p1, 0x0

    .line 34
    monitor-exit p0

    return p1

    .line 35
    :cond_27
    monitor-exit p0

    return p2

    :catchall_29
    move-exception p1

    .line 36
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;F)V
    .registers 3

    .line 18
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/stat/ab;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .registers 3

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/stat/ab;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .registers 4

    .line 20
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/stat/ab;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/stat/ab;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .registers 3

    .line 21
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/stat/ab;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
