.class Lcom/google/android/material/textfield/TextInputLayout$1;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->this$0:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->this$0:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/textfield/TextInputLayout;->access$000(Lcom/google/android/material/textfield/TextInputLayout;)Z

    .line 6
    move-result v1

    .line 7
    xor-int/lit8 v1, v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 12
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->this$0:Lcom/google/android/material/textfield/TextInputLayout;

    .line 14
    iget-boolean v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    .line 16
    if-eqz v1, :cond_18

    .line 18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(I)V

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->this$0:Lcom/google/android/material/textfield/TextInputLayout;

    .line 27
    invoke-static {v0}, Lcom/google/android/material/textfield/TextInputLayout;->access$100(Lcom/google/android/material/textfield/TextInputLayout;)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_29

    .line 33
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->this$0:Lcom/google/android/material/textfield/TextInputLayout;

    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 38
    move-result p1

    .line 39
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->access$200(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 42
    :cond_29
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
