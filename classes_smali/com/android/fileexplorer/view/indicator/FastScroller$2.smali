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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScroller;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$2;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$2;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isDragging()Z

    move-result p2

    if-nez p2, :cond_15

    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$2;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->updateThumbPositionByScrolling(II)V

    :cond_15
    return-void
.end method
