.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;


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
.method public constructor <init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEditTextAttached(Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$000(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 13
    invoke-static {v1, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$500(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V

    .line 16
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 18
    invoke-static {v1, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$600(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V

    .line 21
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 23
    invoke-static {v1, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$700(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 30
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 32
    invoke-static {v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$800(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/text/TextWatcher;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 39
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 41
    invoke-static {v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$800(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/text/TextWatcher;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 58
    invoke-static {v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$900(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;)V

    .line 65
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 68
    return-void
.end method
