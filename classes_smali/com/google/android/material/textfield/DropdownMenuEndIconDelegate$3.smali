.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;
.super Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
.source "DropdownMenuEndIconDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 6
    iget-object p1, p1, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1a

    .line 18
    const-class p1, Landroid/widget/Spinner;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2, p1}, Ln0/c;->i(Ljava/lang/CharSequence;)V

    .line 27
    :cond_1a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    const/16 v0, 0x1a

    .line 31
    if-lt p1, v0, :cond_27

    .line 33
    iget-object p1, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 35
    invoke-static {p1}, Lm0/h0;->i(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    .line 38
    move-result p1

    .line 39
    goto :goto_3e

    .line 40
    :cond_27
    const/4 p1, 0x4

    .line 41
    iget-object v0, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 43
    invoke-static {v0}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x0

    .line 48
    if-nez v0, :cond_32

    .line 50
    goto :goto_3d

    .line 51
    :cond_32
    const-string v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 56
    move-result v0

    .line 57
    and-int/2addr v0, p1

    .line 58
    if-ne v0, p1, :cond_3d

    .line 60
    const/4 p1, 0x1

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    :goto_3d
    move p1, v1

    .line 63
    :goto_3e
    if-eqz p1, :cond_44

    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-virtual {p2, p1}, Ln0/c;->m(Ljava/lang/String;)V

    .line 69
    :cond_44
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lm0/a;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 6
    iget-object v0, p1, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$000(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 19
    move-result p2

    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p2, v0, :cond_27

    .line 23
    iget-object p2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 25
    invoke-static {p2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$300(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/view/accessibility/AccessibilityManager;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_27

    .line 35
    iget-object p2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 37
    invoke-static {p2, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$400(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V

    .line 40
    :cond_27
    return-void
.end method
