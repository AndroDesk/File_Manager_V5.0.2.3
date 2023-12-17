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
.method public constructor <init>(Lmiuix/navigation/NavigationLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 3
    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 9
    invoke-static {v1}, Lmiuix/navigation/NavigationLayout;->access$100(Lmiuix/navigation/NavigationLayout;)Lmiuix/internal/util/ViewDragHelper;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lmiuix/internal/util/ViewDragHelper;->getEdgeSize()I

    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 19
    invoke-static {v2}, Lmiuix/navigation/NavigationLayout;->access$200(Lmiuix/navigation/NavigationLayout;)Z

    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v2, :cond_23

    .line 26
    if-eqz v0, :cond_21

    .line 28
    iget-object v2, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v3

    .line 34
    :cond_21
    sub-int/2addr v3, v1

    .line 35
    goto :goto_2b

    .line 36
    :cond_23
    if-eqz v0, :cond_2a

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 41
    move-result v2

    .line 42
    neg-int v3, v2

    .line 43
    :cond_2a
    add-int/2addr v3, v1

    .line 44
    :goto_2b
    if-eqz v0, :cond_5b

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 49
    move-result v1

    .line 50
    if-ge v1, v3, :cond_5b

    .line 52
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 54
    invoke-virtual {v1}, Lmiuix/navigation/NavigationLayout;->getDrawerLockMode()I

    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_5b

    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lmiuix/navigation/NavigationLayout$LayoutParams;

    .line 66
    iget-object v2, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 68
    invoke-static {v2}, Lmiuix/navigation/NavigationLayout;->access$100(Lmiuix/navigation/NavigationLayout;)Lmiuix/internal/util/ViewDragHelper;

    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 75
    move-result v4

    .line 76
    invoke-virtual {v2, v0, v3, v4}, Lmiuix/internal/util/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 79
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, v1, Lmiuix/navigation/NavigationLayout$LayoutParams;->isPeeking:Z

    .line 82
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 87
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$1;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 89
    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$300(Lmiuix/navigation/NavigationLayout;)V

    .line 92
    :cond_5b
    return-void
.end method
