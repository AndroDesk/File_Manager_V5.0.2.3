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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$900(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$802(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;I)I

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_73

    :cond_37
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$900(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)I

    move-result v1

    if-ne v0, v1, :cond_50

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    goto :goto_73

    :cond_50
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$900(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    if-ne v0, v2, :cond_73

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    :cond_73
    :goto_73
    return-void
.end method
