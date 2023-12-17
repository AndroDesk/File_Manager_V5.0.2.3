.class public Lcom/xiaomi/stat/b/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "RDM"

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/String; = "CN"

.field private static final d:Ljava/lang/String; = "INTL"

.field private static final e:Ljava/lang/String; = "IN"

.field private static final f:Ljava/lang/String; = "data.mistat.xiaomi.com"

.field private static final g:Ljava/lang/String; = "data.mistat.intl.xiaomi.com"

.field private static final h:Ljava/lang/String; = "data.mistat.india.xiaomi.com"

.field private static final i:Ljava/lang/String; = "region-url"

.field private static final j:Ljava/lang/String; = "/map_domain"

.field private static final k:Ljava/lang/String; = "region"

.field private static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Lcom/xiaomi/stat/b/g;


# instance fields
.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/xiaomi/stat/b/h;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/xiaomi/stat/b/g;->b:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lcom/xiaomi/stat/b/g;->l:Ljava/util/HashMap;

    .line 15
    const-string v1, "CN"

    .line 17
    const-string v2, "data.mistat.xiaomi.com"

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/xiaomi/stat/b/g;->l:Ljava/util/HashMap;

    .line 24
    const-string v1, "INTL"

    .line 26
    const-string v2, "data.mistat.intl.xiaomi.com"

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/xiaomi/stat/b/g;->l:Ljava/util/HashMap;

    .line 33
    const-string v1, "IN"

    .line 35
    const-string v2, "data.mistat.india.xiaomi.com"

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "CN"

    .line 6
    iput-object v0, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    .line 8
    const-string v0, "data.mistat.xiaomi.com"

    .line 10
    iput-object v0, p0, Lcom/xiaomi/stat/b/g;->n:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/xiaomi/stat/b/g;->o:Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/xiaomi/stat/b/g;->a(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public static a()Lcom/xiaomi/stat/b/g;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/b/g;->r:Lcom/xiaomi/stat/b/g;

    if-nez v0, :cond_17

    .line 2
    sget-object v0, Lcom/xiaomi/stat/b/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/xiaomi/stat/b/g;->r:Lcom/xiaomi/stat/b/g;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcom/xiaomi/stat/b/g;

    invoke-direct {v1}, Lcom/xiaomi/stat/b/g;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/b/g;->r:Lcom/xiaomi/stat/b/g;

    .line 5
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 6
    :cond_17
    :goto_17
    sget-object v0, Lcom/xiaomi/stat/b/g;->r:Lcom/xiaomi/stat/b/g;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v1

    const-string v2, "https://"

    if-eqz v1, :cond_13

    goto :goto_1e

    .line 4
    :cond_13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_1c

    if-lt v0, v3, :cond_1c

    goto :goto_1e

    :cond_1c
    const-string v2, "http://"

    .line 5
    :goto_1e
    iget-object v0, p0, Lcom/xiaomi/stat/b/g;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)Z
    .registers 5

    .line 2
    sget-object v0, Lcom/xiaomi/stat/b/g;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4
    iput-object p1, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/xiaomi/stat/b/g;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/stat/b/g;->n:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_30

    :cond_1a
    const-string v0, "INTL"

    .line 6
    iput-object v0, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    .line 7
    sget-object v1, Lcom/xiaomi/stat/b/g;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/stat/b/g;->n:Ljava/lang/String;

    const-string v0, "RDM"

    const-string v1, "unknown region,set to unknown(singapore)\'s domain"

    .line 8
    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    :goto_30
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v1

    const-string v2, "region"

    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/xiaomi/stat/b/g;->o:Ljava/lang/String;

    return-void
.end method

.method private static e()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_16

    .line 15
    const/4 v0, 0x0

    .line 16
    const-string v1, "RDM"

    .line 18
    const-string v2, "can not init in main thread!"

    .line 20
    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :cond_16
    return-void
.end method

