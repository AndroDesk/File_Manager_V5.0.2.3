.class Lcom/xiaomi/onetrack/b/a$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Looper;Lcom/xiaomi/onetrack/b/b;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/b/a$a;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    const-string v0, "ScheduleCloudHandler.handleMessage, msg.what="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p1, Landroid/os/Message;->what:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "AppConfigUpdater"

    .line 18
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget v0, p1, Landroid/os/Message;->what:I

    .line 23
    if-nez v0, :cond_56

    .line 25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    if-eqz p1, :cond_51

    .line 29
    :try_start_1c
    check-cast p1, Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v2, "ScheduleCloudHandler.handleMessage, appId: "

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/xiaomi/onetrack/b/d;

    .line 53
    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/b/d;-><init>(Lcom/xiaomi/onetrack/b/a$a;Ljava/lang/String;)V

    .line 56
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3a} :catch_3b

    .line 59
    goto :goto_56

    .line 60
    :catch_3b
    move-exception p1

    .line 61
    const-string v0, "handleMessage error: "

    .line 63
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    goto :goto_56

    .line 82
    :cond_51
    const-string p1, "ScheduleCloudHandler.handleMessage, msg.obj is null"

    .line 84
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_56
    :goto_56
    return-void
.end method
