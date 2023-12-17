.class public final Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;
.super Ljava/lang/Object;
.source "SetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final SET_CONTRIBUTIONS_CANNOT_BE_NULL:Ljava/lang/String; = "Set contributions cannot be null"


# instance fields
.field private final contributions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    iput-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;->contributions:Ljava/util/List;

    .line 11
    return-void
.end method

.method public static newSetBuilder(I)Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;-><init>(I)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;->contributions:Ljava/util/List;

    .line 3
    const-string v1, "Set contributions cannot be null"

    .line 5
    invoke-static {p1, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_14

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, "Set contributions cannot be null"

    .line 17
    invoke-static {v1, v2}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    goto :goto_4

    .line 21
    :cond_14
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;->contributions:Ljava/util/List;

    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    return-object p0
.end method

.method public build()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;->contributions:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_23

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_17

    .line 12
    new-instance v0, Ljava/util/HashSet;

    .line 14
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;->contributions:Ljava/util/List;

    .line 16
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetBuilder;->contributions:Ljava/util/List;

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_23
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
