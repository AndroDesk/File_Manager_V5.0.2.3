.class public final Lcom/android/fileexplorer/util/RxTransformerHelperKt;
.super Ljava/lang/Object;
.source "RxTransformerHelper.kt"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static final createIO2MainObservable(Li2/e;Landroidx/lifecycle/m;)Li2/e;
    .registers 4
    .param p0  # Li2/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Landroidx/lifecycle/m;
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
            ")",
            "Li2/e<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "observable"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/RxTransformerHelperKt;->observableIO2Main(Li2/e;)Li2/e;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/android/fileexplorer/util/AutoDisposeKt;->auto$default(Li2/e;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;ILjava/lang/Object;)Li2/e;

    move-result-object p0

    return-object p0
.end method

.method public static final main()V
    .registers 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    return-void
.end method

.method public static synthetic main([Ljava/lang/String;)V
    .registers 1

    invoke-static {}, Lcom/android/fileexplorer/util/RxTransformerHelperKt;->main()V

    return-void
.end method

.method public static final observableIO2Main(Li2/e;)Li2/e;
    .registers 2
    .param p0  # Li2/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li2/e<",
            "TT;>;)",
            "Li2/e<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lw2/a;->b:Li2/i;

    invoke-virtual {p0, v0}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    move-result-object p0

    invoke-static {}, Lj2/a;->a()Lj2/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object p0

    return-object p0
.end method
