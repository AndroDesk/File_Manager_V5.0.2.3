.class Lmiuix/springback/trigger/CustomTrigger$ActionStart;
.super Lmiuix/springback/trigger/TriggerState;
.source "CustomTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/CustomTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionStart"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/springback/trigger/CustomTrigger;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/CustomTrigger;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$ActionStart;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-direct {p0}, Lmiuix/springback/trigger/TriggerState;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger$ActionStart;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    return-void
.end method


# virtual methods
.method public handleScrollStateChange(II)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/springback/trigger/TriggerState;->handleScrollStateChange(II)V

    .line 4
    return-void
.end method

.method public handleScrolled(II)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/springback/trigger/TriggerState;->handleScrolled(II)V

    .line 4
    return-void
.end method

.method public handleSpringBack()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$ActionStart;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2f

    .line 9
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$ActionStart;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 11
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 17
    if-eqz v0, :cond_2f

    .line 19
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$ActionStart;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 21
    iget v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 23
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 26
    move-result-object v0

    .line 27
    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 29
    if-le v1, v0, :cond_2f

    .line 31
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$ActionStart;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 33
    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 39
    move-result-object v0

    .line 40
    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 42
    neg-int v0, v0

    .line 43
    invoke-virtual {v1, v2, v0}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 46
    const/4 v0, 0x1

    .line 47
    return v0

    .line 48
    :cond_2f
    invoke-super {p0}, Lmiuix/springback/trigger/TriggerState;->handleSpringBack()Z

    .line 51
    move-result v0

    .line 52
    return v0
.end method
