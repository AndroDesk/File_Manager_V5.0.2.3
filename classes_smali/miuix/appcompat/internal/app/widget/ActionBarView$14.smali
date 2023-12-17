.class Lmiuix/appcompat/internal/app/widget/ActionBarView$14;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_6c

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 15
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 25
    iget v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 27
    sub-int/2addr v1, v3

    .line 28
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$3100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 31
    move-result v2

    .line 32
    add-int/2addr v2, v1

    .line 33
    invoke-static {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$3002(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)I

    .line 36
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 41
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 43
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3a

    .line 53
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 55
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 58
    goto :goto_6c

    .line 59
    :cond_3a
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 61
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 68
    move-result v0

    .line 69
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 71
    iget v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 73
    if-ne v0, v2, :cond_4f

    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 79
    goto :goto_6c

    .line 80
    :cond_4f
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 87
    move-result v0

    .line 88
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 90
    iget v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 92
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;

    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 99
    move-result v1

    .line 100
    add-int/2addr v1, v2

    .line 101
    if-ne v0, v1, :cond_6c

    .line 103
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 105
    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 109
    :cond_6c
    :goto_6c
    return-void
.end method
