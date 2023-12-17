.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;


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
    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEndIconChanged(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/widget/AutoCompleteTextView;

    .line 7
    if-eqz p1, :cond_30

    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p2, v0, :cond_30

    .line 12
    iget-object p2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 14
    invoke-static {p2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$800(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/text/TextWatcher;

    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 24
    move-result-object p2

    .line 25
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 27
    invoke-static {v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$1000(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/view/View$OnFocusChangeListener;

    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-ne p2, v0, :cond_24

    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 37
    :cond_24
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 40
    invoke-static {}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$1100()Z

    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_30

    .line 46
    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 49
    :cond_30
    return-void
.end method
