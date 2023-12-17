.class Lmiuix/navigation/NavigationLayout$1;
.super Ljava/lang/Object;
.source "NavigationLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigation/NavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigation/NavigationLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigation/NavigationLayout;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v1}, Lmiuix/navigation/NavigationLayout;->access$100(Lmiuix/navigation/NavigationLayout;)Lmiuix/internal/util/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/internal/util/ViewDragHelper;->getEdgeSize()I

    move-result v1

    iget-object v2, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v2}, Lmiuix/navigation/NavigationLayout;->access$200(Lmiuix/navigation/NavigationLayout;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    if-eqz v0, :cond_21

    iget-object v2, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    :cond_21
    sub-int/2addr v3, v1

    goto :goto_2b

    :cond_23
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v3, v2

    :cond_2a
    add-int/2addr v3, v1

    :goto_2b
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v3, :cond_5b

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-virtual {v1}, Lmiuix/navigation/NavigationLayout;->getDrawerLockMode()I

    move-result v1

    if-nez v1, :cond_5b

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lmiuix/navigation/NavigationLayout$LayoutParams;

    iget-object v2, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v2}, Lmiuix/navigation/NavigationLayout;->access$100(Lmiuix/navigation/NavigationLayout;)Lmiuix/internal/util/ViewDragHelper;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lmiuix/internal/util/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lmiuix/navigation/NavigationLayout$LayoutParams;->isPeeking:Z

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$300(Lmiuix/navigation/NavigationLayout;)V

    :cond_5b
    return-void
.end method
