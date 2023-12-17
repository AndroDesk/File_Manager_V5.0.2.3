.class Lcom/xiaomi/onetrack/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/c/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/onetrack/c/n;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/c/o;->a:Lcom/xiaomi/onetrack/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const-string v0, "UploadTimer"

    iget-object v1, p0, Lcom/xiaomi/onetrack/c/o;->a:Lcom/xiaomi/onetrack/c/n;

    iget-object v1, v1, Lcom/xiaomi/onetrack/c/n;->a:Lcom/xiaomi/onetrack/c/m;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/c/m;->a()V

    :try_start_9
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadTimer netReceiver, 网络是否可用="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_61

    const/4 v1, 0x3

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    const/4 v4, 0x1

    aput v4, v2, v4

    const/4 v4, 0x2

    aput v4, v2, v4

    :goto_2f
    if-ge v3, v1, :cond_61

    aget v4, v2, v3

    invoke-static {v4}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    move-result v5

    iget-object v6, p0, Lcom/xiaomi/onetrack/c/o;->a:Lcom/xiaomi/onetrack/c/n;

    iget-object v6, v6, Lcom/xiaomi/onetrack/c/n;->a:Lcom/xiaomi/onetrack/c/m;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_49

    iget-object v6, p0, Lcom/xiaomi/onetrack/c/o;->a:Lcom/xiaomi/onetrack/c/n;

    iget-object v6, v6, Lcom/xiaomi/onetrack/c/n;->a:Lcom/xiaomi/onetrack/c/m;

    int-to-long v7, v5

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_49} :catch_4c

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :catch_4c
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    return-void
.end method
