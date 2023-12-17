.class public Lmiuix/module/core/ModuleLoader$Builder;
.super Ljava/lang/Object;
.source "ModuleLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/module/core/ModuleLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBaseContext:Landroid/content/Context;

.field private mClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mModuleContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/module/core/ModuleLoader$Builder;->mDependencies:Ljava/util/Set;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/module/core/ModuleLoader$Builder;->mClasses:Ljava/util/Map;

    .line 9
    iput-object p1, p0, Lmiuix/module/core/ModuleLoader$Builder;->mBaseContext:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lmiuix/module/core/ModuleLoader$Builder;->mModuleContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/module/core/ModuleLoader$Builder;->mDependencies:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/module/core/ModuleLoader$Builder;->mClasses:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lmiuix/module/core/ModuleLoader$Builder;->mBaseContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lmiuix/module/core/ModuleLoader$Builder;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lmiuix/module/core/ModuleLoader;
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/module/core/ModuleLoader$Builder;->mModuleContext:Landroid/content/Context;

    .line 3
    if-nez v0, :cond_15

    .line 5
    :try_start_4
    iget-object v0, p0, Lmiuix/module/core/ModuleLoader$Builder;->mBaseContext:Landroid/content/Context;

    .line 7
    iget-object v1, p0, Lmiuix/module/core/ModuleLoader$Builder;->mPackageName:Ljava/lang/String;

    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 13
    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_d} :catch_e

    .line 14
    goto :goto_15

    .line 15
    :catch_e
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/RuntimeException;

    .line 18
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    throw v1

    .line 22
    :cond_15
    :goto_15
    move-object v5, v0

    .line 23
    new-instance v0, Lmiuix/module/core/ModuleLoader;

    .line 25
    iget-object v3, p0, Lmiuix/module/core/ModuleLoader$Builder;->mBaseContext:Landroid/content/Context;

    .line 27
    iget-object v4, p0, Lmiuix/module/core/ModuleLoader$Builder;->mClasses:Ljava/util/Map;

    .line 29
    iget-object v1, p0, Lmiuix/module/core/ModuleLoader$Builder;->mDependencies:Ljava/util/Set;

    .line 31
    const/4 v2, 0x0

    .line 32
    new-array v2, v2, [Ljava/lang/String;

    .line 34
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    move-object v6, v1

    .line 39
    check-cast v6, [Ljava/lang/String;

    .line 41
    const/4 v7, 0x0

    .line 42
    move-object v2, v0

    .line 43
    invoke-direct/range {v2 .. v7}, Lmiuix/module/core/ModuleLoader;-><init>(Landroid/content/Context;Ljava/util/Map;Landroid/content/Context;[Ljava/lang/String;Lmiuix/module/core/ModuleLoader$1;)V

    .line 46
    return-object v0
.end method

.method public register(Ljava/lang/Class;Ljava/lang/String;)Lmiuix/module/core/ModuleLoader$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lmiuix/module/core/ModuleLoader$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/module/core/ModuleLoader$Builder;->mClasses:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-object p0
.end method

.method public require(Ljava/lang/String;)Lmiuix/module/core/ModuleLoader$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/module/core/ModuleLoader$Builder;->mDependencies:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    return-object p0
.end method