.method private f()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/b/g;->p:Ljava/lang/String;

    .line 3
    const-string v1, "/map_domain"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/xiaomi/stat/d/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/HashMap;

    .line 15
    iget-object v1, p0, Lcom/xiaomi/stat/b/g;->q:Lcom/xiaomi/stat/b/h;

    .line 17
    sget-object v2, Lcom/xiaomi/stat/b/g;->l:Ljava/util/HashMap;

    .line 19
    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/stat/b/h;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/xiaomi/stat/b/g;->l:Ljava/util/HashMap;

    .line 25
    iget-object v1, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_29

    .line 39
    iput-object v0, p0, Lcom/xiaomi/stat/b/g;->n:Ljava/lang/String;

    .line 41
    goto :goto_3d

    .line 42
    :cond_29
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3d

    .line 48
    const-string v0, "INTL"

    .line 50
    iput-object v0, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    .line 52
    sget-object v1, Lcom/xiaomi/stat/b/g;->l:Ljava/util/HashMap;

    .line 54
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/xiaomi/stat/b/g;->n:Ljava/lang/String;

    .line 62
    :cond_3d
    :goto_3d
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 6

    .line 7
    invoke-static {}, Lcom/xiaomi/stat/b/g;->e()V

    .line 8
    new-instance v0, Lcom/xiaomi/stat/b/h;

    invoke-direct {v0}, Lcom/xiaomi/stat/b/h;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/stat/b/g;->q:Lcom/xiaomi/stat/b/h;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/stat/b/g;->p:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result p1

    const-string v0, "RDM"

    if-nez p1, :cond_25

    const-string p1, "CN"

    .line 11
    iput-object p1, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    const-string p1, "data.mistat.xiaomi.com"

    .line 12
    iput-object p1, p0, Lcom/xiaomi/stat/b/g;->n:Ljava/lang/String;

    goto :goto_5b

    .line 13
    :cond_25
    invoke-static {}, Lcom/xiaomi/stat/d/m;->g()Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SystemRegion]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "region"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 17
    iput-object p1, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    .line 18
    :cond_50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_58

    .line 19
    iput-object v1, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    .line 20
    :cond_58
    invoke-direct {p0}, Lcom/xiaomi/stat/b/g;->f()V

    :goto_5b
    const-string p1, "[file-dir]:"

    .line 21
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 22
    iget-object v1, p0, Lcom/xiaomi/stat/b/g;->p:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[CurrentRegion]:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[domain]:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/stat/b/g;->n:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/b/g;->d(Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/b/g;->c(Ljava/lang/String;)Z

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 5

    .line 38
    iget-object v0, p0, Lcom/xiaomi/stat/b/g;->q:Lcom/xiaomi/stat/b/h;

    const-string v1, "region-url"

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/stat/b/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/xiaomi/stat/b/g;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    goto :goto_15

    :cond_13
    iget-object v0, p0, Lcom/xiaomi/stat/b/g;->o:Ljava/lang/String;

    :goto_15
    if-eqz p1, :cond_5b

    .line 40
    iget-object v1, p0, Lcom/xiaomi/stat/b/g;->q:Lcom/xiaomi/stat/b/h;

    sget-object v2, Lcom/xiaomi/stat/b/g;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/stat/b/h;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    sput-object p1, Lcom/xiaomi/stat/b/g;->l:Ljava/util/HashMap;

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 42
    sget-object p1, Lcom/xiaomi/stat/b/g;->l:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 44
    iput-object v0, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/xiaomi/stat/b/g;->n:Ljava/lang/String;

    goto :goto_4e

    .line 46
    :cond_3a
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result p1

    if-eqz p1, :cond_4e

    const-string p1, "INTL"

    .line 47
    iput-object p1, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/xiaomi/stat/b/g;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/stat/b/g;->n:Ljava/lang/String;

    .line 49
    :cond_4e
    :goto_4e
    sget-object p1, Lcom/xiaomi/stat/b/g;->l:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/xiaomi/stat/b/g;->p:Ljava/lang/String;

    const-string v1, "/map_domain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/stat/d/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5b
    return-void
.end method

.method public a(Z)V
    .registers 4

    if-eqz p1, :cond_30

    const-string p1, "INTL"

    .line 28
    iput-object p1, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    const-string p1, "data.mistat.intl.xiaomi.com"

    .line 29
    iput-object p1, p0, Lcom/xiaomi/stat/b/g;->n:Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/xiaomi/stat/b/g;->o:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    goto :goto_17

    :cond_15
    iget-object p1, p0, Lcom/xiaomi/stat/b/g;->o:Ljava/lang/String;

    .line 31
    :goto_17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 32
    sget-object v0, Lcom/xiaomi/stat/b/g;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 34
    iput-object p1, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/xiaomi/stat/b/g;->n:Ljava/lang/String;

    goto :goto_38

    :cond_30
    const-string p1, "CN"

    .line 36
    iput-object p1, p0, Lcom/xiaomi/stat/b/g;->m:Ljava/lang/String;

    const-string p1, "data.mistat.xiaomi.com"

    .line 37
    iput-object p1, p0, Lcom/xiaomi/stat/b/g;->n:Ljava/lang/String;

    :cond_38
    :goto_38
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "get_all_config"

    .line 1
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)Z
    .registers 5

    .line 6
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object p1

    const-string v0, "key_update_time"

    const-wide/16 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 8
    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/r;->b(J)Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "mistats/v3"

    .line 1
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    .line 3
    const-string v1, "Cannot clone instance of this class"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "key_get"

    .line 1
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
