.class Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "FastScrollerBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/indicator/FastScrollerBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->access$100(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)Z

    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_10

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 14
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->hideCapsule()V

    .line 17
    :cond_10
    const/4 p1, 0x1

    .line 18
    if-eq p2, p1, :cond_19

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-static {p1, p2}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->access$200(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;I)V

    .line 26
    :cond_19
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->access$000(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_16

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 14
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->hideScrollerBar()V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 19
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->hideCapsule()V

    .line 22
    goto :goto_25

    .line 23
    :cond_16
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 25
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isDragging()Z

    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_25

    .line 31
    if-eqz p3, :cond_25

    .line 33
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 35
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->updateThumbPositionByScrolling()V

    .line 38
    :cond_25
    :goto_25
    return-void
.end method
