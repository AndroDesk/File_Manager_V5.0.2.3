.class Lcom/google/android/material/bottomsheet/BottomSheetDialog$2;
.super Lm0/a;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 3
    invoke-direct {p0}, Lm0/a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 6
    iget-boolean p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 8
    if-eqz p1, :cond_15

    .line 10
    const/high16 p1, 0x100000

    .line 12
    invoke-virtual {p2, p1}, Ln0/c;->a(I)V

    .line 15
    const/4 p1, 0x1

    .line 16
    iget-object p2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 18
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 21
    goto :goto_1b

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    iget-object p2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 25
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 28
    :goto_1b
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 6

    .line 1
    const/high16 v0, 0x100000

    .line 3
    if-ne p2, v0, :cond_f

    .line 5
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 7
    iget-boolean v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 9
    if-eqz v1, :cond_f

    .line 11
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancel()V

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_f
    invoke-super {p0, p1, p2, p3}, Lm0/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method
