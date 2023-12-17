.class Lcom/xiaomi/onetrack/api/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/x;->a:Lcom/xiaomi/onetrack/api/h;

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
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/x;->a:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/x;->a:Lcom/xiaomi/onetrack/api/h;

    .line 9
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/x;->a:Lcom/xiaomi/onetrack/api/h;

    .line 15
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/x;->a:Lcom/xiaomi/onetrack/api/h;

    .line 21
    invoke-static {v3}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 24
    move-result v3

    .line 25
    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/x;->a:Lcom/xiaomi/onetrack/api/h;

    .line 31
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 34
    move-result-object v1

    .line 35
    const-string v2, "onetrack_cta_status"

    .line 37
    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 40
    goto :goto_34

    .line 41
    :catch_28
    move-exception v0

    .line 42
    const-string v1, "cta event error: "

    .line 44
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object v1

    .line 48
    const-string v2, "OneTrackImp"

    .line 50
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 53
    :goto_34
    return-void
.end method
