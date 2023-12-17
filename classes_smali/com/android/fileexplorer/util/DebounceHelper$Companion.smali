.class public final Lcom/android/fileexplorer/util/DebounceHelper$Companion;
.super Ljava/lang/Object;
.source "DebounceHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/util/DebounceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Li3/e;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lh3/l;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->click$lambda$2(Lh3/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Li2/f;)V
    .registers 2

    invoke-static {p1, p0}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->click$lambda$4$lambda$3(Li2/f;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;Li2/f;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->click$lambda$1(Landroid/view/View;Li2/f;)V

    return-void
.end method

.method public static synthetic click$default(Lcom/android/fileexplorer/util/DebounceHelper$Companion;Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_6

    const-wide/16 p2, 0x1f4

    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->click(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic click$default(Lcom/android/fileexplorer/util/DebounceHelper$Companion;Landroid/view/View;JLjava/lang/Runnable;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_6

    const-wide/16 p2, 0x1f4

    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->click(Landroid/view/View;JLjava/lang/Runnable;)V

    return-void
.end method

.method private static final click$lambda$1(Landroid/view/View;Li2/f;)V
    .registers 4

    const-string v0, "$view"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/fileexplorer/util/c;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/fileexplorer/util/c;-><init>(Li2/f;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final click$lambda$1$lambda$0(Li2/f;Landroid/view/View;)V
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Li2/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static final click$lambda$2(Lh3/l;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final click$lambda$4(Landroid/view/View;Li2/f;)V
    .registers 4

    const-string v0, "$view"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/fileexplorer/util/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/fileexplorer/util/c;-><init>(Li2/f;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final click$lambda$4$lambda$3(Li2/f;Landroid/view/View;)V
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Li2/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static final click$lambda$5(Lh3/l;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic d(Landroid/view/View;Li2/f;)V
    .registers 2

    invoke-static {p1, p0}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->click$lambda$1$lambda$0(Li2/f;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/View;Li2/f;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->click$lambda$4(Landroid/view/View;Li2/f;)V

    return-void
.end method

.method public static synthetic f(Lh3/l;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->click$lambda$5(Lh3/l;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final click(Landroid/view/View;JLandroid/view/View$OnClickListener;)V
    .registers 7
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4  # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/fileexplorer/util/d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/fileexplorer/util/d;-><init>(Landroid/view/View;I)V

    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Li2/e;->f(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;

    move-result-object p1

    invoke-static {}, Lj2/a;->a()Lj2/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/util/DebounceHelper$Companion$click$4;

    invoke-direct {p2, p4}, Lcom/android/fileexplorer/util/DebounceHelper$Companion$click$4;-><init>(Landroid/view/View$OnClickListener;)V

    new-instance p3, Lcom/android/fileexplorer/util/a;

    const/4 p4, 0x3

    invoke-direct {p3, p2, p4}, Lcom/android/fileexplorer/util/a;-><init>(Lh3/l;I)V

    invoke-virtual {p1, p3}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    return-void
.end method

.method public final click(Landroid/view/View;JLjava/lang/Runnable;)V
    .registers 7
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4  # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p4, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/fileexplorer/util/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/fileexplorer/util/d;-><init>(Landroid/view/View;I)V

    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Li2/e;->f(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;

    move-result-object p1

    invoke-static {}, Lj2/a;->a()Lj2/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/util/DebounceHelper$Companion$click$2;

    invoke-direct {p2, p4}, Lcom/android/fileexplorer/util/DebounceHelper$Companion$click$2;-><init>(Ljava/lang/Runnable;)V

    new-instance p3, Lcom/android/fileexplorer/util/a;

    const/4 p4, 0x2

    invoke-direct {p3, p2, p4}, Lcom/android/fileexplorer/util/a;-><init>(Lh3/l;I)V

    invoke-virtual {p1, p3}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    return-void
.end method
