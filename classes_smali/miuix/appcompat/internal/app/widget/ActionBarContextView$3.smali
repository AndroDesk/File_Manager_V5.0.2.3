.class Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/Scroller;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_73

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 15
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/Scroller;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 25
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$900(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)I

    .line 28
    move-result v2

    .line 29
    sub-int/2addr v1, v2

    .line 30
    invoke-static {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$802(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;I)I

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 38
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 40
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/Scroller;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_37

    .line 50
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 52
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 55
    goto :goto_73

    .line 56
    :cond_37
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 58
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/Scroller;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 65
    move-result v0

    .line 66
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 68
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$900(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)I

    .line 71
    move-result v1

    .line 72
    if-ne v0, v1, :cond_50

    .line 74
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 80
    goto :goto_73

    .line 81
    :cond_50
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 83
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/Scroller;

    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 90
    move-result v0

    .line 91
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 93
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$900(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)I

    .line 96
    move-result v1

    .line 97
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 99
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/FrameLayout;

    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 106
    move-result v2

    .line 107
    add-int/2addr v2, v1

    .line 108
    if-ne v0, v2, :cond_73

    .line 110
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 112
    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 116
    :cond_73
    :goto_73
    return-void
.end method
