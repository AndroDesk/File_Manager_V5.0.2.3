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
.method public constructor <init>(Lmiuix/springback/trigger/CustomTrigger;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 9
    iget-object v2, v1, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v0, v2, :cond_67

    .line 14
    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 17
    move-result-object v0

    .line 18
    if-ne v0, p1, :cond_67

    .line 20
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 22
    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_45

    .line 30
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 32
    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    .line 34
    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 37
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 39
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_35

    .line 45
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 47
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;->onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V

    .line 54
    :cond_35
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 56
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_4c

    .line 62
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 64
    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 66
    invoke-virtual {p1, v3, v3}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 69
    goto :goto_4c

    .line 70
    :cond_45
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 72
    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    .line 74
    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 77
    :cond_4c
    :goto_4c
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 79
    invoke-virtual {p1}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    .line 82
    move-result-object p1

    .line 83
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 85
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_67

    .line 91
    if-eqz p1, :cond_67

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_67

    .line 99
    const/16 v0, 0x8

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_67
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 106
    invoke-static {p1, v3}, Lmiuix/springback/trigger/CustomTrigger;->access$402(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 109
    return-void
.end method

.method public onActionLoadCancel(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 9
    iget-object v2, v1, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    .line 11
    if-ne v0, v2, :cond_2d

    .line 13
    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 16
    move-result-object v0

    .line 17
    if-ne v0, p1, :cond_2d

    .line 19
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 21
    invoke-virtual {p1}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 27
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2d

    .line 33
    if-eqz p1, :cond_2d

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2d

    .line 41
    const/16 v0, 0x8

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :cond_2d
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-static {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->access$402(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 52
    return-void
.end method

.method public onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$402(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 7
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 9
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 15
    iget-object v3, v2, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    .line 17
    if-ne v0, v3, :cond_51

    .line 19
    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 22
    move-result-object v0

    .line 23
    if-ne v0, p1, :cond_51

    .line 25
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 27
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_29

    .line 33
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 35
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;->onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V

    .line 42
    :cond_29
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 44
    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_4a

    .line 52
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 54
    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    .line 56
    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 59
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 61
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_51

    .line 67
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 69
    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 71
    invoke-virtual {p1, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 74
    goto :goto_51

    .line 75
    :cond_4a
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 77
    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    .line 79
    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 82
    :cond_51
    :goto_51
    return-void
.end method

.method public onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$402(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 7
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 9
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 15
    iget-object v3, v2, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    .line 17
    if-ne v0, v3, :cond_51

    .line 19
    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 22
    move-result-object v0

    .line 23
    if-ne v0, p1, :cond_51

    .line 25
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 27
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_29

    .line 33
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 35
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;->onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;I)V

    .line 42
    :cond_29
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 44
    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_4a

    .line 52
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 54
    iget-object p2, p1, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    .line 56
    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 59
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 61
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_51

    .line 67
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 69
    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 71
    invoke-virtual {p1, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 74
    goto :goto_51

    .line 75
    :cond_4a
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 77
    iget-object p2, p1, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    .line 79
    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 82
    :cond_51
    :goto_51
    return-void
.end method

.method public onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$402(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 7
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 9
    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_79

    .line 15
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 17
    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 20
    move-result-object v0

    .line 21
    if-ne v0, p1, :cond_79

    .line 23
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 25
    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    .line 27
    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 30
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 32
    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$802(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 39
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 41
    invoke-virtual {v0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    if-eqz v0, :cond_32

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_32
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 53
    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_43

    .line 59
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 61
    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v2, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;->onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V

    .line 68
    :cond_43
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 70
    iget-object v2, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 72
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 75
    move-result-object p1

    .line 76
    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 78
    invoke-virtual {v2, v1, p1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 81
    if-eqz v0, :cond_72

    .line 83
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 85
    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 90
    move-result p1

    .line 91
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 93
    iget-object v2, v2, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 98
    move-result v2

    .line 99
    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 101
    iget-object v3, v3, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 103
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 106
    move-result v3

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 110
    move-result v4

    .line 111
    add-int/2addr v4, v3

    .line 112
    invoke-virtual {v0, v1, p1, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 115
    :cond_72
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 117
    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    .line 119
    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 122
    :cond_79
    return-void
.end method

.method public onUpdateTriggerTextIndex(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;ILjava/lang/String;)V
    .registers 4

    .line 1
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    .line 3
    aput-object p3, p1, p2

    .line 5
    return-void
.end method
