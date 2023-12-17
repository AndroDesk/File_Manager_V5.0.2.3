.class final Lcom/android/fileexplorer/util/AutoDisposeKt$auto$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AutoDispose.kt"

# interfaces
.implements Lh3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/AutoDisposeKt;->auto(Li2/c;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)Li2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh3/l<",
        "Lorg/reactivestreams/Subscription;",
        "Ly2/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $event:Landroidx/lifecycle/Lifecycle$Event;

.field public final synthetic $lifecycleOwner:Landroidx/lifecycle/m;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/util/AutoDisposeKt$auto$3;->$lifecycleOwner:Landroidx/lifecycle/m;

    iput-object p2, p0, Lcom/android/fileexplorer/util/AutoDisposeKt$auto$3;->$event:Landroidx/lifecycle/Lifecycle$Event;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lorg/reactivestreams/Subscription;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/util/AutoDisposeKt$auto$3;->invoke(Lorg/reactivestreams/Subscription;)V

    sget-object p1, Ly2/e;->a:Ly2/e;

    return-object p1
.end method

.method public final invoke(Lorg/reactivestreams/Subscription;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/util/AutoDisposeKt$auto$3;->$lifecycleOwner:Landroidx/lifecycle/m;

    invoke-interface {v0}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/util/AutoDisposeKt$auto$3$1;

    iget-object v2, p0, Lcom/android/fileexplorer/util/AutoDisposeKt$auto$3;->$event:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {v1, v2, p1}, Lcom/android/fileexplorer/util/AutoDisposeKt$auto$3$1;-><init>(Landroidx/lifecycle/Lifecycle$Event;Lorg/reactivestreams/Subscription;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    return-void
.end method
