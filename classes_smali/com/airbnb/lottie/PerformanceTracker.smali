.class public Lcom/airbnb/lottie/PerformanceTracker;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/PerformanceTracker$FrameListener;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private final floatComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ll0/c<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final frameListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/PerformanceTracker$FrameListener;",
            ">;"
        }
    .end annotation
.end field

.field private final layerRenderTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/utils/MeanCalculator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 7
    new-instance v1, Landroidx/collection/b;

    .line 9
    invoke-direct {v1, v0}, Landroidx/collection/b;-><init>(I)V

    .line 12
    iput-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 21
    new-instance v0, Lcom/airbnb/lottie/PerformanceTracker$1;

    .line 23
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/PerformanceTracker$1;-><init>(Lcom/airbnb/lottie/PerformanceTracker;)V

    .line 26
    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->floatComparator:Ljava/util/Comparator;

    .line 28
    return-void
.end method


# virtual methods
.method public addFrameListener(Lcom/airbnb/lottie/PerformanceTracker$FrameListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public clearRenderTimes()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    return-void
.end method

.method public getSortedRenderTimes()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll0/c<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 3
    if-nez v0, :cond_9

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    iget-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 14
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 17
    move-result v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    iget-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 23
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v1

    .line 31
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_45

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Map$Entry;

    .line 43
    new-instance v3, Ll0/c;

    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/airbnb/lottie/utils/MeanCalculator;

    .line 55
    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/MeanCalculator;->getMean()F

    .line 58
    move-result v2

    .line 59
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    move-result-object v2

    .line 63
    invoke-direct {v3, v4, v2}, Ll0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_1e

    .line 70
    :cond_45
    iget-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->floatComparator:Ljava/util/Comparator;

    .line 72
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 75
    return-object v0
.end method

.method public logRenderTimes()V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/PerformanceTracker;->getSortedRenderTimes()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "LOTTIE"

    .line 12
    const-string v2, "Render times:"

    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_36

    .line 25
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ll0/c;

    .line 31
    const/4 v5, 0x2

    .line 32
    new-array v5, v5, [Ljava/lang/Object;

    .line 34
    iget-object v6, v4, Ll0/c;->a:Ljava/lang/Object;

    .line 36
    aput-object v6, v5, v2

    .line 38
    iget-object v4, v4, Ll0/c;->b:Ljava/lang/Object;

    .line 40
    const/4 v6, 0x1

    .line 41
    aput-object v4, v5, v6

    .line 43
    const-string v4, "\t\t%30s:%.2f"

    .line 45
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 54
    goto :goto_12

    .line 55
    :cond_36
    return-void
.end method

.method public recordRenderTime(Ljava/lang/String;F)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/airbnb/lottie/utils/MeanCalculator;

    .line 14
    if-nez v0, :cond_19

    .line 16
    new-instance v0, Lcom/airbnb/lottie/utils/MeanCalculator;

    .line 18
    invoke-direct {v0}, Lcom/airbnb/lottie/utils/MeanCalculator;-><init>()V

    .line 21
    iget-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 23
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_19
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/utils/MeanCalculator;->add(F)V

    .line 29
    const-string v0, "__container"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_3a

    .line 37
    iget-object p1, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    .line 39
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p1

    .line 43
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3a

    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/airbnb/lottie/PerformanceTracker$FrameListener;

    .line 55
    invoke-interface {v0, p2}, Lcom/airbnb/lottie/PerformanceTracker$FrameListener;->onFrameRendered(F)V

    .line 58
    goto :goto_2a

    .line 59
    :cond_3a
    return-void
.end method

.method public removeFrameListener(Lcom/airbnb/lottie/PerformanceTracker$FrameListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 3
    return-void
.end method
