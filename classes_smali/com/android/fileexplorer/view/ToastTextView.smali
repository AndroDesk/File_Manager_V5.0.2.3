.class public Lcom/android/fileexplorer/view/ToastTextView;
.super Landroid/widget/LinearLayout;
.source "ToastTextView.java"


# static fields
.field public static final ICON_TYPE_ARROW:I = 0x3

.field public static final ICON_TYPE_CLOSE:I = 0x2

.field public static final ICON_TYPE_CUSTOM:I = 0x4

.field private static final ICON_TYPE_NONE:I = 0x1

.field public static final LOCATION_BOTTOM:I = 0x2

.field public static final LOCATION_NONE:I = 0x0

.field public static final LOCATION_TOP:I = 0x1

.field private static final TEXT_GRAVITY_CENTER:I = 0x2

.field private static final TEXT_GRAVITY_LEFT:I = 0x1

.field private static final TEXT_GRAVITY_RIGHT:I = 0x3


# instance fields
.field private mCustom:Landroid/widget/FrameLayout;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsShowing:Z

.field private mMode:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/ToastTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/ToastTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d00e4

    invoke-virtual {p3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/16 p3, 0x10

    .line 5
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p3, 0x1

    .line 6
    invoke-virtual {p0, p3}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0a040b

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f0a01d5

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0114

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mCustom:Landroid/widget/FrameLayout;

    .line 10
    sget-object v0, Lcom/android/fileexplorer/R$styleable;->ToastTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    move v1, p3

    .line 11
    :goto_40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ge v0, v2, :cond_8e

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    if-eqz v2, :cond_84

    if-eq v2, p3, :cond_7c

    if-eq v2, v4, :cond_75

    if-eq v2, v3, :cond_6b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_66

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5b

    goto :goto_8b

    .line 13
    :cond_5b
    iget-object v2, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    .line 14
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 15
    invoke-virtual {v2, p2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_8b

    .line 16
    :cond_66
    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    goto :goto_8b

    .line 17
    :cond_6b
    iget-object v2, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8b

    .line 18
    :cond_75
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/fileexplorer/view/ToastTextView;->mMode:I

    goto :goto_8b

    .line 19
    :cond_7c
    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 20
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/ToastTextView;->setIconType(I)V

    goto :goto_8b

    .line 21
    :cond_84
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 22
    :cond_8e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v1, v4, :cond_a7

    if-eq v1, v3, :cond_9e

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    const p2, 0x800013

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_ae

    .line 24
    :cond_9e
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    const p2, 0x800015

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_ae

    .line 25
    :cond_a7
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 26
    :goto_ae
    invoke-virtual {p0, p3}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/ToastTextView;J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/ToastTextView;->postDismiss(J)V

    .line 4
    return-void
.end method

.method private cancelAnimation()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 11
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 14
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 17
    return-void
.end method

.method private postDismiss(J)V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/ToastTextView$6;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/ToastTextView$6;-><init>(Lcom/android/fileexplorer/view/ToastTextView;)V

    .line 6
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    return-void
.end method

.method private show(ZJ)V
    .registers 16

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIsShowing:Z

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ToastTextView;->cancelAnimation()V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget v1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mMode:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_17

    const/4 v0, 0x2

    if-eq v1, v0, :cond_14

    move v9, v2

    goto :goto_1a

    :cond_14
    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_19

    :cond_17
    const/high16 v0, -0x40800000  # -1.0f

    :goto_19
    move v9, v0

    :goto_1a
    cmpl-float v0, v9, v2

    if-eqz v0, :cond_46

    .line 8
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0005

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    const-wide/16 v1, 0x12c

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11
    new-instance v1, Lcom/android/fileexplorer/view/ToastTextView$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/fileexplorer/view/ToastTextView$4;-><init>(Lcom/android/fileexplorer/view/ToastTextView;ZJ)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4b

    :cond_46
    if-eqz p1, :cond_4b

    .line 13
    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/view/ToastTextView;->postDismiss(J)V

    :cond_4b
    :goto_4b
    return-void
.end method


# virtual methods
.method public clearTextClickListener()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    return-void
.end method

.method public dismiss()V
    .registers 14

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIsShowing:Z

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/ToastTextView;->cancelAnimation()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x8

    .line 13
    if-ne v0, v1, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    iget v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mMode:I

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eq v0, v2, :cond_1d

    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq v0, v2, :cond_1a

    .line 25
    move v12, v3

    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    const/high16 v0, 0x3f800000  # 1.0f

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    const/high16 v0, -0x40800000  # -1.0f

    .line 32
    :goto_1f
    move v12, v0

    .line 33
    :goto_20
    cmpl-float v0, v12, v3

    .line 35
    if-eqz v0, :cond_4c

    .line 37
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 39
    const/4 v5, 0x1

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x1

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x1

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v11, 0x1

    .line 46
    move-object v4, v0

    .line 47
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v1

    .line 54
    const v2, 0x10a0005

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 60
    const-wide/16 v1, 0x12c

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 65
    new-instance v1, Lcom/android/fileexplorer/view/ToastTextView$5;

    .line 67
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/ToastTextView$5;-><init>(Lcom/android/fileexplorer/view/ToastTextView;)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    goto :goto_4f

    .line 77
    :cond_4c
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :goto_4f
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIsShowing:Z

    .line 3
    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 7
    return-void
.end method

.method public setCancelClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    .line 6
    new-instance v1, Lcom/android/fileexplorer/view/ToastTextView$3;

    .line 8
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/view/ToastTextView$3;-><init>(Lcom/android/fileexplorer/view/ToastTextView;Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mCustom:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public setIconType(I)V
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x8

    .line 5
    if-eq p1, v0, :cond_60

    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eq p1, v3, :cond_3e

    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq p1, v3, :cond_21

    .line 14
    const/4 v0, 0x4

    .line 15
    if-eq p1, v0, :cond_11

    .line 17
    goto :goto_6f

    .line 18
    :cond_11
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mCustom:Landroid/widget/FrameLayout;

    .line 20
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    .line 25
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    goto :goto_6f

    .line 34
    :cond_21
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mCustom:Landroid/widget/FrameLayout;

    .line 36
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    .line 46
    const v2, 0x7f08029a

    .line 49
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 57
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    goto :goto_6f

    .line 63
    :cond_3e
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mCustom:Landroid/widget/FrameLayout;

    .line 65
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    .line 75
    const v0, 0x7f08029d

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {p1, v4}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 86
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    .line 88
    new-instance v0, Lcom/android/fileexplorer/view/ToastTextView$1;

    .line 90
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/ToastTextView$1;-><init>(Lcom/android/fileexplorer/view/ToastTextView;)V

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    goto :goto_6f

    .line 97
    :cond_60
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mCustom:Landroid/widget/FrameLayout;

    .line 99
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    .line 104
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :goto_6f
    return-void
.end method

.method public setLocationMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mMode:I

    .line 3
    return-void
.end method

.method public setTextClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    .line 6
    new-instance v1, Lcom/android/fileexplorer/view/ToastTextView$2;

    .line 8
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/view/ToastTextView$2;-><init>(Lcom/android/fileexplorer/view/ToastTextView;Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/fileexplorer/view/ToastTextView;->show(Ljava/lang/String;ZJ)V

    return-void
.end method

.method public show(Ljava/lang/String;ZJ)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/fileexplorer/view/ToastTextView;->show(ZJ)V

    return-void
.end method

.method public showLink(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    .line 3
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    .line 12
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 19
    const/4 p1, 0x0

    .line 20
    const-wide/16 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0, v1}, Lcom/android/fileexplorer/view/ToastTextView;->show(ZJ)V

    .line 25
    return-void
.end method
