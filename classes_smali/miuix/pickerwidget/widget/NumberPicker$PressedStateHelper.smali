.class Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field public final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    .line 9
    const/4 p1, 0x2

    .line 10
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    .line 12
    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 7
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 9
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 11
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 14
    move-result v0

    .line 15
    int-to-long v0, v0

    .line 16
    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    return-void
.end method

.method public buttonTapped(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 7
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 9
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public cancel()V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 4
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 6
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 8
    invoke-virtual {v1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 13
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1400(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2c

    .line 19
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 21
    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1402(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 24
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 26
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 35
    move-result v3

    .line 36
    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 38
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 41
    move-result v4

    .line 42
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 45
    :cond_2c
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 47
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1600(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_48

    .line 53
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 55
    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1602(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 58
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 63
    move-result v2

    .line 64
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 66
    invoke-static {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 69
    move-result v3

    .line 70
    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    .line 73
    :cond_48
    return-void
.end method

.method public run()V
    .registers 7

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v3, :cond_67

    .line 8
    if-eq v0, v1, :cond_b

    .line 10
    goto/16 :goto_9d

    .line 12
    :cond_b
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 14
    if-eq v0, v3, :cond_3a

    .line 16
    if-eq v0, v1, :cond_13

    .line 18
    goto/16 :goto_9d

    .line 20
    :cond_13
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 22
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1600(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_25

    .line 28
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 30
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    .line 33
    move-result v1

    .line 34
    int-to-long v4, v1

    .line 35
    invoke-virtual {v0, p0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    :cond_25
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 40
    invoke-static {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1680(Lmiuix/pickerwidget/widget/NumberPicker;I)Z

    .line 43
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 48
    move-result v1

    .line 49
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 51
    invoke-static {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 54
    move-result v3

    .line 55
    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    .line 58
    goto :goto_9d

    .line 59
    :cond_3a
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 61
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1400(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4c

    .line 67
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 69
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    .line 72
    move-result v1

    .line 73
    int-to-long v4, v1

    .line 74
    invoke-virtual {v0, p0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    :cond_4c
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 79
    invoke-static {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1480(Lmiuix/pickerwidget/widget/NumberPicker;I)Z

    .line 82
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 84
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 87
    move-result v1

    .line 88
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 90
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 93
    move-result v3

    .line 94
    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 96
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 99
    move-result v4

    .line 100
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 103
    goto :goto_9d

    .line 104
    :cond_67
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 106
    if-eq v0, v3, :cond_83

    .line 108
    if-eq v0, v1, :cond_6e

    .line 110
    goto :goto_9d

    .line 111
    :cond_6e
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 113
    invoke-static {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1602(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 116
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 121
    move-result v1

    .line 122
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 124
    invoke-static {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 127
    move-result v3

    .line 128
    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    .line 131
    goto :goto_9d

    .line 132
    :cond_83
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 134
    invoke-static {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1402(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 137
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 139
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;)I

    .line 142
    move-result v1

    .line 143
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 145
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 148
    move-result v3

    .line 149
    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 151
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 154
    move-result v4

    .line 155
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 158
    :goto_9d
    return-void
.end method
