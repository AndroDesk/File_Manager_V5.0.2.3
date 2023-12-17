.class Lcom/xiaomi/onetrack/api/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J

.field public final synthetic g:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/af;->g:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/af;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/af;->b:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/xiaomi/onetrack/api/af;->c:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/xiaomi/onetrack/api/af;->d:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/xiaomi/onetrack/api/af;->e:Ljava/lang/String;

    .line 13
    iput-wide p7, p0, Lcom/xiaomi/onetrack/api/af;->f:J

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 1
    const-string v0, "onetrack_bug_report"

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/af;->g:Lcom/xiaomi/onetrack/api/h;

    .line 5
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    move-result-object v11

    .line 9
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/af;->g:Lcom/xiaomi/onetrack/api/h;

    .line 11
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/af;->a:Ljava/lang/String;

    .line 17
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/af;->b:Ljava/lang/String;

    .line 19
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/af;->c:Ljava/lang/String;

    .line 21
    iget-object v5, p0, Lcom/xiaomi/onetrack/api/af;->d:Ljava/lang/String;

    .line 23
    iget-object v6, p0, Lcom/xiaomi/onetrack/api/af;->e:Ljava/lang/String;

    .line 25
    iget-wide v7, p0, Lcom/xiaomi/onetrack/api/af;->f:J

    .line 27
    iget-object v9, p0, Lcom/xiaomi/onetrack/api/af;->g:Lcom/xiaomi/onetrack/api/h;

    .line 29
    invoke-static {v9}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 32
    move-result-object v9

    .line 33
    iget-object v10, p0, Lcom/xiaomi/onetrack/api/af;->g:Lcom/xiaomi/onetrack/api/h;

    .line 35
    invoke-static {v10}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 38
    move-result-object v10

    .line 39
    iget-object v12, p0, Lcom/xiaomi/onetrack/api/af;->g:Lcom/xiaomi/onetrack/api/h;

    .line 41
    invoke-static {v12}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 44
    move-result-object v12

    .line 45
    iget-object v13, p0, Lcom/xiaomi/onetrack/api/af;->g:Lcom/xiaomi/onetrack/api/h;

    .line 47
    invoke-static {v13}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    .line 50
    move-result v13

    .line 51
    invoke-static/range {v2 .. v13}, Lcom/xiaomi/onetrack/api/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v1, v0, v2}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3a

    .line 58
    goto :goto_46

    .line 59
    :catch_3a
    move-exception v0

    .line 60
    const-string v1, "trackException error: "

    .line 62
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    move-result-object v1

    .line 66
    const-string v2, "OneTrackImp"

    .line 68
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 71
    :goto_46
    return-void
.end method
