.class public abstract Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;
.super Ljava/lang/Object;
.source "AbstractMapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;",
            "Lx2/a<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/DaggerCollections;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;->map:Ljava/util/LinkedHashMap;

    .line 10
    return-void
.end method


# virtual methods
.method public put(Ljava/lang/Object;Lx2/a;)Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lx2/a<",
            "TV;>;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder<",
            "TK;TV;TV2;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;->map:Ljava/util/LinkedHashMap;

    .line 3
    const-string v1, "key"

    .line 5
    invoke-static {p1, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    const-string v1, "provider"

    .line 11
    invoke-static {p2, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-object p0
.end method

.method public putAll(Lx2/a;)Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Ljava/util/Map<",
            "TK;TV2;>;>;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder<",
            "TK;TV;TV2;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    check-cast p1, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;->getDelegate()Lx2/a;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;->putAll(Lx2/a;)Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    check-cast p1, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;

    .line 18
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;->map:Ljava/util/LinkedHashMap;

    .line 20
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;->access$000(Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;)Ljava/util/Map;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 27
    return-object p0
.end method
