.class Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;
.super Lmiuix/springback/trigger/TriggerState;
.source "CustomTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/CustomTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaitForIndeterminate"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/springback/trigger/CustomTrigger;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/CustomTrigger;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-direct {p0}, Lmiuix/springback/trigger/TriggerState;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    return-void
.end method


# virtual methods
.method public handleScrollStateChange(II)V
    .registers 4

    .line 1
    if-nez p2, :cond_5a

    .line 3
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 5
    iget-object p2, p1, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    .line 7
    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 10
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 12
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_32

    .line 18
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 20
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 23
    move-result-object p1

    .line 24
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 26
    if-eqz p1, :cond_32

    .line 28
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 30
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lmiuix/springback/trigger/BaseTrigger$Action;->notifyTriggered()V

    .line 37
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 39
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 42
    move-result-object p2

    .line 43
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 45
    iget v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 47
    invoke-static {p1, p2, v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1700(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 50
    goto :goto_5a

    .line 51
    :cond_32
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 53
    invoke-virtual {p1}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_5a

    .line 59
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 61
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 64
    move-result-object p1

    .line 65
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 67
    if-eqz p1, :cond_5a

    .line 69
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 71
    invoke-virtual {p1}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lmiuix/springback/trigger/BaseTrigger$Action;->notifyTriggered()V

    .line 78
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 80
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 83
    move-result-object p2

    .line 84
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 86
    iget v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 88
    invoke-static {p1, p2, v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1700(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 91
    :cond_5a
    :goto_5a
    return-void
.end method
