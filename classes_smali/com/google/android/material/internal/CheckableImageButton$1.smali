.class Lcom/google/android/material/internal/CheckableImageButton$1;
.super Lm0/a;
.source "CheckableImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/internal/CheckableImageButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/CheckableImageButton;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$1;->this$0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    invoke-direct {p0}, Lm0/a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$1;->this$0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    .line 9
    move-result p1

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 13
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$1;->this$0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->isCheckable()Z

    .line 9
    move-result p1

    .line 10
    iget-object v0, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 15
    iget-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$1;->this$0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    .line 20
    move-result p1

    .line 21
    iget-object p2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 23
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 26
    return-void
.end method
