.class public final Lcom/android/fileexplorer/util/AutoDisposeKt$auto$1$1;
.super Ljava/lang/Object;
.source "AutoDispose.kt"

# interfaces
.implements Landroidx/lifecycle/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/AutoDisposeKt$auto$1;->invoke(Lk2/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $dispose:Lk2/b;

.field public final synthetic $event:Landroidx/lifecycle/Lifecycle$Event;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/Lifecycle$Event;Lk2/b;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/util/AutoDisposeKt$auto$1$1;->$event:Landroidx/lifecycle/Lifecycle$Event;

    iput-object p2, p0, Lcom/android/fileexplorer/util/AutoDisposeKt$auto$1$1;->$dispose:Lk2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4
    .param p1  # Landroidx/lifecycle/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "actualEvent"

    invoke-static {p2, p1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/util/AutoDisposeKt$auto$1$1;->$event:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p1, p2, :cond_13

    iget-object p1, p0, Lcom/android/fileexplorer/util/AutoDisposeKt$auto$1$1;->$dispose:Lk2/b;

    invoke-interface {p1}, Lk2/b;->dispose()V

    :cond_13
    return-void
.end method
