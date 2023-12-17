.class public Lcom/airbnb/lottie/model/LottieCompositionCache;
.super Ljava/lang/Object;
.source "LottieCompositionCache.java"


# static fields
.field private static final INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;


# instance fields
.field private final cache:Landroidx/collection/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/e<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 3
    invoke-direct {v0}, Lcom/airbnb/lottie/model/LottieCompositionCache;-><init>()V

    .line 6
    sput-object v0, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/collection/e;

    .line 6
    const/16 v1, 0x14

    .line 8
    invoke-direct {v0, v1}, Landroidx/collection/e;-><init>(I)V

    .line 11
    iput-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/e;

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;
    .registers 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 3
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/e;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/collection/e;->c(I)V

    .line 7
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .registers 3

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/e;

    .line 7
    invoke-virtual {v0, p1}, Landroidx/collection/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    .line 13
    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/e;

    .line 6
    invoke-virtual {v0, p1, p2}, Landroidx/collection/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    return-void
.end method

.method public resize(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/e;

    .line 3
    if-lez p1, :cond_f

    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iput p1, v0, Landroidx/collection/e;->c:I

    .line 8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 9
    invoke-virtual {v0, p1}, Landroidx/collection/e;->c(I)V

    .line 12
    return-void

    .line 13
    :catchall_c
    move-exception p1

    .line 14
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    .line 15
    throw p1

    .line 16
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    const-string v0, "maxSize <= 0"

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1
.end method
