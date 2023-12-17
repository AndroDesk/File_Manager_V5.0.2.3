.class public final Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;
.super Ljava/lang/Object;
.source "SingleCheck.java"

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
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private volatile instance:Ljava/lang/Object;

.field private volatile provider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>(Lx2/a;)V
    .registers 3
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
    sget-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->provider:Lx2/a;

    .line 10
    return-void
.end method

.method public static provider(Lx2/a;)Lx2/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lx2/a<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lx2/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;

    .line 3
    if-nez v0, :cond_15

    .line 5
    instance-of v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_15

    .line 10
    :cond_9
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;

    .line 12
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lx2/a;

    .line 18
    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;-><init>(Lx2/a;)V

    .line 21
    return-object v0

    .line 22
    :cond_15
    :goto_15
    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    .line 5
    if-ne v0, v1, :cond_16

    .line 7
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->provider:Lx2/a;

    .line 9
    if-nez v0, :cond_d

    .line 11
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 13
    goto :goto_16

    .line 14
    :cond_d
    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->provider:Lx2/a;

    .line 23
    :cond_16
    :goto_16
    return-object v0
.end method
