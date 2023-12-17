.class Lcom/xiaomi/onetrack/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/c/n;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/c/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/o;->a:Lcom/xiaomi/onetrack/c/n;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    const-string v0, "UploadTimer"

    .line 3
    iget-object v1, p0, Lcom/xiaomi/onetrack/c/o;->a:Lcom/xiaomi/onetrack/c/n;

    .line 5
    iget-object v1, v1, Lcom/xiaomi/onetrack/c/n;->a:Lcom/xiaomi/onetrack/c/m;

    .line 7
    invoke-virtual {v1}, Lcom/xiaomi/onetrack/c/m;->a()V

    .line 10
    :try_start_9
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    .line 13
    move-result v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v3, "UploadTimer netReceiver, 网络是否可用="

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    if-eqz v1, :cond_61

    .line 36
    const/4 v1, 0x3

    .line 37
    new-array v2, v1, [I

    .line 39
    const/4 v3, 0x0

    .line 40
    aput v3, v2, v3

    .line 42
    const/4 v4, 0x1

    .line 43
    aput v4, v2, v4

    .line 45
    const/4 v4, 0x2

    .line 46
    aput v4, v2, v4

    .line 48
    :goto_2f
    if-ge v3, v1, :cond_61

    .line 50
    aget v4, v2, v3

    .line 52
    invoke-static {v4}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    .line 55
    move-result v5

    .line 56
    iget-object v6, p0, Lcom/xiaomi/onetrack/c/o;->a:Lcom/xiaomi/onetrack/c/n;

    .line 58
    iget-object v6, v6, Lcom/xiaomi/onetrack/c/n;->a:Lcom/xiaomi/onetrack/c/m;

    .line 60
    invoke-virtual {v6, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 63
    move-result v6

    .line 64
    if-nez v6, :cond_49

    .line 66
    iget-object v6, p0, Lcom/xiaomi/onetrack/c/o;->a:Lcom/xiaomi/onetrack/c/n;

    .line 68
    iget-object v6, v6, Lcom/xiaomi/onetrack/c/n;->a:Lcom/xiaomi/onetrack/c/m;

    .line 70
    int-to-long v7, v5

    .line 71
    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_49} :catch_4c

    .line 74
    :cond_49
    add-int/lit8 v3, v3, 0x1

    .line 76
    goto :goto_2f

    .line 77
    :catch_4c
    move-exception v1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    const-string v3, "netReceiver: "

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_61
    return-void
.end method
