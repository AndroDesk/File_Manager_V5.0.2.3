.class Lcom/google/android/material/chip/Chip$ChipTouchHelper;
.super Lr0/a;
.source "Chip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChipTouchHelper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/chip/Chip;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 3
    invoke-direct {p0, p2}, Lr0/a;-><init>(Landroid/view/View;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->access$100(Lcom/google/android/material/chip/Chip;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 11
    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->access$200(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_16

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    :goto_17
    return p1
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 11
    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->access$100(Lcom/google/android/material/chip/Chip;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_28

    .line 17
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isCloseIconVisible()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_28

    .line 25
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 27
    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->access$300(Lcom/google/android/material/chip/Chip;)Landroid/view/View$OnClickListener;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_28

    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v0

    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_28
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 4

    .line 1
    const/16 p3, 0x10

    .line 3
    if-ne p2, p3, :cond_17

    .line 5
    if-nez p1, :cond_d

    .line 7
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_d
    const/4 p2, 0x1

    .line 15
    if-ne p1, p2, :cond_17

    .line 17
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->performCloseIconClick()Z

    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public onPopulateNodeForHost(Ln0/c;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 12
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    .line 17
    move-result v0

    .line 18
    iget-object v1, p1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 20
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 23
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2d

    .line 31
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_27

    .line 39
    goto :goto_2d

    .line 40
    :cond_27
    const-string v0, "android.view.View"

    .line 42
    invoke-virtual {p1, v0}, Ln0/c;->i(Ljava/lang/CharSequence;)V

    .line 45
    goto :goto_3d

    .line 46
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 48
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_38

    .line 54
    const-string v0, "android.widget.CompoundButton"

    .line 56
    goto :goto_3a

    .line 57
    :cond_38
    const-string v0, "android.widget.Button"

    .line 59
    :goto_3a
    invoke-virtual {p1, v0}, Ln0/c;->i(Ljava/lang/CharSequence;)V

    .line 62
    :goto_3d
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 64
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 67
    move-result-object v0

    .line 68
    iget-object p1, p1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public onPopulateNodeForVirtualView(ILn0/c;)V
    .registers 9

    .line 1
    const-string v0, ""

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v1, :cond_50

    .line 6
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_11

    .line 14
    invoke-virtual {p2, p1}, Ln0/c;->l(Ljava/lang/CharSequence;)V

    .line 17
    goto :goto_36

    .line 18
    :cond_11
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 20
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 23
    move-result-object p1

    .line 24
    iget-object v2, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 26
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v2

    .line 30
    sget v3, Lcom/google/android/material/R$string;->mtrl_chip_close_icon_content_description:I

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_29

    .line 41
    move-object v0, p1

    .line 42
    :cond_29
    aput-object v0, v1, v4

    .line 44
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p2, p1}, Ln0/c;->l(Ljava/lang/CharSequence;)V

    .line 55
    :goto_36
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 57
    invoke-static {p1}, Lcom/google/android/material/chip/Chip;->access$500(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p2, p1}, Ln0/c;->h(Landroid/graphics/Rect;)V

    .line 64
    sget-object p1, Ln0/c$a;->e:Ln0/c$a;

    .line 66
    invoke-virtual {p2, p1}, Ln0/c;->b(Ln0/c$a;)V

    .line 69
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 74
    move-result p1

    .line 75
    iget-object p2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 77
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 80
    goto :goto_5a

    .line 81
    :cond_50
    invoke-virtual {p2, v0}, Ln0/c;->l(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {}, Lcom/google/android/material/chip/Chip;->access$600()Landroid/graphics/Rect;

    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p2, p1}, Ln0/c;->h(Landroid/graphics/Rect;)V

    .line 91
    :goto_5a
    return-void
.end method

.method public onVirtualViewKeyboardFocusChanged(IZ)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_d

    .line 4
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/material/chip/Chip;->access$402(Lcom/google/android/material/chip/Chip;Z)Z

    .line 9
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 14
    :cond_d
    return-void
.end method
