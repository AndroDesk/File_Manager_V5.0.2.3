.class public Landroidx/appcompat/widget/h;
.super Landroid/widget/EditText;
.source "AppCompatEditText.java"

# interfaces
.implements Lm0/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/h$a;
    }
.end annotation


# instance fields
.field private final mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/d;

.field private final mDefaultOnReceiveContentListener:Landroidx/core/widget/l;

.field private mSuperCaller:Landroidx/appcompat/widget/h$a;

.field private final mTextClassifierHelper:Landroidx/appcompat/widget/u;

.field private final mTextHelper:Landroidx/appcompat/widget/v;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lh/a;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-static {p1}, Landroidx/appcompat/widget/v0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/appcompat/widget/t0;->a(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Landroidx/appcompat/widget/d;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/d;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/v;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/v;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/v;->f(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    new-instance p1, Landroidx/appcompat/widget/u;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/u;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/h;->mTextClassifierHelper:Landroidx/appcompat/widget/u;

    new-instance p1, Landroidx/core/widget/l;

    invoke-direct {p1}, Landroidx/core/widget/l;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/h;->mDefaultOnReceiveContentListener:Landroidx/core/widget/l;

    new-instance p1, Landroidx/appcompat/widget/i;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/i;-><init>(Landroid/widget/EditText;)V

    iput-object p1, p0, Landroidx/appcompat/widget/h;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/i;->b(Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/h;->initEmojiKeyListener(Landroidx/appcompat/widget/i;)V

    return-void
.end method

.method public static synthetic access$001(Landroidx/appcompat/widget/h;)Landroid/view/textclassifier/TextClassifier;
    .registers 1

    invoke-super {p0}, Landroid/widget/EditText;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$101(Landroidx/appcompat/widget/h;Landroid/view/textclassifier/TextClassifier;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method private getSuperCaller()Landroidx/appcompat/widget/h$a;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mSuperCaller:Landroidx/appcompat/widget/h$a;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/widget/h$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/h$a;-><init>(Landroidx/appcompat/widget/h;)V

    iput-object v0, p0, Landroidx/appcompat/widget/h;->mSuperCaller:Landroidx/appcompat/widget/h$a;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mSuperCaller:Landroidx/appcompat/widget/h$a;

    return-object v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->a()V

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->b()V

    :cond_11
    return-void
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/widget/k;->d(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->d()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->e()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-super {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/h;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_16

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextClassifierHelper:Landroidx/appcompat/widget/u;

    if-nez v0, :cond_b

    goto :goto_16

    :cond_b
    iget-object v1, v0, Landroidx/appcompat/widget/u;->b:Landroid/view/textclassifier/TextClassifier;

    if-nez v1, :cond_15

    iget-object v0, v0, Landroidx/appcompat/widget/u;->a:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/appcompat/widget/u$a;->a(Landroid/widget/TextView;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    :cond_15
    return-object v1

    :cond_16
    :goto_16
    invoke-direct {p0}, Landroidx/appcompat/widget/h;->getSuperCaller()Landroidx/appcompat/widget/h$a;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/widget/h$a;->a:Landroidx/appcompat/widget/h;

    invoke-static {v0}, Landroidx/appcompat/widget/h;->access$001(Landroidx/appcompat/widget/h;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public initEmojiKeyListener(Landroidx/appcompat/widget/i;)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Landroid/text/method/NumberKeyListener;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_33

    invoke-super {p0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    invoke-super {p0}, Landroid/view/View;->isClickable()Z

    move-result v2

    invoke-super {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v3

    invoke-super {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v4

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i;->a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    if-ne p1, v0, :cond_24

    return-void

    :cond_24
    invoke-super {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    invoke-super {p0, v4}, Landroid/widget/TextView;->setRawInputType(I)V

    invoke-super {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-super {p0, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-super {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    :cond_33
    return-void
.end method

.method public isEmojiCompatEnabled()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

    iget-object v0, v0, Landroidx/appcompat/widget/i;->b:Lu0/a;

    iget-object v0, v0, Lu0/a;->a:Lu0/a$a;

    iget-object v0, v0, Lu0/a$a;->b:Lu0/g;

    iget-boolean v0, v0, Lu0/g;->d:Z

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 6

    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0, p1}, Landroidx/appcompat/widget/v;->h(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    invoke-static {p0, p1, v0}, La/b;->S(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;)V

    if-eqz v0, :cond_3f

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_3f

    invoke-static {p0}, Lm0/g0;->e(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-static {p1, v2}, Lp0/a;->b(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    new-instance v2, Lcom/android/cloud/fragment/presenter/b;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    const/16 v3, 0x19

    if-lt v1, v3, :cond_31

    new-instance v1, Lp0/b;

    invoke-direct {v1, v0, v2}, Lp0/b;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/android/cloud/fragment/presenter/b;)V

    :goto_2f
    move-object v0, v1

    goto :goto_3f

    :cond_31
    invoke-static {p1}, Lp0/a;->a(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_39

    goto :goto_3f

    :cond_39
    new-instance v1, Lp0/c;

    invoke-direct {v1, v0, v2}, Lp0/c;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/android/cloud/fragment/presenter/b;)V

    goto :goto_2f

    :cond_3f
    :goto_3f
    iget-object v1, p0, Landroidx/appcompat/widget/h;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/widget/i;->c(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_57

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_57

    invoke-static {p0}, Lm0/g0;->e(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_57

    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_19
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2b

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_24

    check-cast v0, Landroid/app/Activity;

    goto :goto_2c

    :cond_24
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_19

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    if-nez v0, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t handle drop: no activity: view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReceiveContent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    :cond_45
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_4c

    goto :goto_57

    :cond_4c
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_57

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/q;->a(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z

    move-result v3

    :cond_57
    :goto_57
    if-eqz v3, :cond_5a

    return v2

    :cond_5a
    invoke-super {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result p1

    return p1
.end method

.method public onReceiveContent(Lm0/c;)Lm0/c;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mDefaultOnReceiveContentListener:Landroidx/core/widget/l;

    invoke-virtual {v0, p0, p1}, Landroidx/core/widget/l;->a(Landroid/view/View;Lm0/c;)Lm0/c;

    move-result-object p1

    return-object p1
.end method

.method public onTextContextMenuItem(I)Z
    .registers 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-ge v0, v2, :cond_51

    invoke-static {p0}, Lm0/g0;->e(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_51

    const v4, 0x1020022

    if-eq p1, v4, :cond_19

    const v5, 0x1020031

    if-eq p1, v5, :cond_19

    goto :goto_51

    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipboardManager;

    if-nez v5, :cond_29

    const/4 v5, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {v5}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v5

    :goto_2d
    if-eqz v5, :cond_50

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-lez v6, :cond_50

    if-lt v0, v2, :cond_3d

    new-instance v0, Lm0/c$a;

    invoke-direct {v0, v5, v3}, Lm0/c$a;-><init>(Landroid/content/ClipData;I)V

    goto :goto_42

    :cond_3d
    new-instance v0, Lm0/c$c;

    invoke-direct {v0, v5, v3}, Lm0/c$c;-><init>(Landroid/content/ClipData;I)V

    :goto_42
    if-ne p1, v4, :cond_45

    goto :goto_46

    :cond_45
    move v1, v3

    :goto_46
    invoke-interface {v0, v1}, Lm0/c$b;->b(I)V

    invoke-interface {v0}, Lm0/c$b;->build()Lm0/c;

    move-result-object v0

    invoke-static {p0, v0}, Lm0/g0;->i(Landroid/view/View;Lm0/c;)Lm0/c;

    :cond_50
    move v1, v3

    :cond_51
    :goto_51
    if-eqz v1, :cond_54

    return v3

    :cond_54
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroidx/appcompat/widget/d;->e()V

    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->f(I)V

    :cond_a
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    :cond_a
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    :cond_a
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 2

    invoke-static {p1, p0}, Landroidx/core/widget/k;->e(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/i;->d(Z)V

    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/i;->a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->h(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->l(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->m(Landroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/v;->g(Landroid/content/Context;I)V

    :cond_a
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_e

    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextClassifierHelper:Landroidx/appcompat/widget/u;

    if-nez v0, :cond_b

    goto :goto_e

    :cond_b
    iput-object p1, v0, Landroidx/appcompat/widget/u;->b:Landroid/view/textclassifier/TextClassifier;

    return-void

    :cond_e
    :goto_e
    invoke-direct {p0}, Landroidx/appcompat/widget/h;->getSuperCaller()Landroidx/appcompat/widget/h$a;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/widget/h$a;->a:Landroidx/appcompat/widget/h;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/h;->access$101(Landroidx/appcompat/widget/h;Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method
