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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->access$100(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->hideCapsule()V

    :cond_10
    const/4 p1, 0x1

    if-eq p2, p1, :cond_19

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->access$200(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;I)V

    :cond_19
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->access$000(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->hideScrollerBar()V

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->hideCapsule()V

    goto :goto_25

    :cond_16
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isDragging()Z

    move-result p1

    if-nez p1, :cond_25

    if-eqz p3, :cond_25

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->updateThumbPositionByScrolling()V

    :cond_25
    :goto_25
    return-void
.end method
