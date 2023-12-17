.class Lmiuix/springback/trigger/DefaultTrigger$3;
.super Ljava/lang/Object;
.source "DefaultTrigger.java"

# interfaces
.implements Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;


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
    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

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
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 3
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 13
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 22
    invoke-virtual {p1}, Lmiuix/springback/trigger/CustomTrigger;->isExitSimpleAction()Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_26

    .line 28
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 30
    invoke-virtual {p1}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    .line 33
    move-result-object p1

    .line 34
    const/16 v0, 0x8

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :cond_26
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
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 3
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0x8

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 14
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 24
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 33
    invoke-virtual {p1}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_33

    .line 39
    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 41
    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 44
    move-result-object v1

    .line 45
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    .line 47
    aget-object p1, p1, v0

    .line 49
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_33
    return-void
.end method

.method public onViewStarting(I)V
    .registers 2

    return-void
.end method

.method public onViewTriggered(I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 3
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 13
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 22
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 31
    invoke-virtual {p1}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_32

    .line 37
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 39
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 42
    move-result-object v0

    .line 43
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    .line 45
    const/4 v1, 0x2

    .line 46
    aget-object p1, p1, v1

    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_32
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 53
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_5b

    .line 63
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 65
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    .line 68
    move-result-object p1

    .line 69
    const/high16 v0, 0x3f800000  # 1.0f

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 74
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 76
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 83
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 85
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 92
    :cond_5b
    return-void
.end method
