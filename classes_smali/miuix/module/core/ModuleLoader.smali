.class public Lmiuix/module/core/ModuleLoader;
.super Ljava/lang/Object;
.source "ModuleLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/module/core/ModuleLoader$Builder;
    }
.end annotation


# instance fields
.field private mBaseContext:Landroid/content/Context;

.field private mClassLoader:Ljava/lang/ClassLoader;

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

.field private mModuleContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;Landroid/content/Context;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/module/core/ModuleLoader;->mBaseContext:Landroid/content/Context;

    iput-object p3, p0, Lmiuix/module/core/ModuleLoader;->mModuleContext:Landroid/content/Context;

    iput-object p2, p0, Lmiuix/module/core/ModuleLoader;->mClasses:Ljava/util/Map;

    new-instance v0, Lmiuix/module/core/DependencyLoader;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/module/core/DependencyLoader;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-virtual {v0, p3, p4}, Lmiuix/module/core/DependencyLoader;->add(Ljava/lang/ClassLoader;[Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_21
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_37

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3}, Lmiuix/module/core/DependencyLoader;->ignore(Ljava/lang/String;)V

    goto :goto_21

    :cond_37
    invoke-static {p1, v0}, Lmiuix/module/core/ContextHelper;->cloneClassLoader(Landroid/content/Context;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lmiuix/module/core/ModuleLoader;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/Map;Landroid/content/Context;[Ljava/lang/String;Lmiuix/module/core/ModuleLoader$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/module/core/ModuleLoader;-><init>(Landroid/content/Context;Ljava/util/Map;Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBaseContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiuix/module/core/ModuleLoader;->mBaseContext:Landroid/content/Context;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    iget-object v0, p0, Lmiuix/module/core/ModuleLoader;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getModuleContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiuix/module/core/ModuleLoader;->mModuleContext:Landroid/content/Context;

    return-object v0
.end method

.method public instantiate(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TI;>;)TI;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v0}, Lmiuix/module/core/ModuleLoader;->instantiate(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public instantiate(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TI;>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TI;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmiuix/module/core/ModuleLoader;->mClasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lmiuix/module/core/ModuleLoader;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no implementation for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_34} :catch_3c
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_34} :catch_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_34} :catch_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_34} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_34} :catch_34

    :catch_34
    move-exception p1

    goto :goto_3d

    :catch_36
    move-exception p1

    goto :goto_3d

    :catch_38
    move-exception p1

    goto :goto_3d

    :catch_3a
    move-exception p1

    goto :goto_3d

    :catch_3c
    move-exception p1

    :goto_3d
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
