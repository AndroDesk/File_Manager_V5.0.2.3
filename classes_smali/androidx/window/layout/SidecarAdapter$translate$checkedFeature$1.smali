.class final Landroidx/window/layout/SidecarAdapter$translate$checkedFeature$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SidecarAdapter.kt"

# interfaces
.implements Lh3/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh3/l<",
        "Landroidx/window/sidecar/SidecarDisplayFeature;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/window/layout/SidecarAdapter$translate$checkedFeature$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/window/layout/SidecarAdapter$translate$checkedFeature$1;

    invoke-direct {v0}, Landroidx/window/layout/SidecarAdapter$translate$checkedFeature$1;-><init>()V

    sput-object v0, Landroidx/window/layout/SidecarAdapter$translate$checkedFeature$1;->INSTANCE:Landroidx/window/layout/SidecarAdapter$translate$checkedFeature$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/window/sidecar/SidecarDisplayFeature;)Ljava/lang/Boolean;
    .registers 4
    .param p1  # Landroidx/window/sidecar/SidecarDisplayFeature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$require"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :cond_15
    :goto_15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-virtual {p0, p1}, Landroidx/window/layout/SidecarAdapter$translate$checkedFeature$1;->invoke(Landroidx/window/sidecar/SidecarDisplayFeature;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
