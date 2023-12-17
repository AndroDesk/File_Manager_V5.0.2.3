.class public final Landroidx/slidingpanelayout/widget/a;
.super Ljava/lang/Object;
.source "FoldingFeatureObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slidingpanelayout/widget/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/window/layout/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lp3/w0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Landroidx/slidingpanelayout/widget/a$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/window/layout/q;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1  # Landroidx/window/layout/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "executor"

    .line 3
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/a;->a:Landroidx/window/layout/n;

    .line 11
    iput-object p2, p0, Landroidx/slidingpanelayout/widget/a;->b:Ljava/util/concurrent/Executor;

    .line 13
    return-void
.end method


# virtual methods
.method public final setOnFoldingFeatureChangeListener(Landroidx/slidingpanelayout/widget/a$a;)V
    .registers 3
    .param p1  # Landroidx/slidingpanelayout/widget/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "onFoldingFeatureChangeListener"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/a;->d:Landroidx/slidingpanelayout/widget/a$a;

    .line 8
    return-void
.end method
