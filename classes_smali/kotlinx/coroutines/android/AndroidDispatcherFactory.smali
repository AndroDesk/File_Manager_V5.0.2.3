.class public final Lkotlinx/coroutines/android/AndroidDispatcherFactory;
.super Ljava/lang/Object;
.source "HandlerDispatcher.kt"

# interfaces
.implements Lu3/k;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDispatcher(Ljava/util/List;)Lp3/r0;
    .registers 3
    .param p1  # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lu3/k;",
            ">;)",
            "Lp3/r0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_10

    .line 7
    new-instance v0, Lq3/a;

    .line 9
    invoke-static {p1}, Lq3/c;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Lq3/a;-><init>(Landroid/os/Handler;)V

    .line 16
    return-object v0

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    const-string v0, "The main looper is not available"

    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1
.end method

.method public getLoadPriority()I
    .registers 2

    const v0, 0x3fffffff  # 1.9999999f

    return v0
.end method

.method public hintOnError()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used"

    return-object v0
.end method
