.class public Lcom/xiaomi/onetrack/b/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "ConfigProvider"

.field private static volatile b:Z = false

.field private static volatile c:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 4

    .line 5
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->b:Z

    if-eqz v0, :cond_d

    .line 6
    sget-object p0, Lcom/xiaomi/onetrack/b/n;->a:Ljava/lang/String;

    const-string v0, "debug upload mode, send events immediately"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->c()Ljava/util/Map;

    move-result-object v0

    add-int/lit8 p0, p0, 0x1

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_22

    goto :goto_25

    :catch_22
    const p0, 0xea60

    .line 9
    :goto_25
    sget-object v0, Lcom/xiaomi/onetrack/b/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUploadInterval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static declared-synchronized a(Z)V
    .registers 2

    const-class v0, Lcom/xiaomi/onetrack/b/n;

    monitor-enter v0

    .line 10
    :try_start_3
    sput-boolean p0, Lcom/xiaomi/onetrack/b/n;->b:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 11
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a()Z
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/xiaomi/onetrack/d/f;->a()Lcom/xiaomi/onetrack/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/d/f;->b()[Ljava/lang/String;

    move-result-object v1

    .line 2
    aget-object v2, v1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1c

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    move v1, v3

    goto :goto_1d

    :cond_1c
    move v1, v0

    .line 3
    :goto_1d
    sget-object v2, Lcom/xiaomi/onetrack/b/n;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    move-result v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_29

    if-eqz v1, :cond_31

    if-nez v2, :cond_31

    move v0, v3

    goto :goto_31

    :catch_29
    move-exception v1

    .line 4
    sget-object v2, Lcom/xiaomi/onetrack/b/n;->a:Ljava/lang/String;

    const-string v3, "ConfigProvider.available"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    return v0
.end method

.method public static declared-synchronized b()Z
    .registers 2

    .line 1
    const-class v0, Lcom/xiaomi/onetrack/b/n;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-boolean v1, Lcom/xiaomi/onetrack/b/n;->b:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_7
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public static c()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method
