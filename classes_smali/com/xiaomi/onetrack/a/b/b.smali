.class public Lcom/xiaomi/onetrack/a/b/b;
.super Lcom/xiaomi/onetrack/f/b;


# static fields
.field private static final d:Ljava/lang/String; = "OTAdEvent"


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/onetrack/a/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/f/b;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/b/b;->e:Ljava/util/List;

    .line 7
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/f/b;->a(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p3}, Lcom/xiaomi/onetrack/f/b;->c(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/xiaomi/onetrack/f/b;->b(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/onetrack/f/b;->b(J)V

    .line 23
    new-instance p2, Lorg/json/JSONObject;

    .line 25
    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    const-string p4, "H"

    .line 30
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 33
    move-result-object p4

    .line 34
    invoke-virtual {p0, p2}, Lcom/xiaomi/onetrack/f/b;->b(Lorg/json/JSONObject;)V

    .line 37
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    .line 40
    move-result-object p2

    .line 41
    const-string v0, "level"

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 47
    move-result p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/f/b;->a(I)V

    .line 51
    invoke-virtual {p0, p4}, Lcom/xiaomi/onetrack/a/b/b;->a(Lorg/json/JSONObject;)V

    .line 54
    invoke-direct {p0, p4}, Lcom/xiaomi/onetrack/a/b/b;->c(Lorg/json/JSONObject;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_38} :catch_39

    .line 57
    goto :goto_45

    .line 58
    :catch_39
    move-exception p1

    .line 59
    const-string p2, "CustomEvent error:"

    .line 61
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    move-result-object p2

    .line 65
    const-string p3, "OTAdEvent"

    .line 67
    invoke-static {p1, p2, p3}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    :goto_45
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    sget-object v0, Lcom/xiaomi/onetrack/f/b$b;->H:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_10

    .line 12
    sget-object v0, Lcom/xiaomi/onetrack/f/b$b;->H:Ljava/lang/String;

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    :cond_10
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/onetrack/a/b/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/b;->e:Ljava/util/List;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 2
    :cond_3
    :try_start_3
    sget-object v0, Lcom/xiaomi/onetrack/f/b$b;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_bf

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_bf

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 5
    :goto_17
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_a5

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto/16 :goto_a1

    :cond_29
    const-string v3, "api.ad.xiaomi.com"

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const-string v3, "_sn_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7a

    const-string v3, "?"

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&_sn_="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7a

    .line 11
    :cond_5e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?_sn_="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    :cond_7a
    :goto_7a
    new-instance v3, Lcom/xiaomi/onetrack/a/b/a;

    invoke-direct {v3}, Lcom/xiaomi/onetrack/a/b/a;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/f/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/a/b/a;->c(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/a/b/a;->a(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/f/b;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/onetrack/a/b/a;->a(J)V

    .line 16
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/f/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/a/b/a;->d(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3, v2}, Lcom/xiaomi/onetrack/a/b/a;->b(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_17

    .line 19
    :cond_a5
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/b/b;->e:Ljava/util/List;
    :try_end_a7
    .catchall {:try_start_3 .. :try_end_a7} :catchall_a8

    goto :goto_bf

    :catchall_a8
    move-exception p1

    const-string v0, "parseAdMonitor Throwable:"

    .line 20
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OTAdEvent"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bf
    :goto_bf
    return-void
.end method
