.class public final Lcom/android/fileexplorer/util/AutoDisposeKt;
.super Ljava/lang/Object;
.source "AutoDispose.kt"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/fileexplorer/util/AutoDisposeKt;->auto$lambda$1()V

    return-void
.end method

.method public static final auto(Li2/c;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)Li2/c;
    .registers 3
    .param p0  # Li2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Landroidx/lifecycle/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li2/c<",
            "TT;>;",
            "Landroidx/lifecycle/m;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ")",
            "Li2/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, "<this>"

    invoke-static {p0, p1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final auto(Li2/e;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)Li2/e;
    .registers 4
    .param p0  # Li2/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Landroidx/lifecycle/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li2/e<",
            "TT;>;",
            "Landroidx/lifecycle/m;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ")",
            "Li2/e<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/fileexplorer/util/AutoDisposeKt$auto$1;

    invoke-direct {v0, p1, p2}, Lcom/android/fileexplorer/util/AutoDisposeKt$auto$1;-><init>(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V

    new-instance p1, Lcom/android/fileexplorer/util/a;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lcom/android/fileexplorer/util/a;-><init>(Lh3/l;I)V

    new-instance p2, Lcom/android/cloud/fragment/model/g;

    const/4 v0, 0x7

    invoke-direct {p2, v0}, Lcom/android/cloud/fragment/model/g;-><init>(I)V

    new-instance v0, Lq2/b;

    invoke-direct {v0, p0, p1, p2}, Lq2/b;-><init>(Li2/e;Lcom/android/fileexplorer/util/a;Lcom/android/cloud/fragment/model/g;)V

    return-object v0
.end method

.method public static synthetic auto$default(Li2/c;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;ILjava/lang/Object;)Li2/c;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    sget-object p2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    :cond_6
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/util/AutoDisposeKt;->auto(Li2/c;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)Li2/c;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic auto$default(Li2/e;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;ILjava/lang/Object;)Li2/e;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    sget-object p2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    :cond_6
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/util/AutoDisposeKt;->auto(Li2/e;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)Li2/e;

    move-result-object p0

    return-object p0
.end method

.method private static final auto$lambda$0(Lh3/l;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final auto$lambda$1()V
    .registers 0

    return-void
.end method

.method private static final auto$lambda$2(Lh3/l;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final auto$lambda$3(J)V
    .registers 2

    return-void
.end method

.method private static final auto$lambda$4()V
    .registers 0

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/android/fileexplorer/util/AutoDisposeKt;->auto$lambda$4()V

    return-void
.end method

.method public static synthetic c(Lh3/l;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/AutoDisposeKt;->auto$lambda$0(Lh3/l;Ljava/lang/Object;)V

    return-void
.end method
