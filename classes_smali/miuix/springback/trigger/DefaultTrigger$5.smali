.class Lmiuix/springback/trigger/DefaultTrigger$5;
.super Ljava/lang/Object;
.source "DefaultTrigger.java"

# interfaces
.implements Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/DefaultTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/springback/trigger/DefaultTrigger;


# direct methods
.method public constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getViewRestartOffsetPoint()F
    .registers 2

    const/high16 v0, -0x40800000  # -1.0f

    return v0
.end method

.method public onViewActivated(I)V
    .registers 2

    return-void
.end method

.method public onViewActivating(I)V
    .registers 2

    return-void
.end method

.method public onViewEntered(I)V
    .registers 2

    return-void
.end method

.method public onViewEntering(I)V
    .registers 2

    return-void
.end method

.method public onViewExit(I)V
    .registers 2

    return-void
.end method

.method public onViewFinished(I)V
    .registers 2

    return-void
.end method

.method public onViewStart(I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 3
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 13
    invoke-virtual {p1}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_50

    .line 19
    invoke-virtual {p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->isNoData()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_50

    .line 25
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 27
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    const/16 v1, 0x8

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 38
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    invoke-virtual {p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->getCountNoData()I

    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x3

    .line 50
    if-ge v0, v1, :cond_42

    .line 52
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 54
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 57
    move-result-object v0

    .line 58
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    .line 60
    const/4 v1, 0x2

    .line 61
    aget-object p1, p1, v1

    .line 63
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    goto :goto_7a

    .line 67
    :cond_42
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 69
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 72
    move-result-object v0

    .line 73
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    .line 75
    aget-object p1, p1, v1

    .line 77
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    goto :goto_7a

    .line 81
    :cond_50
    if-eqz p1, :cond_7a

    .line 83
    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 85
    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 94
    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 103
    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 112
    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 115
    move-result-object v1

    .line 116
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    .line 118
    aget-object p1, p1, v0

    .line 120
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_7a
    :goto_7a
    return-void
.end method

.method public onViewStarting(I)V
    .registers 2

    return-void
.end method

.method public onViewTriggered(I)V
    .registers 2

    return-void
.end method
