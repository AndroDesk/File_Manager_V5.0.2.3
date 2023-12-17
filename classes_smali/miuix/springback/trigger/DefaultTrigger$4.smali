.class Lmiuix/springback/trigger/DefaultTrigger$4;
.super Ljava/lang/Object;
.source "DefaultTrigger.java"

# interfaces
.implements Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;


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
    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

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
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 3
    invoke-virtual {p1}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 12
    invoke-virtual {p1}, Lmiuix/springback/trigger/CustomTrigger;->isExitIndeterminateAction()Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_25

    .line 18
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 20
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    const/16 v0, 0x8

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 31
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :cond_25
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
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 3
    invoke-virtual {p1}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
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
