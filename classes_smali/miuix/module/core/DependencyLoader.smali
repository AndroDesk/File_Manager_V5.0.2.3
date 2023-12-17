.class Lmiuix/module/core/DependencyLoader;
.super Ljava/lang/ClassLoader;
.source "DependencyLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DependencyLoader"


# instance fields
.field private mDependencies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mDependencyClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mIgnoredClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 4
    new-instance p1, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object p1, p0, Lmiuix/module/core/DependencyLoader;->mDependencyClasses:Ljava/util/Map;

    .line 11
    new-instance p1, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object p1, p0, Lmiuix/module/core/DependencyLoader;->mDependencies:Ljava/util/Map;

    .line 18
    new-instance p1, Ljava/util/HashSet;

    .line 20
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 23
    iput-object p1, p0, Lmiuix/module/core/DependencyLoader;->mIgnoredClasses:Ljava/util/Set;

    .line 25
    return-void
.end method


# virtual methods
.method public varargs add(Ljava/lang/ClassLoader;[Ljava/lang/String;)V
    .registers 7

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_e

    .line 5
    aget-object v2, p2, v1

    .line 7
    iget-object v3, p0, Lmiuix/module/core/DependencyLoader;->mDependencies:Ljava/util/Map;

    .line 9
    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 14
    goto :goto_2

    .line 15
    :cond_e
    return-void
.end method

.method public ignore(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/module/core/DependencyLoader;->mIgnoredClasses:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-string v0, "loading class: "

    .line 3
    const-string v1, "DependencyLoader"

    .line 5
    invoke-static {v0, p1, v1}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lmiuix/module/core/DependencyLoader;->mDependencyClasses:Ljava/util/Map;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Class;

    .line 16
    if-eqz v0, :cond_12

    .line 18
    return-object v0

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/module/core/DependencyLoader;->mDependencies:Ljava/util/Map;

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/ClassLoader;

    .line 27
    if-eqz v0, :cond_21

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_21
    iget-object v0, p0, Lmiuix/module/core/DependencyLoader;->mIgnoredClasses:Ljava/util/Set;

    .line 36
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2b

    .line 42
    const/4 p1, 0x0

    .line 43
    return-object p1

    .line 44
    :cond_2b
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public varargs preload([Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_12

    .line 5
    aget-object v2, p1, v1

    .line 7
    iget-object v3, p0, Lmiuix/module/core/DependencyLoader;->mDependencyClasses:Ljava/util/Map;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 12
    move-result-object v4

    .line 13
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 18
    goto :goto_2

    .line 19
    :cond_12
    return-void
.end method
