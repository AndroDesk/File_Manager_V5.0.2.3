.class abstract Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;
.super Ljava/lang/Object;
.source "AbstractMapFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;
    }
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
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
        "Ljava/util/Map<",
        "TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field private final contributingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lx2/a<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Lx2/a<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;->contributingMap:Ljava/util/Map;

    .line 10
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;->contributingMap:Ljava/util/Map;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final contributingMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Lx2/a<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;->contributingMap:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public abstract synthetic get()Ljava/lang/Object;
.end method
