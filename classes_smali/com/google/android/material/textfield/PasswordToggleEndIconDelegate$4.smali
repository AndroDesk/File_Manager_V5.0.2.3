.class Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;
.super Ljava/lang/Object;
.source "PasswordToggleEndIconDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;->this$0:Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;->this$0:Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 3
    iget-object p1, p1, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;->this$0:Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 18
    invoke-static {v1}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->access$000(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1c

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 28
    goto :goto_23

    .line 29
    :cond_1c
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 36
    :goto_23
    if-ltz v0, :cond_28

    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 41
    :cond_28
    return-void
.end method
