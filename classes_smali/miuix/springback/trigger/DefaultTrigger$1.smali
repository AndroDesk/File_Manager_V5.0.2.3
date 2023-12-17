.class Lmiuix/springback/trigger/DefaultTrigger$1;
.super Ljava/lang/Object;
.source "DefaultTrigger.java"

# interfaces
.implements Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;


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
    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 3
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x8

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    if-eqz p1, :cond_1b

    .line 14
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 16
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 19
    move-result-object v0

    .line 20
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    .line 22
    const/4 v1, 0x3

    .line 23
    aget-object p1, p1, v1

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_1b
    return-void
.end method

.method public onActionLoadCancel(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .registers 2

    return-void
.end method

.method public onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .registers 2

    return-void
.end method

.method public onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;I)V
    .registers 3

    return-void
.end method

.method public onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 3
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 13
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 22
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    if-eqz p1, :cond_2c

    .line 31
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 33
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 36
    move-result-object v0

    .line 37
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    .line 39
    const/4 v1, 0x2

    .line 40
    aget-object p1, p1, v1

    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_2c
    return-void
.end method
