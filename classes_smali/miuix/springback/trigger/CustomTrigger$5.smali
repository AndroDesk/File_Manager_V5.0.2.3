.class Lmiuix/springback/trigger/CustomTrigger$5;
.super Ljava/lang/Object;
.source "CustomTrigger.java"

# interfaces
.implements Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;


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
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 9
    iget-object v2, v1, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v0, v2, :cond_55

    .line 14
    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 17
    move-result-object v0

    .line 18
    if-ne v0, p1, :cond_55

    .line 20
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 22
    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3d

    .line 30
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 32
    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    .line 34
    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 37
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 39
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_35

    .line 45
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 47
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x2

    .line 52
    if-ne v0, v1, :cond_44

    .line 54
    :cond_35
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 56
    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 58
    invoke-virtual {v0, v3, v3}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 61
    goto :goto_44

    .line 62
    :cond_3d
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 64
    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    .line 66
    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 69
    :cond_44
    :goto_44
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 71
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1200(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_55

    .line 77
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 79
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1200(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;->onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    .line 86
    :cond_55
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 88
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$1100(Lmiuix/springback/trigger/CustomTrigger;)Z

    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_79

    .line 94
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 96
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$1300(Lmiuix/springback/trigger/CustomTrigger;)J

    .line 99
    move-result-wide v0

    .line 100
    const-wide/16 v4, 0x1388

    .line 102
    cmp-long p1, v0, v4

    .line 104
    if-lez p1, :cond_79

    .line 106
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 108
    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 110
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_SPATIAL:I

    .line 112
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 114
    invoke-static {p1, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 117
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 119
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$1400(Lmiuix/springback/trigger/CustomTrigger;)V

    .line 122
    :cond_79
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 124
    invoke-static {p1, v3}, Lmiuix/springback/trigger/CustomTrigger;->access$1102(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 127
    return-void
.end method

.method public onActionLoadCancel(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$1102(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 7
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 9
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

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
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 27
    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_39

    .line 35
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 37
    iget-object v2, v0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    .line 39
    invoke-virtual {v0, v2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 42
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 44
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_40

    .line 50
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 52
    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 54
    invoke-virtual {v0, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 57
    goto :goto_40

    .line 58
    :cond_39
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 60
    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    .line 62
    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 65
    :cond_40
    :goto_40
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 67
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1200(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_51

    .line 73
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 75
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1200(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;->onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    .line 82
    :cond_51
    return-void
.end method

.method public onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$1102(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 7
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 9
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

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
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 27
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1200(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_29

    .line 33
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 35
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1200(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;->onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    .line 42
    :cond_29
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 44
    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_4a

    .line 52
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 54
    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    .line 56
    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 59
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 61
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_51

    .line 67
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 69
    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 71
    invoke-virtual {p1, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 74
    goto :goto_51

    .line 75
    :cond_4a
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 77
    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    .line 79
    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 82
    :cond_51
    :goto_51
    return-void
.end method

.method public onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$1102(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 7
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 9
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

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
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 27
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1200(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_29

    .line 33
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 35
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1200(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;->onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;I)V

    .line 42
    :cond_29
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 44
    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_4a

    .line 52
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 54
    iget-object p2, p1, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    .line 56
    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 59
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 61
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_51

    .line 67
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 69
    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 71
    invoke-virtual {p1, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 74
    goto :goto_51

    .line 75
    :cond_4a
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 77
    iget-object p2, p1, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    .line 79
    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 82
    :cond_51
    :goto_51
    return-void
.end method

.method public onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$1102(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 7
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 9
    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger;->getActions()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_94

    .line 19
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 21
    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger;->getActions()Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 32
    if-ne v0, p1, :cond_94

    .line 34
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 36
    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 39
    move-result-object v2

    .line 40
    if-nez v2, :cond_94

    .line 42
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 44
    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 47
    move-result-object v2

    .line 48
    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 50
    iget-object v4, v3, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    .line 52
    if-ne v2, v4, :cond_94

    .line 54
    iget-object v2, v3, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    .line 56
    invoke-virtual {v3, v2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 59
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 61
    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 64
    move-result-object v2

    .line 65
    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 67
    invoke-static {v3, v0}, Lmiuix/springback/trigger/CustomTrigger;->access$802(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 70
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 72
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 75
    move-result-object v3

    .line 76
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 78
    iget v4, v4, Lmiuix/springback/trigger/CustomTrigger;->mLastScrollDistance:I

    .line 80
    invoke-static {v0, v3, v2, v4}, Lmiuix/springback/trigger/CustomTrigger;->access$1500(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 83
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 85
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1200(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_63

    .line 91
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 93
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1200(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;->onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    .line 100
    :cond_63
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 102
    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 104
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 107
    move-result-object p1

    .line 108
    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 110
    neg-int p1, p1

    .line 111
    invoke-virtual {v0, v1, p1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 114
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 116
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$000(Lmiuix/springback/trigger/CustomTrigger;)Landroid/widget/RelativeLayout;

    .line 119
    move-result-object p1

    .line 120
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 122
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 125
    move-result-object v0

    .line 126
    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 128
    neg-int v0, v0

    .line 129
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 131
    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$000(Lmiuix/springback/trigger/CustomTrigger;)Landroid/widget/RelativeLayout;

    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 138
    move-result v2

    .line 139
    invoke-virtual {p1, v1, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 142
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 144
    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    .line 146
    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 149
    :cond_94
    return-void
.end method

.method public onUpdateTriggerTextIndex(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;ILjava/lang/String;)V
    .registers 4

    .line 1
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    .line 3
    aput-object p3, p1, p2

    .line 5
    return-void
.end method
