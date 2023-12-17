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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/internal/hybrid/Config;Ljava/lang/ClassLoader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/internal/hybrid/FeatureManager;->mFeatures:Ljava/util/Map;

    iput-object p1, p0, Lmiuix/internal/hybrid/FeatureManager;->mConfig:Lmiuix/internal/hybrid/Config;

    iput-object p2, p0, Lmiuix/internal/hybrid/FeatureManager;->mLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private initFeature(Ljava/lang/String;)Lmiuix/hybrid/HybridFeature;
    .registers 5

    const/16 v0, 0xcc

    :try_start_2
    iget-object v1, p0, Lmiuix/internal/hybrid/FeatureManager;->mLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/hybrid/HybridFeature;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_e} :catch_27
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_e} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_e} :catch_f

    return-object v1

    :catch_f
    new-instance v1, Lmiuix/internal/hybrid/HybridException;

    const-string v2, "feature cannot be accessed: "

    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_1b
    new-instance v1, Lmiuix/internal/hybrid/HybridException;

    const-string v2, "feature cannot be instantiated: "

    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_27
    new-instance v1, Lmiuix/internal/hybrid/HybridException;

    const-string v2, "feature not found: "

    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public lookupFeature(Ljava/lang/String;)Lmiuix/hybrid/HybridFeature;
    .registers 5

    iget-object v0, p0, Lmiuix/internal/hybrid/FeatureManager;->mFeatures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/hybrid/HybridFeature;

    if-nez v0, :cond_32

    iget-object v0, p0, Lmiuix/internal/hybrid/FeatureManager;->mConfig:Lmiuix/internal/hybrid/Config;

    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/Config;->getFeature(Ljava/lang/String;)Lmiuix/internal/hybrid/Feature;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/FeatureManager;->initFeature(Ljava/lang/String;)Lmiuix/hybrid/HybridFeature;

    move-result-object v1

    invoke-virtual {v0}, Lmiuix/internal/hybrid/Feature;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Lmiuix/hybrid/HybridFeature;->setParams(Ljava/util/Map;)V

    iget-object v0, p0, Lmiuix/internal/hybrid/FeatureManager;->mFeatures:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_32

    :cond_24
    new-instance v0, Lmiuix/internal/hybrid/HybridException;

    const/16 v1, 0xcc

    const-string v2, "feature not declared: "

    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_32
    :goto_32
    return-object v0
.end method
