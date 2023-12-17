.class public Lcom/xiaomi/onetrack/api/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/api/e;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackLocalImp"

.field private static final b:I = 0x19000

.field private static final c:I = 0x2


# instance fields
.field private d:Lcom/xiaomi/onetrack/Configuration;

.field private e:Lcom/xiaomi/onetrack/util/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/onetrack/f/g;->a(Landroid/content/Context;)V

    .line 7
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/aj;->d:Lcom/xiaomi/onetrack/Configuration;

    .line 9
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/aj;->e:Lcom/xiaomi/onetrack/util/v;

    .line 11
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .registers 13

    const-string v0, ""

    .line 22
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/aj;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz p5, :cond_10

    .line 23
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/aj;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v1

    .line 24
    :cond_10
    invoke-direct {p0, v1}, Lcom/xiaomi/onetrack/api/aj;->a(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "OneTrackLocalImp"

    if-eqz v2, :cond_1e

    const-string p1, "This app disabled tracking data, skip it."

    .line 25
    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_1e
    :try_start_1e
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v2

    const-string v4, "needIds"

    invoke-virtual {v2, v1, p1, v4, v0}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p4, :cond_2c

    move-object v4, v0

    goto :goto_32

    :cond_2c
    const-string v4, "tip"

    .line 27
    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    :goto_32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tip: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", needIds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, v4, v2}, Lcom/xiaomi/onetrack/api/aj;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 30
    invoke-direct {p0, v1, p1}, Lcom/xiaomi/onetrack/api/aj;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string p1, " This event disabled tracking data , skip it."

    .line 31
    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 32
    :cond_60
    invoke-direct {p0, v1, p1}, Lcom/xiaomi/onetrack/api/aj;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string p1, " This event should not upload by sampling , skip it."

    .line 33
    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_6c
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v2

    const-string v4, "bannedParams"

    invoke-virtual {v2, v1, p1, v4, v0}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    :cond_76
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/onetrack/b/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bannedParamsForApp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", bannedParamsForEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ","

    .line 37
    invoke-static {v2, v0, v4}, Lcom/xiaomi/onetrack/util/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 38
    invoke-direct {p0, p3, v0}, Lcom/xiaomi/onetrack/api/aj;->a(Lorg/json/JSONObject;Ljava/util/Set;)V

    .line 39
    invoke-direct {p0, p4, v0}, Lcom/xiaomi/onetrack/api/aj;->a(Lorg/json/JSONObject;Ljava/util/Set;)V

    if-eqz p5, :cond_b4

    .line 40
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p3, p1, p2}, Lcom/xiaomi/onetrack/f/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d5

    .line 41
    :cond_b4
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p3, p1, p2}, Lcom/xiaomi/onetrack/f/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_1e .. :try_end_bf} :catchall_c0

    goto :goto_d5

    :catchall_c0
    move-exception p1

    const-string p2, "checkCloudControl error："

    .line 42
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d5
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "OneTrackLocalImp"

    if-eqz p1, :cond_52

    if-eqz p2, :cond_52

    .line 47
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_52

    :cond_d
    const-string v1, "jsonObject: "

    .line 48
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bannedParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :try_start_2d
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 51
    :cond_31
    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_46} :catch_47

    goto :goto_31

    :catch_47
    move-exception p1

    const-string p2, "filterParams error："

    .line 55
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 56
    invoke-static {p1, p2, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_51
    return-void

    :cond_52
    :goto_52
    const-string p1, "jsonObject is null or bannedParams is empty"

    .line 57
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    .line 68
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v0

    const-string v1, "disable_log"

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_18

    :catch_b
    move-exception p1

    const-string v0, "isDisableTrackForApp error: "

    .line 69
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OneTrackLocalImp"

    .line 70
    invoke-static {p1, v0, v1}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method private a(Lorg/json/JSONObject;)Z
    .registers 4

    const/4 v0, 0x0

    .line 78
    :try_start_1
    sget-object v1, Lcom/xiaomi/onetrack/f/b$b;->F:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    goto :goto_f

    :catchall_8
    const-string p1, "OneTrackLocalImp"

    const-string v1, ""

    .line 79
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    return v2

    .line 17
    :cond_10
    :try_start_10
    const-string v0, "\\."

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_3a

    .line 25
    array-length v0, p1

    .line 26
    const/4 v3, 0x5

    .line 27
    if-lt v0, v3, :cond_3a

    .line 29
    const-string v0, ","

    .line 31
    invoke-static {p2, v0}, Lcom/xiaomi/onetrack/util/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 34
    move-result-object p2

    .line 35
    if-eqz p2, :cond_3a

    .line 37
    const/4 v0, 0x4

    .line 38
    aget-object p1, p1, v0

    .line 40
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 43
    move-result p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2b} :catch_2e

    .line 44
    if-eqz p1, :cond_3a

    .line 46
    return v1

    .line 47
    :catch_2e
    move-exception p1

    .line 48
    const-string p2, "isMatchId error："

    .line 50
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object p2

    .line 54
    const-string v0, "OneTrackLocalImp"

    .line 56
    invoke-static {p1, p2, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    :cond_3a
    return v2
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    .line 5
    move-result-object v1

    .line 6
    const-string v2, "disable_log"

    .line 8
    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 11
    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    .line 12
    goto :goto_18

    .line 13
    :catch_c
    move-exception p1

    .line 14
    const-string p2, "isDisableTrackForEvent error: "

    .line 16
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object p2

    .line 20
    const-string v1, "OneTrackLocalImp"

    .line 22
    invoke-static {p1, p2, v1}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 25
    :goto_18
    return v0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/b/h;->b(Ljava/lang/String;Ljava/lang/String;)J

    .line 8
    move-result-wide v0

    .line 9
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2, p1}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result p1

    .line 25
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 28
    move-result p1

    .line 29
    rem-int/lit8 p1, p1, 0x64

    .line 31
    int-to-long v2, p1

    .line 32
    cmp-long p1, v0, v2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-lez p1, :cond_26

    .line 37
    move p1, v4

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    const/4 p1, 0x0

    .line 40
    :goto_27
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v6, "shouldUploadBySampling "

    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string p2, ",  shouldUpload="

    .line 55
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    const-string p2, ", sample="

    .line 63
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    const-string p2, ", val="

    .line 71
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    const-string v0, "OneTrackLocalImp"

    .line 83
    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    xor-int/2addr p1, v4

    .line 87
    return p1
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .line 21
    new-instance v0, Lcom/xiaomi/onetrack/api/ak;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/api/ak;-><init>(Lcom/xiaomi/onetrack/api/aj;I)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string v0, "OneTrackLocalImp"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_8} :catch_1b

    :try_start_8
    const-string v3, "H"

    .line 2
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_e} :catch_17

    :try_start_e
    const-string v4, "B"

    .line 3
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_33

    :catch_15
    move-exception v4

    goto :goto_1f

    :catch_17
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    goto :goto_1f

    :catch_1b
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v3, v2

    :goto_1f
    const-string v5, " data JSONException e:"

    .line 4
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    move-object v9, v1

    move-object v7, v2

    move-object v8, v3

    .line 6
    invoke-direct {p0, v8}, Lcom/xiaomi/onetrack/api/aj;->a(Lorg/json/JSONObject;)Z

    move-result v10

    .line 7
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/aj;->e:Lcom/xiaomi/onetrack/util/v;

    if-eqz v1, :cond_4c

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/util/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    if-nez v10, :cond_4c

    const-string p1, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    .line 8
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_4c
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/onetrack/api/aj;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    return-void

    .line 10
    :cond_53
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 11
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_5d
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/i;->a(Lcom/xiaomi/onetrack/api/e;)V

    .line 13
    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v1, :cond_80

    const-string v1, "onetrack_bug_report"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    if-eqz v10, :cond_8b

    .line 15
    iget-object p2, p0, Lcom/xiaomi/onetrack/api/aj;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {p2}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/String;)V

    .line 16
    :cond_8b
    iget-object p2, p0, Lcom/xiaomi/onetrack/api/aj;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {p2}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/String;)V

    move-object v5, p0

    move-object v6, p1

    .line 17
    invoke-direct/range {v5 .. v10}, Lcom/xiaomi/onetrack/api/aj;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "OneTrackLocalImp"

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_34

    .line 10
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isUseSystemNetTrafficOnly()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    goto :goto_34

    .line 17
    :cond_10
    const/4 v0, 0x1

    .line 18
    if-eqz p1, :cond_1d

    .line 20
    const-string v3, "onetrack_bug_report"

    .line 22
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1d

    .line 28
    move p1, v0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move p1, v2

    .line 31
    :goto_1e
    if-nez p1, :cond_33

    .line 33
    if-eqz p2, :cond_33

    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 38
    move-result p1

    .line 39
    mul-int/lit8 p1, p1, 0x2

    .line 41
    const p2, 0x19000

    .line 44
    if-le p1, p2, :cond_33

    .line 46
    const-string p1, "Event size exceed limitation!"

    .line 48
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return v2

    .line 52
    :cond_33
    return v0

    .line 53
    :cond_34
    :goto_34
    const-string p1, "Tracking data is disabled or onetrack use system net traffic only, skip it."

    .line 55
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return v2
.end method
