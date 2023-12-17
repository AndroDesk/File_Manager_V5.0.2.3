.class public final Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$Builder;
.super Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;
.source "MapProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder<",
        "TK;TV;",
        "Lx2/a<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory;

    .line 3
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;->map:Ljava/util/LinkedHashMap;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory;-><init>(Ljava/util/Map;Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$1;)V

    .line 9
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Lx2/a;)Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Lx2/a;)Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Lx2/a;)Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lx2/a<",
            "TV;>;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;->put(Ljava/lang/Object;Lx2/a;)Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;

    return-object p0
.end method

.method public bridge synthetic putAll(Lx2/a;)Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$Builder;->putAll(Lx2/a;)Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Lx2/a;)Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Ljava/util/Map<",
            "TK;",
            "Lx2/a<",
            "TV;>;>;>;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/MapProviderFactory$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;->putAll(Lx2/a;)Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;

    return-object p0
.end method
