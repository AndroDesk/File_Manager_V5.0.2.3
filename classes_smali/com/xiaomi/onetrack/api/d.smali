.class public Lcom/xiaomi/onetrack/api/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/api/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "H5DataModel"


# instance fields
.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/xiaomi/onetrack/api/d$a;->a:Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/onetrack/api/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/d;->b:Ljava/lang/String;

    .line 12
    sget-object v0, Lcom/xiaomi/onetrack/api/d$a;->e:Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/onetrack/api/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    :try_start_11
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcom/xiaomi/onetrack/api/d;->c:J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_18

    .line 24
    goto :goto_2f

    .line 25
    :catch_18
    move-exception v0

    .line 26
    const-string v1, "e_ts parse error: "

    .line 28
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    const-string v1, "H5DataModel"

    .line 45
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_2f
    sget-object v0, Lcom/xiaomi/onetrack/api/d$a;->h:Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/onetrack/api/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/d;->d:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/xiaomi/onetrack/api/d$a;->i:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/onetrack/api/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/d;->e:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/xiaomi/onetrack/api/d$a;->j:Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/onetrack/api/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/d;->f:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/xiaomi/onetrack/api/d$a;->k:Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/onetrack/api/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/d;->g:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    const-string p1, ""

    return-object p1

    .line 2
    :cond_9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/onetrack/api/d;->c:J

    .line 3
    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/d;->d:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/d;->e:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/d;->f:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/d;->g:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "H5DataModel{eventName=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/d;->b:Ljava/lang/String;

    .line 9
    const/16 v2, 0x27

    .line 11
    const-string v3, ", e_ts="

    .line 13
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget-wide v3, p0, Lcom/xiaomi/onetrack/api/d;->c:J

    .line 18
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", appId=\'"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/d;->d:Ljava/lang/String;

    .line 28
    const-string v3, ", channel=\'"

    .line 30
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/d;->e:Ljava/lang/String;

    .line 35
    const-string v3, ", uid=\'"

    .line 37
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/d;->f:Ljava/lang/String;

    .line 42
    const-string v3, ", uidType=\'"

    .line 44
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/d;->g:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    const/16 v1, 0x7d

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method
