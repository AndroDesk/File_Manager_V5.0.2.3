.class public final Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;
.super Ljava/lang/Object;
.source "SetFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
        "Ljava/util/Set<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_FACTORY:Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final collectionProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx2/a<",
            "Ljava/util/Collection<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private final individualProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx2/a<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/android/datatransport/runtime/dagger/internal/Factory;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;->EMPTY_FACTORY:Lcom/google/android/datatransport/runtime/dagger/internal/Factory;

    .line 11
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx2/a<",
            "TT;>;>;",
            "Ljava/util/List<",
            "Lx2/a<",
            "Ljava/util/Collection<",
            "TT;>;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static builder(II)Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;-><init>(IILcom/google/android/datatransport/runtime/dagger/internal/SetFactory$1;)V

    .line 7
    return-object v0
.end method

.method public static empty()Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;->EMPTY_FACTORY:Lcom/google/android/datatransport/runtime/dagger/internal/Factory;

    .line 3
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    .line 4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v2, :cond_34

    .line 6
    iget-object v5, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx2/a;

    invoke-interface {v5}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 7
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/2addr v0, v6

    .line 8
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 9
    :cond_34
    invoke-static {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/DaggerCollections;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_3f
    if-ge v4, v2, :cond_57

    .line 11
    iget-object v5, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx2/a;

    invoke-interface {v5}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 12
    :cond_57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_5b
    if-ge v3, v2, :cond_7c

    .line 13
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_67
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 14
    invoke-static {v5}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_67

    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 15
    :cond_7c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
