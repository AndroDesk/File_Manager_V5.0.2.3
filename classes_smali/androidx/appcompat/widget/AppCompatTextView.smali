.class public Landroidx/appcompat/widget/AppCompatTextView;
.super Landroid/widget/TextView;
.source "AppCompatTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatTextView$c;,
        Landroidx/appcompat/widget/AppCompatTextView$b;,
        Landroidx/appcompat/widget/AppCompatTextView$a;
    }
.end annotation


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/d;

.field private mEmojiTextViewHelper:Landroidx/appcompat/widget/j;

.field private mIsSetTypefaceProcessing:Z

.field private mPrecomputedTextFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lk0/c;",
            ">;"
        }
    .end annotation
.end field

.field private mSuperCaller:Landroidx/appcompat/widget/AppCompatTextView$a;

.field private final mTextClassifierHelper:Landroidx/appcompat/widget/u;

.field private final mTextHelper:Landroidx/appcompat/widget/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010084

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-static {p1}, Landroidx/appcompat/widget/v0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mIsSetTypefaceProcessing:Z

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mSuperCaller:Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/appcompat/widget/t0;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 7
    new-instance p1, Landroidx/appcompat/widget/d;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 8
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/d;->d(Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p1, Landroidx/appcompat/widget/v;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/v;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 10
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/v;->f(Landroid/util/AttributeSet;I)V

    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 12
    new-instance p1, Landroidx/appcompat/widget/u;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/u;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextClassifierHelper:Landroidx/appcompat/widget/u;

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/j;->c(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic access$001(Landroidx/appcompat/widget/AppCompatTextView;)I
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1001(Landroidx/appcompat/widget/AppCompatTextView;I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$101(Landroidx/appcompat/widget/AppCompatTextView;)I
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1101(Landroidx/appcompat/widget/AppCompatTextView;I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$201(Landroidx/appcompat/widget/AppCompatTextView;)I
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$301(Landroidx/appcompat/widget/AppCompatTextView;)[I
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$401(Landroidx/appcompat/widget/AppCompatTextView;)I
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$501(Landroidx/appcompat/widget/AppCompatTextView;)Landroid/view/textclassifier/TextClassifier;
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$601(Landroidx/appcompat/widget/AppCompatTextView;IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 4
    return-void
.end method

.method public static synthetic access$701(Landroidx/appcompat/widget/AppCompatTextView;[II)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 4
    return-void
.end method

.method public static synthetic access$801(Landroidx/appcompat/widget/AppCompatTextView;I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$901(Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/textclassifier/TextClassifier;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    .line 4
    return-void
.end method

.method private consumeTextFutureAndSetBlocking()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    .line 3
    if-eqz v0, :cond_25

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_5
    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lk0/c;

    .line 14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    const/16 v3, 0x1d

    .line 18
    if-lt v2, v3, :cond_1a

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    goto :goto_25

    .line 27
    :cond_1a
    invoke-static {p0}, Landroidx/core/widget/k;->a(Landroid/widget/TextView;)Lk0/c$a;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-virtual {v2, v1}, Lk0/c$a;->a(Lk0/c$a;)Z

    .line 37
    throw v1
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_25} :catch_25
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_25} :catch_25

    .line 38
    :catch_25
    :cond_25
    :goto_25
    return-void
.end method

.method private getEmojiTextViewHelper()Landroidx/appcompat/widget/j;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mEmojiTextViewHelper:Landroidx/appcompat/widget/j;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/appcompat/widget/j;

    .line 7
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/j;-><init>(Landroid/widget/TextView;)V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mEmojiTextViewHelper:Landroidx/appcompat/widget/j;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mEmojiTextViewHelper:Landroidx/appcompat/widget/j;

    .line 14
    return-object v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->a()V

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->b()V

    .line 18
    :cond_11
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .registers 2

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView$b;

    .line 11
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextView$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$001(Landroidx/appcompat/widget/AppCompatTextView;)I

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 20
    if-eqz v0, :cond_1e

    .line 22
    iget-object v0, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 24
    iget v0, v0, Landroidx/appcompat/widget/z;->e:F

    .line 26
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_1e
    const/4 v0, -0x1

    .line 32
    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .registers 2

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView$b;

    .line 11
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextView$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$101(Landroidx/appcompat/widget/AppCompatTextView;)I

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 20
    if-eqz v0, :cond_1e

    .line 22
    iget-object v0, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 24
    iget v0, v0, Landroidx/appcompat/widget/z;->d:F

    .line 26
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_1e
    const/4 v0, -0x1

    .line 32
    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .registers 2

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView$b;

    .line 11
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextView$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$201(Landroidx/appcompat/widget/AppCompatTextView;)I

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 20
    if-eqz v0, :cond_1e

    .line 22
    iget-object v0, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 24
    iget v0, v0, Landroidx/appcompat/widget/z;->c:F

    .line 26
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_1e
    const/4 v0, -0x1

    .line 32
    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .registers 2

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView$b;

    .line 11
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextView$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$301(Landroidx/appcompat/widget/AppCompatTextView;)[I

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 20
    if-eqz v0, :cond_1a

    .line 22
    iget-object v0, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 24
    iget-object v0, v0, Landroidx/appcompat/widget/z;->f:[I

    .line 26
    return-object v0

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    new-array v0, v0, [I

    .line 30
    return-object v0
.end method

.method public getAutoSizeTextType()I
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_16

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView$b;

    .line 12
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextView$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$401(Landroidx/appcompat/widget/AppCompatTextView;)I

    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v0, v2, :cond_15

    .line 21
    move v1, v2

    .line 22
    :cond_15
    return v1

    .line 23
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 25
    if-eqz v0, :cond_1f

    .line 27
    iget-object v0, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 29
    iget v0, v0, Landroidx/appcompat/widget/z;->a:I

    .line 31
    return v0

    .line 32
    :cond_1f
    return v1
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

.method public getFirstBaselineToTopHeight()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 12
    move-result-object v1

    .line 13
    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 15
    sub-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public getLastBaselineToBottomHeight()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 12
    move-result-object v1

    .line 13
    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mSuperCaller:Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 3
    if-nez v0, :cond_1d

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v1, 0x1c

    .line 9
    if-lt v0, v1, :cond_12

    .line 11
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView$c;

    .line 13
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatTextView$c;-><init>(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 16
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mSuperCaller:Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 18
    goto :goto_1d

    .line 19
    :cond_12
    const/16 v1, 0x1a

    .line 21
    if-lt v0, v1, :cond_1d

    .line 23
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView$b;

    .line 25
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatTextView$b;-><init>(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 28
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mSuperCaller:Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 30
    :cond_1d
    :goto_1d
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mSuperCaller:Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 32
    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->e()Landroid/graphics/PorterDuff$Mode;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->consumeTextFutureAndSetBlocking()V

    .line 4
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 7
    move-result-object v0

    .line 8
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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextClassifierHelper:Landroidx/appcompat/widget/u;

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
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView$b;

    .line 29
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextView$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$501(Landroidx/appcompat/widget/AppCompatTextView;)Landroid/view/textclassifier/TextClassifier;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public getTextMetricsParamsCompat()Lk0/c$a;
    .registers 2

    .line 1
    invoke-static {p0}, Landroidx/core/widget/k;->a(Landroid/widget/TextView;)Lk0/c$a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isEmojiCompatEnabled()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/j;->b()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {p0, v0, p1}, Landroidx/appcompat/widget/v;->h(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 13
    invoke-static {p0, p1, v0}, La/b;->S(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;)V

    .line 16
    return-object v0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 6
    if-eqz p1, :cond_10

    .line 8
    sget-boolean p2, Landroidx/appcompat/widget/h1;->b:Z

    .line 10
    if-nez p2, :cond_10

    .line 12
    iget-object p1, p1, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/widget/z;->a()V

    .line 17
    :cond_10
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->consumeTextFutureAndSetBlocking()V

    .line 4
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 7
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 6
    const/4 p2, 0x1

    .line 7
    const/4 p3, 0x0

    .line 8
    if-eqz p1, :cond_1f

    .line 10
    sget-boolean p4, Landroidx/appcompat/widget/h1;->b:Z

    .line 12
    if-nez p4, :cond_1f

    .line 14
    iget-object p1, p1, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/widget/z;->i()Z

    .line 19
    move-result p4

    .line 20
    if-eqz p4, :cond_1b

    .line 22
    iget p1, p1, Landroidx/appcompat/widget/z;->a:I

    .line 24
    if-eqz p1, :cond_1b

    .line 26
    move p1, p2

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move p1, p3

    .line 29
    :goto_1c
    if-eqz p1, :cond_1f

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move p2, p3

    .line 33
    :goto_20
    if-eqz p2, :cond_29

    .line 35
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 37
    iget-object p1, p1, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 39
    invoke-virtual {p1}, Landroidx/appcompat/widget/z;->a()V

    .line 42
    :cond_29
    return-void
.end method

.method public setAllCaps(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 4
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j;->d(Z)V

    .line 11
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 6

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView$b;

    .line 11
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextView$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->access$601(Landroidx/appcompat/widget/AppCompatTextView;IIII)V

    .line 16
    goto :goto_17

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 19
    if-eqz v0, :cond_17

    .line 21
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/v;->i(IIII)V

    .line 24
    :cond_17
    :goto_17
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 4

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView$b;

    .line 11
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextView$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    invoke-static {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->access$701(Landroidx/appcompat/widget/AppCompatTextView;[II)V

    .line 16
    goto :goto_17

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 19
    if-eqz v0, :cond_17

    .line 21
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/v;->j([II)V

    .line 24
    :cond_17
    :goto_17
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .registers 3

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView$b;

    .line 11
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextView$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    invoke-static {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->access$801(Landroidx/appcompat/widget/AppCompatTextView;I)V

    .line 16
    goto :goto_17

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 19
    if-eqz v0, :cond_17

    .line 21
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->k(I)V

    .line 24
    :cond_17
    :goto_17
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

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
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    :cond_a
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .registers 7

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 5
    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_d

    :cond_c
    move-object p1, v1

    :goto_d
    if-eqz p2, :cond_14

    .line 6
    invoke-static {v0, p2}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_15

    :cond_14
    move-object p2, v1

    :goto_15
    if-eqz p3, :cond_1c

    .line 7
    invoke-static {v0, p3}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_1d

    :cond_1c
    move-object p3, v1

    :goto_1d
    if-eqz p4, :cond_23

    .line 8
    invoke-static {v0, p4}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 9
    :cond_23
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    if-eqz p1, :cond_2d

    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    :cond_2d
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    if-eqz p1, :cond_a

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    :cond_a
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 7

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 5
    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_d

    :cond_c
    move-object p1, v1

    :goto_d
    if-eqz p2, :cond_14

    .line 6
    invoke-static {v0, p2}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_15

    :cond_14
    move-object p2, v1

    :goto_15
    if-eqz p3, :cond_1c

    .line 7
    invoke-static {v0, p3}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_1d

    :cond_1c
    move-object p3, v1

    :goto_1d
    if-eqz p4, :cond_23

    .line 8
    invoke-static {v0, p4}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 9
    :cond_23
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    if-eqz p1, :cond_2d

    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    :cond_2d
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    if-eqz p1, :cond_a

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

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
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j;->e(Z)V

    .line 8
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 8
    move-result-object p1

    .line 9
    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 12
    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_e

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView$a;->b(I)V

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-static {p0, p1}, Landroidx/core/widget/k;->b(Landroid/widget/TextView;I)V

    .line 18
    :goto_11
    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_e

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView$a;->a(I)V

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-static {p0, p1}, Landroidx/core/widget/k;->c(Landroid/widget/TextView;I)V

    .line 18
    :goto_11
    return-void
.end method

.method public setLineHeight(I)V
    .registers 4

    .line 1
    invoke-static {p1}, La/b;->n(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 12
    move-result v0

    .line 13
    if-eq p1, v0, :cond_15

    .line 15
    sub-int/2addr p1, v0

    .line 16
    int-to-float p1, p1

    .line 17
    const/high16 v0, 0x3f800000  # 1.0f

    .line 19
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 22
    :cond_15
    return-void
.end method

.method public setPrecomputedText(Lk0/c;)V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_e

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-static {p0}, Landroidx/core/widget/k;->a(Landroid/widget/TextView;)Lk0/c$a;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-virtual {v0, v2}, Lk0/c$a;->a(Lk0/c$a;)Z

    .line 25
    throw v2
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->l(Landroid/content/res/ColorStateList;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    .line 11
    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->m(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextClassifierHelper:Landroidx/appcompat/widget/u;

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
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$a;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView$b;

    .line 21
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextView$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    invoke-static {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->access$901(Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/textclassifier/TextClassifier;)V

    .line 26
    return-void
.end method

.method public setTextFuture(Ljava/util/concurrent/Future;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lk0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    :cond_7
    return-void
.end method

.method public setTextMetricsParamsCompat(Lk0/c$a;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lk0/c$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_8

    .line 8
    goto :goto_30

    .line 9
    :cond_8
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 11
    if-ne v0, v1, :cond_d

    .line 13
    goto :goto_30

    .line 14
    :cond_d
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    .line 16
    if-ne v0, v1, :cond_13

    .line 18
    const/4 v2, 0x2

    .line 19
    goto :goto_30

    .line 20
    :cond_13
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 22
    if-ne v0, v1, :cond_19

    .line 24
    const/4 v2, 0x3

    .line 25
    goto :goto_30

    .line 26
    :cond_19
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 28
    if-ne v0, v1, :cond_1f

    .line 30
    const/4 v2, 0x4

    .line 31
    goto :goto_30

    .line 32
    :cond_1f
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    .line 34
    if-ne v0, v1, :cond_25

    .line 36
    const/4 v2, 0x5

    .line 37
    goto :goto_30

    .line 38
    :cond_25
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 40
    if-ne v0, v1, :cond_2b

    .line 42
    const/4 v2, 0x6

    .line 43
    goto :goto_30

    .line 44
    :cond_2b
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    .line 46
    if-ne v0, v1, :cond_30

    .line 48
    const/4 v2, 0x7

    .line 49
    :cond_30
    :goto_30
    invoke-static {p0, v2}, Landroidx/core/widget/k$b;->h(Landroid/view/View;I)V

    .line 52
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p1, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 58
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 61
    iget v0, p1, Lk0/c$a;->c:I

    .line 63
    invoke-static {p0, v0}, Landroidx/core/widget/k$c;->e(Landroid/widget/TextView;I)V

    .line 66
    iget p1, p1, Lk0/c$a;->d:I

    .line 68
    invoke-static {p0, p1}, Landroidx/core/widget/k$c;->h(Landroid/widget/TextView;I)V

    .line 71
    return-void
.end method

.method public setTextSize(IF)V
    .registers 6

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/h1;->b:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    goto :goto_24

    .line 9
    :cond_8
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/v;

    .line 11
    if-eqz v1, :cond_24

    .line 13
    if-nez v0, :cond_24

    .line 15
    iget-object v0, v1, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 17
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->i()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1c

    .line 23
    iget v0, v0, Landroidx/appcompat/widget/z;->a:I

    .line 25
    if-eqz v0, :cond_1c

    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    :goto_1d
    if-nez v0, :cond_24

    .line 32
    iget-object v0, v1, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 34
    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/widget/z;->f(FI)V

    .line 37
    :cond_24
    :goto_24
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mIsSetTypefaceProcessing:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_1f

    .line 9
    if-lez p2, :cond_1f

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lf0/i;->a:Lf0/p;

    .line 17
    if-eqz v0, :cond_17

    .line 19
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_1f

    .line 24
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    const-string p2, "Context cannot be null"

    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1

    .line 32
    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mIsSetTypefaceProcessing:Z

    .line 35
    if-eqz v0, :cond_25

    .line 37
    move-object p1, v0

    .line 38
    :cond_25
    const/4 v0, 0x0

    .line 39
    :try_start_26
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2c

    .line 42
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mIsSetTypefaceProcessing:Z

    .line 44
    return-void

    .line 45
    :catchall_2c
    move-exception p1

    .line 46
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mIsSetTypefaceProcessing:Z

    .line 48
    throw p1
.end method
