.class final Lcom/xiaomi/onetrack/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/k;->a:Lcom/xiaomi/onetrack/api/e;

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
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->c()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2e

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_2e

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2e

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/json/JSONObject;

    .line 29
    const-string v2, "eventName"

    .line 31
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    const-string v3, "data"

    .line 37
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    iget-object v3, p0, Lcom/xiaomi/onetrack/c/k;->a:Lcom/xiaomi/onetrack/api/e;

    .line 43
    invoke-interface {v3, v2, v1}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    goto :goto_10

    .line 47
    :cond_2e
    const/4 v0, 0x1

    .line 48
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/i;->c(Z)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    .line 51
    goto :goto_3f

    .line 52
    :catch_33
    move-exception v0

    .line 53
    const-string v1, "cta event error: "

    .line 55
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    move-result-object v1

    .line 59
    const-string v2, "NetworkAccessManager"

    .line 61
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 64
    :goto_3f
    const/4 v0, 0x0

    .line 65
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/i;->d(Z)Z

    .line 68
    return-void
.end method
