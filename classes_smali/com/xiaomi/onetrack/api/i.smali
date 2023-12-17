.class Lcom/xiaomi/onetrack/api/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/i;->a:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/a;->a()V

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->B()J

    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, 0x0

    .line 10
    cmp-long v0, v0, v2

    .line 12
    if-nez v0, :cond_14

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->n(J)V

    .line 21
    :cond_14
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/i;->a:Lcom/xiaomi/onetrack/api/h;

    .line 23
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getInstanceId()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_35

    .line 37
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/i;->a:Lcom/xiaomi/onetrack/api/h;

    .line 43
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getInstanceId()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/o;->a(Ljava/lang/String;)V

    .line 54
    :cond_35
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/i;->a:Lcom/xiaomi/onetrack/api/h;

    .line 56
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;)V

    .line 59
    invoke-static {}, Lcom/xiaomi/onetrack/util/d;->a()Lcom/xiaomi/onetrack/util/d;

    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/i;->c(Z)V
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_42

    .line 66
    goto :goto_59

    .line 67
    :catchall_42
    move-exception v0

    .line 68
    const-string v1, "init WorkerExecutor execute throwable:"

    .line 70
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    const-string v1, "OneTrackImp"

    .line 87
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_59
    return-void
.end method
