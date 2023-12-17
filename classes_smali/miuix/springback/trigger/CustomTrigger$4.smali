.class Lmiuix/springback/trigger/CustomTrigger$4;
.super Ljava/lang/Object;
.source "CustomTrigger.java"

# interfaces
.implements Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/CustomTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/springback/trigger/CustomTrigger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/springback/trigger/CustomTrigger;)V
    .registers 2

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .registers 6

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v1, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_67

    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_67

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;->onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V

    :cond_35
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result p1

    if-nez p1, :cond_4c

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v3, v3}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_4c

    :cond_45
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_4c
    :goto_4c
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {p1}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result v0

    if-nez v0, :cond_67

    if-eqz p1, :cond_67

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_67

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_67
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1, v3}, Lmiuix/springback/trigger/CustomTrigger;->access$402(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    return-void
.end method

.method public onActionLoadCancel(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .registers 5

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v1, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    if-ne v0, v2, :cond_2d

    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_2d

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {p1}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result v0

    if-nez v0, :cond_2d

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2d

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2d
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->access$402(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    return-void
.end method

.method public onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .registers 6

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$402(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v3, v2, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    if-ne v0, v3, :cond_51

    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_51

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;->onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V

    :cond_29
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result p1

    if-nez p1, :cond_51

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_51

    :cond_4a
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_51
    :goto_51
    return-void
.end method

.method public onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;I)V
    .registers 7

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$402(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v3, v2, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    if-ne v0, v3, :cond_51

    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_51

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;->onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;I)V

    :cond_29
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p2, p1, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result p1

    if-nez p1, :cond_51

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_51

    :cond_4a
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p2, p1, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_51
    :goto_51
    return-void
.end method

.method public onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .registers 7

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$402(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object v0

    if-ne v0, p1, :cond_79

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$802(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)Lmiuix/springback/trigger/BaseTrigger$Action;

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_32
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;->onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V

    :cond_43
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p1

    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    invoke-virtual {v2, v1, p1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    if-eqz v0, :cond_72

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v2, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v3, v3, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, p1, v2, v4}, Landroid/view/View;->layout(IIII)V

    :cond_72
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_79
    return-void
.end method

.method public onUpdateTriggerTextIndex(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;ILjava/lang/String;)V
    .registers 4

    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    aput-object p3, p1, p2

    return-void
.end method
