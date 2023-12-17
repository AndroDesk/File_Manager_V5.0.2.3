.class Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;
.super Ljava/lang/Object;
.source "WidgetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/widget/helper/WidgetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopKPriorityQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private K:I

.field private queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-lez p1, :cond_15

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->K:I

    .line 8
    new-instance v0, Ljava/util/PriorityQueue;

    .line 10
    new-instance v1, Lj0/d;

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, v2}, Lj0/d;-><init>(I)V

    .line 16
    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 19
    iput-object v0, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->queue:Ljava/util/PriorityQueue;

    .line 21
    return-void

    .line 22
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 27
    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Comparable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->queue:Ljava/util/PriorityQueue;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->queue:Ljava/util/PriorityQueue;

    .line 12
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 15
    move-result v0

    .line 16
    iget v1, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->K:I

    .line 18
    if-ge v0, v1, :cond_19

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->queue:Ljava/util/PriorityQueue;

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 25
    goto :goto_23

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->queue:Ljava/util/PriorityQueue;

    .line 28
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->queue:Ljava/util/PriorityQueue;

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 36
    :goto_23
    return-void
.end method

.method public getQueue()Ljava/util/PriorityQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->queue:Ljava/util/PriorityQueue;

    .line 3
    return-object v0
.end method
