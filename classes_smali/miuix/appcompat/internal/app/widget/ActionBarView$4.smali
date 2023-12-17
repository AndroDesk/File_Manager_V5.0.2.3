.class Lmiuix/appcompat/internal/app/widget/ActionBarView$4;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarView.java"


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
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 4
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 6
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    cmpl-float p1, p1, v0

    .line 17
    if-nez p1, :cond_47

    .line 19
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 21
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 23
    if-eqz v0, :cond_31

    .line 25
    const/4 v1, 0x2

    .line 26
    if-eq v0, v1, :cond_1c

    .line 28
    goto :goto_5d

    .line 29
    :cond_1c
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 36
    move-result p1

    .line 37
    const/4 v0, 0x4

    .line 38
    if-eq p1, v0, :cond_5d

    .line 40
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 42
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 49
    goto :goto_5d

    .line 50
    :cond_31
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 57
    move-result p1

    .line 58
    const/16 v0, 0x8

    .line 60
    if-eq p1, v0, :cond_5d

    .line 62
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 64
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 71
    goto :goto_5d

    .line 72
    :cond_47
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 74
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_5d

    .line 84
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 86
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 89
    move-result-object p1

    .line 90
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 94
    :cond_5d
    :goto_5d
    return-void
.end method
