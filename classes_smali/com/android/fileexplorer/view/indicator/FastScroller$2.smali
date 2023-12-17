.class Lcom/android/fileexplorer/view/indicator/FastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/indicator/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScroller;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$2;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$2;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isDragging()Z

    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_15

    .line 9
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$2;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 14
    move-result p3

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 18
    move-result p1

    .line 19
    invoke-virtual {p2, p3, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->updateThumbPositionByScrolling(II)V

    .line 22
    :cond_15
    return-void
.end method
