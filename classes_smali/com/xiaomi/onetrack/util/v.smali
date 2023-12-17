.class public Lcom/xiaomi/onetrack/util/v;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "custom_open"

.field private static final b:Ljava/lang/String; = "custom_close"

.field private static final c:Ljava/lang/String; = "exprience_open"

.field private static final d:Ljava/lang/String; = "exprience_close"

.field private static final e:Ljava/lang/String; = "PrivacyManager"

.field private static final k:J = 0xdbba0L


# instance fields
.field private f:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

.field private g:Lcom/xiaomi/onetrack/Configuration;

.field private h:Z

.field private i:Z

.field private j:J


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/Configuration;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/xiaomi/onetrack/util/v;->j:J

    .line 8
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/v;->g:Lcom/xiaomi/onetrack/Configuration;

    .line 10
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/aa;->k(Ljava/lang/String;)Z

    .line 17
    move-result p1

    .line 18
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/util/v;->h:Z

    .line 20
    return-void
.end method

.method private b()Z
    .registers 5

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/onetrack/util/v;->j:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/onetrack/util/v;->j:J

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/util/v;->i:Z

    .line 5
    :cond_22
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/util/v;->i:Z

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "onetrack_dau"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "onetrack_pa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private c(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/v;->f:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0, p1}, Lcom/xiaomi/onetrack/OneTrack$IEventHook;->isRecommendEvent(Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method private d(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/v;->f:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0, p1}, Lcom/xiaomi/onetrack/OneTrack$IEventHook;->isCustomDauEvent(Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/v;->g:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isUseCustomPrivacyPolicy()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 26
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/util/v;->h:Z

    if-eqz v0, :cond_f

    const-string v0, "custom_open"

    return-object v0

    :cond_f
    const-string v0, "custom_close"

    return-object v0

    .line 27
    :cond_12
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/v;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "exprience_open"

    return-object v0

    :cond_1b
    const-string v0, "exprience_close"

    return-object v0
.end method

.method public a(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/v;->f:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/util/v;->h:Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/v;->g:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isUseCustomPrivacyPolicy()Z

    move-result v0

    const-string v1, "open"

    const-string v2, "close"

    const-string v3, "PrivacyManager"

    if-eqz v0, :cond_27

    const-string v0, "use custom privacy policy, the policy is "

    .line 2
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-boolean v4, p0, Lcom/xiaomi/onetrack/util/v;->h:Z

    if-eqz v4, :cond_19

    goto :goto_1a

    :cond_19
    move-object v1, v2

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/util/v;->h:Z

    goto :goto_3f

    .line 5
    :cond_27
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/v;->b()Z

    move-result v0

    const-string v4, "use system experience plan, the policy is "

    .line 6
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_34

    goto :goto_35

    :cond_34
    move-object v1, v2

    .line 7
    :goto_35
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    if-nez v0, :cond_91

    .line 8
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/v;->b(Ljava/lang/String;)Z

    move-result v0

    .line 9
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/v;->c(Ljava/lang/String;)Z

    move-result v1

    .line 10
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/v;->d(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "This event "

    .line 11
    invoke-static {v4, p1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v0, :cond_58

    const-string v4, " is "

    goto :goto_5a

    :cond_58
    const-string v4, " is not "

    .line 12
    :goto_5a
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "basic event and "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "is"

    const-string v5, "is not"

    if-eqz v1, :cond_6a

    move-object v6, v4

    goto :goto_6b

    :cond_6a
    move-object v6, v5

    :goto_6b
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " recommend event and "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_76

    goto :goto_77

    :cond_76
    move-object v4, v5

    :goto_77
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " custom dau event"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_8f

    if-nez v1, :cond_8f

    if-eqz v2, :cond_8d

    goto :goto_8f

    :cond_8d
    const/4 p1, 0x0

    goto :goto_90

    :cond_8f
    :goto_8f
    const/4 p1, 0x1

    :goto_90
    move v0, p1

    :cond_91
    return v0
.end method
