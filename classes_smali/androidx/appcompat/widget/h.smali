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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lh/a;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-static {p1}, Landroidx/appcompat/widget/v0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/appcompat/widget/t0;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 5
    new-instance p1, Landroidx/appcompat/widget/d;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 6
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/d;->d(Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Landroidx/appcompat/widget/v;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/v;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 8
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/v;->f(Landroid/util/AttributeSet;I)V

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 10
    new-instance p1, Landroidx/appcompat/widget/u;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/u;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/h;->mTextClassifierHelper:Landroidx/appcompat/widget/u;

    .line 11
    new-instance p1, Landroidx/core/widget/l;

    invoke-direct {p1}, Landroidx/core/widget/l;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/h;->mDefaultOnReceiveContentListener:Landroidx/core/widget/l;

    .line 12
    new-instance p1, Landroidx/appcompat/widget/i;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/i;-><init>(Landroid/widget/EditText;)V

    iput-object p1, p0, Landroidx/appcompat/widget/h;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

    .line 13
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/i;->b(Landroid/util/AttributeSet;I)V

    .line 14
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/h;->initEmojiKeyListener(Landroidx/appcompat/widget/i;)V

    return-void
.end method

.method public static synthetic access$001(Landroidx/appcompat/widget/h;)Landroid/view/textclassifier/TextClassifier;
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$101(Landroidx/appcompat/widget/h;Landroid/view/textclassifier/TextClassifier;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    .line 4
    return-void
.end method

.method private getSuperCaller()Landroidx/appcompat/widget/h$a;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mSuperCaller:Landroidx/appcompat/widget/h$a;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/appcompat/widget/h$a;

    .line 7
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/h$a;-><init>(Landroidx/appcompat/widget/h;)V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/h;->mSuperCaller:Landroidx/appcompat/widget/h$a;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mSuperCaller:Landroidx/appcompat/widget/h$a;

    .line 14
    return-object v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->a()V

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->b()V

    .line 18
    :cond_11
    return-void
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/core/widget/k;->d(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->b()Landroid/content/res/ColorStateList;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->c()Landroid/graphics/PorterDuff$Mode;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->d()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->e()Landroid/graphics/PorterDuff$Mode;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .registers 3

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 3
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 4
    :cond_b
    invoke-super {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/h;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-ge v0, v1, :cond_16

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextClassifierHelper:Landroidx/appcompat/widget/u;

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_16

    .line 12
    :cond_b
    iget-object v1, v0, Landroidx/appcompat/widget/u;->b:Landroid/view/textclassifier/TextClassifier;

    .line 14
    if-nez v1, :cond_15

    .line 16
    iget-object v0, v0, Landroidx/appcompat/widget/u;->a:Landroid/widget/TextView;

    .line 18
    invoke-static {v0}, Landroidx/appcompat/widget/u$a;->a(Landroid/widget/TextView;)Landroid/view/textclassifier/TextClassifier;

    .line 21
    move-result-object v1

    .line 22
    :cond_15
    return-object v1

    .line 23
    :cond_16
    :goto_16
    invoke-direct {p0}, Landroidx/appcompat/widget/h;->getSuperCaller()Landroidx/appcompat/widget/h$a;

    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Landroidx/appcompat/widget/h$a;->a:Landroidx/appcompat/widget/h;

    .line 29
    invoke-static {v0}, Landroidx/appcompat/widget/h;->access$001(Landroidx/appcompat/widget/h;)Landroid/view/textclassifier/TextClassifier;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public initEmojiKeyListener(Landroidx/appcompat/widget/i;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v1, v0, Landroid/text/method/NumberKeyListener;

    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 12
    if-eqz v1, :cond_33

    .line 14
    invoke-super {p0}, Landroid/view/View;->isFocusable()Z

    .line 17
    move-result v1

    .line 18
    invoke-super {p0}, Landroid/view/View;->isClickable()Z

    .line 21
    move-result v2

    .line 22
    invoke-super {p0}, Landroid/view/View;->isLongClickable()Z

    .line 25
    move-result v3

    .line 26
    invoke-super {p0}, Landroid/widget/TextView;->getInputType()I

    .line 29
    move-result v4

    .line 30
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i;->a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    .line 33
    move-result-object p1

    .line 34
    if-ne p1, v0, :cond_24

    .line 36
    return-void

    .line 37
    :cond_24
    invoke-super {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 40
    invoke-super {p0, v4}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 43
    invoke-super {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 46
    invoke-super {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 49
    invoke-super {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 52
    :cond_33
    return-void
.end method

.method public isEmojiCompatEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/i;->b:Lu0/a;

    .line 5
    iget-object v0, v0, Lu0/a;->a:Lu0/a$a;

    .line 7
    iget-object v0, v0, Lu0/a$a;->b:Lu0/g;

    .line 9
    iget-boolean v0, v0, Lu0/g;->d:Z

    .line 11
    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {p0, v0, p1}, Landroidx/appcompat/widget/v;->h(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 13
    invoke-static {p0, p1, v0}, La/b;->S(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;)V

    .line 16
    if-eqz v0, :cond_3f

    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    const/16 v2, 0x1e

    .line 22
    if-gt v1, v2, :cond_3f

    .line 24
    invoke-static {p0}, Lm0/g0;->e(Landroid/view/View;)[Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_3f

    .line 30
    invoke-static {p1, v2}, Lp0/a;->b(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    .line 33
    new-instance v2, Lcom/android/cloud/fragment/presenter/b;

    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-direct {v2, p0, v3}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 39
    const/16 v3, 0x19

    .line 41
    if-lt v1, v3, :cond_31

    .line 43
    new-instance v1, Lp0/b;

    .line 45
    invoke-direct {v1, v0, v2}, Lp0/b;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/android/cloud/fragment/presenter/b;)V

    .line 48
    :goto_2f
    move-object v0, v1

    .line 49
    goto :goto_3f

    .line 50
    :cond_31
    invoke-static {p1}, Lp0/a;->a(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    array-length v1, v1

    .line 55
    if-nez v1, :cond_39

    .line 57
    goto :goto_3f

    .line 58
    :cond_39
    new-instance v1, Lp0/c;

    .line 60
    invoke-direct {v1, v0, v2}, Lp0/c;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/android/cloud/fragment/presenter/b;)V

    .line 63
    goto :goto_2f

    .line 64
    :cond_3f
    :goto_3f
    iget-object v1, p0, Landroidx/appcompat/widget/h;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

    .line 66
    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/widget/i;->c(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1f

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ge v0, v1, :cond_57

    .line 9
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_57

    .line 15
    invoke-static {p0}, Lm0/g0;->e(Landroid/view/View;)[Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_15

    .line 21
    goto :goto_57

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    :goto_19
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 28
    if-eqz v1, :cond_2b

    .line 30
    instance-of v1, v0, Landroid/app/Activity;

    .line 32
    if-eqz v1, :cond_24

    .line 34
    check-cast v0, Landroid/app/Activity;

    .line 36
    goto :goto_2c

    .line 37
    :cond_24
    check-cast v0, Landroid/content/ContextWrapper;

    .line 39
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 42
    move-result-object v0

    .line 43
    goto :goto_19

    .line 44
    :cond_2b
    const/4 v0, 0x0

    .line 45
    :goto_2c
    if-nez v0, :cond_45

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string v1, "Can\'t handle drop: no activity: view="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    const-string v1, "ReceiveContent"

    .line 66
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    goto :goto_57

    .line 70
    :cond_45
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    .line 73
    move-result v1

    .line 74
    if-ne v1, v2, :cond_4c

    .line 76
    goto :goto_57

    .line 77
    :cond_4c
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    .line 80
    move-result v1

    .line 81
    const/4 v4, 0x3

    .line 82
    if-ne v1, v4, :cond_57

    .line 84
    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/q;->a(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z

    .line 87
    move-result v3

    .line 88
    :cond_57
    :goto_57
    if-eqz v3, :cond_5a

    .line 90
    return v2

    .line 91
    :cond_5a
    invoke-super {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    .line 94
    move-result p1

    .line 95
    return p1
.end method

.method public onReceiveContent(Lm0/c;)Lm0/c;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mDefaultOnReceiveContentListener:Landroidx/core/widget/l;

    .line 3
    invoke-virtual {v0, p0, p1}, Landroidx/core/widget/l;->a(Landroid/view/View;Lm0/c;)Lm0/c;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onTextContextMenuItem(I)Z
    .registers 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1f

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ge v0, v2, :cond_51

    .line 9
    invoke-static {p0}, Lm0/g0;->e(Landroid/view/View;)[Ljava/lang/String;

    .line 12
    move-result-object v4

    .line 13
    if-eqz v4, :cond_51

    .line 15
    const v4, 0x1020022

    .line 18
    if-eq p1, v4, :cond_19

    .line 20
    const v5, 0x1020031

    .line 23
    if-eq p1, v5, :cond_19

    .line 25
    goto :goto_51

    .line 26
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v5

    .line 30
    const-string v6, "clipboard"

    .line 32
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Landroid/content/ClipboardManager;

    .line 38
    if-nez v5, :cond_29

    .line 40
    const/4 v5, 0x0

    .line 41
    goto :goto_2d

    .line 42
    :cond_29
    invoke-virtual {v5}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 45
    move-result-object v5

    .line 46
    :goto_2d
    if-eqz v5, :cond_50

    .line 48
    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    .line 51
    move-result v6

    .line 52
    if-lez v6, :cond_50

    .line 54
    if-lt v0, v2, :cond_3d

    .line 56
    new-instance v0, Lm0/c$a;

    .line 58
    invoke-direct {v0, v5, v3}, Lm0/c$a;-><init>(Landroid/content/ClipData;I)V

    .line 61
    goto :goto_42

    .line 62
    :cond_3d
    new-instance v0, Lm0/c$c;

    .line 64
    invoke-direct {v0, v5, v3}, Lm0/c$c;-><init>(Landroid/content/ClipData;I)V

    .line 67
    :goto_42
    if-ne p1, v4, :cond_45

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move v1, v3

    .line 71
    :goto_46
    invoke-interface {v0, v1}, Lm0/c$b;->b(I)V

    .line 74
    invoke-interface {v0}, Lm0/c$b;->build()Lm0/c;

    .line 77
    move-result-object v0

    .line 78
    invoke-static {p0, v0}, Lm0/g0;->i(Landroid/view/View;Lm0/c;)Lm0/c;

    .line 81
    :cond_50
    move v1, v3

    .line 82
    :cond_51
    :goto_51
    if-eqz v1, :cond_54

    .line 84
    return v3

    .line 85
    :cond_54
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 88
    move-result p1

    .line 89
    return p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/d;->e()V

    .line 11
    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->f(I)V

    .line 11
    :cond_a
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    :cond_a
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    :cond_a
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 2

    .line 1
    invoke-static {p1, p0}, Landroidx/core/widget/k;->e(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 8
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/i;->d(Z)V

    .line 6
    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mAppCompatEmojiEditTextHelper:Landroidx/appcompat/widget/i;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/i;->a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    .line 6
    move-result-object p1

    .line 7
    invoke-super {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 10
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->h(Landroid/content/res/ColorStateList;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->i(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->l(Landroid/content/res/ColorStateList;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->m(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/v;->g(Landroid/content/Context;I)V

    .line 11
    :cond_a
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-ge v0, v1, :cond_e

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/h;->mTextClassifierHelper:Landroidx/appcompat/widget/u;

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_e

    .line 12
    :cond_b
    iput-object p1, v0, Landroidx/appcompat/widget/u;->b:Landroid/view/textclassifier/TextClassifier;

    .line 14
    return-void

    .line 15
    :cond_e
    :goto_e
    invoke-direct {p0}, Landroidx/appcompat/widget/h;->getSuperCaller()Landroidx/appcompat/widget/h$a;

    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Landroidx/appcompat/widget/h$a;->a:Landroidx/appcompat/widget/h;

    .line 21
    invoke-static {v0, p1}, Landroidx/appcompat/widget/h;->access$101(Landroidx/appcompat/widget/h;Landroid/view/textclassifier/TextClassifier;)V

    .line 24
    return-void
.end method
