.class public Lmiuix/internal/hybrid/FeatureManager;
.super Ljava/lang/Object;
.source "FeatureManager.java"


# instance fields
.field private mConfig:Lmiuix/internal/hybrid/Config;

.field private mFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/hybrid/HybridFeature;",
            ">;"
        }
    .end annotation
.end field

.field private mLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lmiuix/internal/hybrid/Config;Ljava/lang/ClassLoader;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/internal/hybrid/FeatureManager;->mFeatures:Ljava/util/Map;

    .line 11
    iput-object p1, p0, Lmiuix/internal/hybrid/FeatureManager;->mConfig:Lmiuix/internal/hybrid/Config;

    .line 13
    iput-object p2, p0, Lmiuix/internal/hybrid/FeatureManager;->mLoader:Ljava/lang/ClassLoader;

    .line 15
    return-void
.end method

.method private initFeature(Ljava/lang/String;)Lmiuix/hybrid/HybridFeature;
    .registers 5

    .line 1
    const/16 v0, 0xcc

    .line 3
    :try_start_2
    iget-object v1, p0, Lmiuix/internal/hybrid/FeatureManager;->mLoader:Ljava/lang/ClassLoader;

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lmiuix/hybrid/HybridFeature;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_e} :catch_27
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_e} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_e} :catch_f

    .line 15
    return-object v1

    .line 16
    :catch_f
    new-instance v1, Lmiuix/internal/hybrid/HybridException;

    .line 18
    const-string v2, "feature cannot be accessed: "

    .line 20
    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v1, v0, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    .line 27
    throw v1

    .line 28
    :catch_1b
    new-instance v1, Lmiuix/internal/hybrid/HybridException;

    .line 30
    const-string v2, "feature cannot be instantiated: "

    .line 32
    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v1, v0, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    .line 39
    throw v1

    .line 40
    :catch_27
    new-instance v1, Lmiuix/internal/hybrid/HybridException;

    .line 42
    const-string v2, "feature not found: "

    .line 44
    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v1, v0, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    .line 51
    throw v1
.end method


# virtual methods
.method public lookupFeature(Ljava/lang/String;)Lmiuix/hybrid/HybridFeature;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/FeatureManager;->mFeatures:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/hybrid/HybridFeature;

    .line 9
    if-nez v0, :cond_32

    .line 11
    iget-object v0, p0, Lmiuix/internal/hybrid/FeatureManager;->mConfig:Lmiuix/internal/hybrid/Config;

    .line 13
    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/Config;->getFeature(Ljava/lang/String;)Lmiuix/internal/hybrid/Feature;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_24

    .line 19
    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/FeatureManager;->initFeature(Ljava/lang/String;)Lmiuix/hybrid/HybridFeature;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Lmiuix/internal/hybrid/Feature;->getParams()Ljava/util/Map;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v1, v0}, Lmiuix/hybrid/HybridFeature;->setParams(Ljava/util/Map;)V

    .line 30
    iget-object v0, p0, Lmiuix/internal/hybrid/FeatureManager;->mFeatures:Ljava/util/Map;

    .line 32
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-object v0, v1

    .line 36
    goto :goto_32

    .line 37
    :cond_24
    new-instance v0, Lmiuix/internal/hybrid/HybridException;

    .line 39
    const/16 v1, 0xcc

    .line 41
    const-string v2, "feature not declared: "

    .line 43
    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, v1, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    .line 50
    throw v0

    .line 51
    :cond_32
    :goto_32
    return-object v0
.end method
