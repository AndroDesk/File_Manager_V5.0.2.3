.class final Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SavedStateHandleSupport.kt"

# interfaces
.implements Lh3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/SavedStateHandleSupport;->c(Landroidx/lifecycle/f0;)Landroidx/lifecycle/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh3/l<",
        "Lz0/a;",
        "Landroidx/lifecycle/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1$1;

    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1$1;-><init>()V

    sput-object v0, Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1$1;->INSTANCE:Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lz0/a;)Landroidx/lifecycle/x;
    .registers 3
    .param p1  # Lz0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$initializer"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroidx/lifecycle/x;

    invoke-direct {p1}, Landroidx/lifecycle/x;-><init>()V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 2
    check-cast p1, Lz0/a;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1$1;->invoke(Lz0/a;)Landroidx/lifecycle/x;

    move-result-object p1

    return-object p1
.end method
