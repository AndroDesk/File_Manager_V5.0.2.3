.class public final Lcom/google/android/datatransport/runtime/dagger/internal/ProviderOfLazy;
.super Ljava/lang/Object;
.source "ProviderOfLazy.java"

# interfaces
.implements Lx2/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx2/a<",
        "Lcom/google/android/datatransport/runtime/dagger/Lazy<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final provider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lx2/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/ProviderOfLazy;->provider:Lx2/a;

    .line 6
    return-void
.end method

.method public static create(Lx2/a;)Lx2/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lx2/a<",
            "TT;>;)",
            "Lx2/a<",
            "Lcom/google/android/datatransport/runtime/dagger/Lazy<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/ProviderOfLazy;

    .line 3
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lx2/a;

    .line 9
    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/ProviderOfLazy;-><init>(Lx2/a;)V

    .line 12
    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/datatransport/runtime/dagger/Lazy;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/runtime/dagger/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/ProviderOfLazy;->provider:Lx2/a;

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->lazy(Lx2/a;)Lcom/google/android/datatransport/runtime/dagger/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/ProviderOfLazy;->get()Lcom/google/android/datatransport/runtime/dagger/Lazy;

    move-result-object v0

    return-object v0
.end method
