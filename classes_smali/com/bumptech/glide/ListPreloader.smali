.class public Lcom/bumptech/glide/ListPreloader;
.super Ljava/lang/Object;
.source "ListPreloader.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/ListPreloader$PreloadTarget;,
        Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;,
        Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;,
        Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private isIncreasing:Z

.field private lastEnd:I

.field private lastFirstVisible:I

.field private lastStart:I

.field private final maxPreload:I

.field private final preloadDimensionProvider:Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/ListPreloader$PreloadModelProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

.field private final requestManager:Lcom/bumptech/glide/RequestManager;

.field private totalItemCount:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestManager;",
            "Lcom/bumptech/glide/ListPreloader$PreloadModelProvider<",
            "TT;>;",
            "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bumptech/glide/ListPreloader;->lastFirstVisible:I

    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/bumptech/glide/ListPreloader;->isIncreasing:Z

    .line 10
    iput-object p1, p0, Lcom/bumptech/glide/ListPreloader;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 12
    iput-object p2, p0, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    .line 14
    iput-object p3, p0, Lcom/bumptech/glide/ListPreloader;->preloadDimensionProvider:Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;

    .line 16
    iput p4, p0, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    .line 18
    new-instance p1, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    .line 20
    add-int/2addr p4, v0

    .line 21
    invoke-direct {p1, p4}, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;-><init>(I)V

    .line 24
    iput-object p1, p0, Lcom/bumptech/glide/ListPreloader;->preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    .line 26
    return-void
.end method

.method private cancelAll()V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lcom/bumptech/glide/ListPreloader;->preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    .line 5
    iget-object v2, v2, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    .line 7
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1a

    .line 13
    iget-object v2, p0, Lcom/bumptech/glide/ListPreloader;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 15
    iget-object v3, p0, Lcom/bumptech/glide/ListPreloader;->preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    .line 17
    invoke-virtual {v3, v0, v0}, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->next(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_2

    .line 27
    :cond_1a
    return-void
.end method

.method private preload(II)V
    .registers 7

    if-ge p1, p2, :cond_b

    .line 5
    iget v0, p0, Lcom/bumptech/glide/ListPreloader;->lastEnd:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    move v0, p2

    goto :goto_12

    .line 6
    :cond_b
    iget v0, p0, Lcom/bumptech/glide/ListPreloader;->lastStart:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p2

    .line 7
    :goto_12
    iget v2, p0, Lcom/bumptech/glide/ListPreloader;->totalItemCount:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8
    iget v2, p0, Lcom/bumptech/glide/ListPreloader;->totalItemCount:I

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge p1, p2, :cond_35

    move p1, v1

    :goto_26
    if-ge p1, v0, :cond_45

    .line 9
    iget-object p2, p0, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;->getPreloadItems(I)Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x1

    invoke-direct {p0, p2, p1, v2}, Lcom/bumptech/glide/ListPreloader;->preloadAdapterPosition(Ljava/util/List;IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_26

    :cond_35
    add-int/lit8 p1, v0, -0x1

    :goto_37
    if-lt p1, v1, :cond_45

    .line 10
    iget-object p2, p0, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;->getPreloadItems(I)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2, p1, v3}, Lcom/bumptech/glide/ListPreloader;->preloadAdapterPosition(Ljava/util/List;IZ)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_37

    .line 11
    :cond_45
    iput v1, p0, Lcom/bumptech/glide/ListPreloader;->lastStart:I

    .line 12
    iput v0, p0, Lcom/bumptech/glide/ListPreloader;->lastEnd:I

    return-void
.end method

.method private preload(IZ)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/ListPreloader;->isIncreasing:Z

    if-eq v0, p2, :cond_9

    .line 2
    iput-boolean p2, p0, Lcom/bumptech/glide/ListPreloader;->isIncreasing:Z

    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/ListPreloader;->cancelAll()V

    :cond_9
    if-eqz p2, :cond_e

    .line 4
    iget p2, p0, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    goto :goto_11

    :cond_e
    iget p2, p0, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    neg-int p2, p2

    :goto_11
    add-int/2addr p2, p1

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/ListPreloader;->preload(II)V

    return-void
.end method

.method private preloadAdapterPosition(Ljava/util/List;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    if-eqz p3, :cond_13

    .line 7
    const/4 p3, 0x0

    .line 8
    :goto_7
    if-ge p3, v0, :cond_21

    .line 10
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v1, p2, p3}, Lcom/bumptech/glide/ListPreloader;->preloadItem(Ljava/lang/Object;II)V

    .line 17
    add-int/lit8 p3, p3, 0x1

    .line 19
    goto :goto_7

    .line 20
    :cond_13
    add-int/lit8 v0, v0, -0x1

    .line 22
    :goto_15
    if-ltz v0, :cond_21

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object p3

    .line 28
    invoke-direct {p0, p3, p2, v0}, Lcom/bumptech/glide/ListPreloader;->preloadItem(Ljava/lang/Object;II)V

    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 33
    goto :goto_15

    .line 34
    :cond_21
    return-void
.end method

.method private preloadItem(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/ListPreloader;->preloadDimensionProvider:Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;

    .line 6
    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;->getPreloadSize(Ljava/lang/Object;II)[I

    .line 9
    move-result-object p2

    .line 10
    if-nez p2, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object p3, p0, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    .line 15
    invoke-interface {p3, p1}, Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;->getPreloadRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_15

    .line 21
    return-void

    .line 22
    :cond_15
    iget-object p3, p0, Lcom/bumptech/glide/ListPreloader;->preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    .line 24
    const/4 v0, 0x0

    .line 25
    aget v0, p2, v0

    .line 27
    const/4 v1, 0x1

    .line 28
    aget p2, p2, v1

    .line 30
    invoke-virtual {p3, v0, p2}, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->next(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 37
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    .line 1
    iput p4, p0, Lcom/bumptech/glide/ListPreloader;->totalItemCount:I

    .line 3
    iget p1, p0, Lcom/bumptech/glide/ListPreloader;->lastFirstVisible:I

    .line 5
    if-le p2, p1, :cond_c

    .line 7
    add-int/2addr p3, p2

    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p3, p1}, Lcom/bumptech/glide/ListPreloader;->preload(IZ)V

    .line 12
    goto :goto_12

    .line 13
    :cond_c
    if-ge p2, p1, :cond_12

    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, p2, p1}, Lcom/bumptech/glide/ListPreloader;->preload(IZ)V

    .line 19
    :cond_12
    :goto_12
    iput p2, p0, Lcom/bumptech/glide/ListPreloader;->lastFirstVisible:I

    .line 21
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method
