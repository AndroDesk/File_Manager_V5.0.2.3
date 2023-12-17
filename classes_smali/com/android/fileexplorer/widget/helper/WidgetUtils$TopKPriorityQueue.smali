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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_15

    iput p1, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->K:I

    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lj0/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lj0/d;-><init>(I)V

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->queue:Ljava/util/PriorityQueue;

    return-void

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

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

    iget-object v0, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->K:I

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_19
    iget-object v0, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->queue:Ljava/util/PriorityQueue;

    return-object v0
.end method
