.class public Lcom/xiaomi/onetrack/Configuration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/Configuration$Builder;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/xiaomi/onetrack/OneTrack$Mode;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Lcom/xiaomi/onetrack/OneTrack$IEventHook;


# direct methods
.method private constructor <init>(Lcom/xiaomi/onetrack/Configuration$Builder;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    iput-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->g:Z

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->h:Z

    .line 6
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->i:Z

    .line 7
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->k:Z

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->l:Z

    .line 9
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->n:Z

    .line 10
    invoke-static {p1}, Lcom/xiaomi/onetrack/Configuration$Builder;->a(Lcom/xiaomi/onetrack/Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->a:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/xiaomi/onetrack/Configuration$Builder;->b(Lcom/xiaomi/onetrack/Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->b:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/xiaomi/onetrack/Configuration$Builder;->c(Lcom/xiaomi/onetrack/Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->c:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/xiaomi/onetrack/Configuration$Builder;->d(Lcom/xiaomi/onetrack/Configuration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->d:Z

    .line 14
    invoke-static {p1}, Lcom/xiaomi/onetrack/Configuration$Builder;->e(Lcom/xiaomi/onetrack/Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->e:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/xiaomi/onetrack/Configuration$Builder;->f(Lcom/xiaomi/onetrack/Configuration$Builder;)Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 16
    invoke-static {p1}, Lcom/xiaomi/onetrack/Configuration$Builder;->g(Lcom/xiaomi/onetrack/Configuration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->g:Z

    .line 17
    invoke-static {p1}, Lcom/xiaomi/onetrack/Configuration$Builder;->h(Lcom/xiaomi/onetrack/Configuration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->i:Z

    .line 18
    invoke-static {p1}, Lcom/xiaomi/onetrack/Configuration$Builder;->i(Lcom/xiaomi/onetrack/Configuration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->h:Z

    .line 19
    invoke-static {p1}, Lcom/xiaomi/onetrack/Configuration$Builder;->j(Lcom/xiaomi/onetrack/Configuration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->j:Z

    .line 20
    invoke-static {p1}, Lcom/xiaomi/onetrack/Configuration$Builder;->k(Lcom/xiaomi/onetrack/Configuration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->k:Z

    .line 21
    invoke-static {p1}, Lcom/xiaomi/onetrack/Configuration$Builder;->l(Lcom/xiaomi/onetrack/Configuration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->l:Z

    .line 22
    invoke-static {p1}, Lcom/xiaomi/onetrack/Configuration$Builder;->m(Lcom/xiaomi/onetrack/Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->m:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/xiaomi/onetrack/Configuration$Builder;->n(Lcom/xiaomi/onetrack/Configuration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->n:Z

    .line 24
    invoke-static {p1}, Lcom/xiaomi/onetrack/Configuration$Builder;->o(Lcom/xiaomi/onetrack/Configuration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/Configuration;->o:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/onetrack/Configuration$Builder;Lcom/xiaomi/onetrack/Configuration$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/Configuration;-><init>(Lcom/xiaomi/onetrack/Configuration$Builder;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_3e

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x4

    .line 17
    if-le v1, v2, :cond_3e

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_41

    .line 26
    if-eqz v1, :cond_34

    .line 28
    const/4 v2, 0x1

    .line 29
    if-eq v1, v2, :cond_34

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    move-result v3

    .line 35
    add-int/lit8 v3, v3, -0x2

    .line 37
    if-eq v1, v3, :cond_34

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 42
    move-result v3

    .line 43
    sub-int/2addr v3, v2

    .line 44
    if-ne v1, v3, :cond_2e

    .line 46
    goto :goto_34

    .line 47
    :cond_2e
    const-string v2, "*"

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    goto :goto_3b

    .line 53
    :cond_34
    :goto_34
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    .line 62
    goto :goto_13

    .line 63
    :cond_3e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method


# virtual methods
.method public getAdEventAppId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->o:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->c:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->m:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 3
    return-object v0
.end method

.method public getPluginId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->e:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isAutoTrackActivityAction()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->k:Z

    .line 3
    return v0
.end method

.method public isExceptionCatcherEnable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->j:Z

    .line 3
    return v0
.end method

.method public isGAIDEnable()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->g:Z

    .line 3
    return v0
.end method

.method public isIMEIEnable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->i:Z

    .line 3
    return v0
.end method

.method public isIMSIEnable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->h:Z

    .line 3
    return v0
.end method

.method public isInternational()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->d:Z

    .line 3
    return v0
.end method

.method public isOverrideMiuiRegionSetting()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->l:Z

    .line 3
    return v0
.end method

.method public isUseCustomPrivacyPolicy()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->n:Z

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "Configuration{appId=\'"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/xiaomi/onetrack/Configuration;->a:Ljava/lang/String;

    .line 13
    invoke-direct {p0, v1}, Lcom/xiaomi/onetrack/Configuration;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const/16 v1, 0x27

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ", pluginId=\'"

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v2, p0, Lcom/xiaomi/onetrack/Configuration;->b:Ljava/lang/String;

    .line 32
    invoke-direct {p0, v2}, Lcom/xiaomi/onetrack/Configuration;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    const-string v2, ", channel=\'"

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v2, p0, Lcom/xiaomi/onetrack/Configuration;->c:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    const-string v2, ", international="

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-boolean v2, p0, Lcom/xiaomi/onetrack/Configuration;->d:Z

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    const-string v2, ", region=\'"

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v2, p0, Lcom/xiaomi/onetrack/Configuration;->e:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", overrideMiuiRegionSetting="

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/Configuration;->l:Z

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", mode="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Lcom/xiaomi/onetrack/Configuration;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", GAIDEnable="

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/Configuration;->g:Z

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", IMSIEnable="

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/Configuration;->h:Z

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", IMEIEnable="

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/Configuration;->i:Z

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ", ExceptionCatcherEnable="

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/Configuration;->j:Z

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", instanceId="

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lcom/xiaomi/onetrack/Configuration;->m:Ljava/lang/String;

    .line 145
    invoke-direct {p0, v1}, Lcom/xiaomi/onetrack/Configuration;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const/16 v1, 0x7d

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v0
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a0} :catch_a1

    .line 161
    return-object v0

    .line 162
    :catch_a1
    const-string v0, ""

    .line 164
    return-object v0
.end method
