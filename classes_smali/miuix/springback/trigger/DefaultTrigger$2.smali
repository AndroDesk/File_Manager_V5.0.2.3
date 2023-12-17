.class Lmiuix/springback/trigger/DefaultTrigger$2;
.super Ljava/lang/Object;
.source "DefaultTrigger.java"

# interfaces
.implements Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;


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
    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$2;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .registers 2

    return-void
.end method

.method public onActionLoadCancel(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .registers 2

    return-void
.end method

.method public onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$2;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 3
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x8

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$2;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 14
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    if-eqz p1, :cond_24

    .line 23
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$2;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 25
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 28
    move-result-object v0

    .line 29
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    .line 31
    const/4 v1, 0x1

    .line 32
    aget-object p1, p1, v1

    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_24
    return-void
.end method

.method public onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;I)V
    .registers 4

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eqz p1, :cond_14

    .line 4
    if-ge p2, v0, :cond_14

    .line 6
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$2;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 8
    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 11
    move-result-object p2

    .line 12
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    .line 14
    const/4 v0, 0x2

    .line 15
    aget-object p1, p1, v0

    .line 17
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    goto :goto_23

    .line 21
    :cond_14
    if-eqz p1, :cond_23

    .line 23
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$2;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 25
    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 28
    move-result-object p2

    .line 29
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    .line 31
    aget-object p1, p1, v0

    .line 33
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :cond_23
    :goto_23
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$2;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 38
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    .line 41
    move-result-object p1

    .line 42
    const/16 p2, 0x8

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$2;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 49
    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    return-void
.end method

.method public onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$2;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 3
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$2;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 13
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    if-eqz p1, :cond_22

    .line 22
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$2;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    .line 24
    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    .line 27
    move-result-object v0

    .line 28
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    .line 30
    aget-object p1, p1, v1

    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :cond_22
    return-void
.end method
