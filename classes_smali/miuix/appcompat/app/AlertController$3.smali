.class Lmiuix/appcompat/app/AlertController$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 1
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 5
    iget-object v2, v1, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne p1, v2, :cond_14

    .line 10
    iget-object v0, v1, Lmiuix/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 12
    if-eqz v0, :cond_11

    .line 14
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 17
    move-result-object v3

    .line 18
    :cond_11
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    .line 20
    goto :goto_76

    .line 21
    :cond_14
    iget-object v2, v1, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 23
    if-ne p1, v2, :cond_21

    .line 25
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 27
    if-eqz v1, :cond_76

    .line 29
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 32
    move-result-object v3

    .line 33
    goto :goto_76

    .line 34
    :cond_21
    iget-object v2, v1, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 36
    if-ne p1, v2, :cond_2e

    .line 38
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 40
    if-eqz v1, :cond_76

    .line 42
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 45
    move-result-object v3

    .line 46
    goto :goto_76

    .line 47
    :cond_2e
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$300(Lmiuix/appcompat/app/AlertController;)Ljava/util/List;

    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_67

    .line 53
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 55
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$300(Lmiuix/appcompat/app/AlertController;)Ljava/util/List;

    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_67

    .line 65
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 67
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$300(Lmiuix/appcompat/app/AlertController;)Ljava/util/List;

    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v1

    .line 75
    :cond_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_67

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 87
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 90
    move-result-object v4

    .line 91
    if-ne p1, v4, :cond_4a

    .line 93
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$500(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/os/Message;

    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_66

    .line 99
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 102
    move-result-object v1

    .line 103
    :cond_66
    move-object v3, v1

    .line 104
    :cond_67
    instance-of v1, p1, Lmiuix/internal/widget/GroupButton;

    .line 106
    if-eqz v1, :cond_76

    .line 108
    move-object v1, p1

    .line 109
    check-cast v1, Lmiuix/internal/widget/GroupButton;

    .line 111
    invoke-virtual {v1}, Lmiuix/internal/widget/GroupButton;->isPrimary()Z

    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_76

    .line 117
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    .line 119
    :cond_76
    :goto_76
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_MIDDLE:I

    .line 121
    invoke-static {p1, v1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    .line 124
    if-eqz v3, :cond_80

    .line 126
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 129
    :cond_80
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 131
    iget-object p1, p1, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 133
    const v0, -0x626d435d

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    return-void
.end method
