.class Lcom/xiaomi/onetrack/api/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/ServiceQualityEvent;

.field public final synthetic b:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;Lcom/xiaomi/onetrack/ServiceQualityEvent;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/w;->b:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/w;->a:Lcom/xiaomi/onetrack/ServiceQualityEvent;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/w;->a:Lcom/xiaomi/onetrack/ServiceQualityEvent;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/w;->b:Lcom/xiaomi/onetrack/api/h;

    .line 5
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/w;->b:Lcom/xiaomi/onetrack/api/h;

    .line 11
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/w;->b:Lcom/xiaomi/onetrack/api/h;

    .line 17
    invoke-static {v3}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 20
    move-result-object v3

    .line 21
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/w;->b:Lcom/xiaomi/onetrack/api/h;

    .line 23
    invoke-static {v4}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 26
    move-result v4

    .line 27
    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/ServiceQualityEvent;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/w;->b:Lcom/xiaomi/onetrack/api/h;

    .line 33
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 36
    move-result-object v1

    .line 37
    const-string v2, "ot_service_quality"

    .line 39
    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 42
    goto :goto_36

    .line 43
    :catch_2a
    move-exception v0

    .line 44
    const-string v1, "trackNetAvailableEvent error: "

    .line 46
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object v1

    .line 50
    const-string v2, "OneTrackImp"

    .line 52
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 55
    :goto_36
    return-void
.end method
