.class Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "PasswordToggleEndIconDelegate.java"


# instance fields
.field private final onEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

.field private final onEndIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

.field private final textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 4
    new-instance p1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$1;

    .line 6
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$1;-><init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    .line 9
    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textWatcher:Landroid/text/TextWatcher;

    .line 11
    new-instance p1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;

    .line 13
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;-><init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    .line 16
    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 18
    new-instance p1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;

    .line 20
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;-><init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    .line 23
    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onEndIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 25
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->hasPasswordTransformation()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Landroid/text/TextWatcher;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textWatcher:Landroid/text/TextWatcher;

    .line 3
    return-object p0
.end method

.method private hasPasswordTransformation()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_12

    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    .line 15
    if-eqz v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method private static isInputTypePassword(Landroid/widget/EditText;)Z
    .registers 3

    .line 1
    if-eqz p0, :cond_24

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x10

    .line 9
    if-eq v0, v1, :cond_22

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x80

    .line 17
    if-eq v0, v1, :cond_22

    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x90

    .line 25
    if-eq v0, v1, :cond_22

    .line 27
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 30
    move-result p0

    .line 31
    const/16 v0, 0xe0

    .line 33
    if-ne p0, v0, :cond_24

    .line 35
    :cond_22
    const/4 p0, 0x1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 p0, 0x0

    .line 38
    :goto_25
    return p0
.end method


# virtual methods
.method public initialize()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->context:Landroid/content/Context;

    .line 5
    sget v2, Lcom/google/android/material/R$drawable;->design_password_eye:I

    .line 7
    invoke-static {v1, v2}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v1

    .line 20
    sget v2, Lcom/google/android/material/R$string;->password_toggle_content_description:I

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 31
    new-instance v1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;

    .line 33
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;-><init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 41
    iget-object v1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEditTextAttachedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 48
    iget-object v1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onEndIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEndIconChangedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->isInputTypePassword(Landroid/widget/EditText;)Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_47

    .line 65
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 72
    :cond_47
    return-void
.end method
