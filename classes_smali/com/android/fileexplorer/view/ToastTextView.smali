.class public Lcom/android/fileexplorer/view/ToastTextView;
.super Landroid/widget/LinearLayout;
.source "ToastTextView.java"


# static fields
.field public static final ICON_TYPE_ARROW:I

.field public static final ICON_TYPE_CLOSE:I

.field public static final ICON_TYPE_CUSTOM:I

.field private static final ICON_TYPE_NONE:I

.field public static final LOCATION_BOTTOM:I

.field public static final LOCATION_NONE:I

.field public static final LOCATION_TOP:I

.field private static final TEXT_GRAVITY_CENTER:I

.field private static final TEXT_GRAVITY_LEFT:I

.field private static final TEXT_GRAVITY_RIGHT:I


# instance fields
.field private mCustom:Landroid/widget/FrameLayout;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsShowing:Z

.field private mMode:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/ToastTextView;->ICON_TYPE_ARROW:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/ToastTextView;->ICON_TYPE_CLOSE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/ToastTextView;->ICON_TYPE_CUSTOM:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/ToastTextView;->ICON_TYPE_NONE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/ToastTextView;->LOCATION_BOTTOM:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/ToastTextView;->LOCATION_NONE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/ToastTextView;->LOCATION_TOP:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/ToastTextView;->TEXT_GRAVITY_CENTER:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/ToastTextView;->TEXT_GRAVITY_LEFT:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/ToastTextView;->TEXT_GRAVITY_RIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/ToastTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/ToastTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d00e4

    invoke-virtual {p3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/16 p3, 0x10

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f03299d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f032c43

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f032c82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mCustom:Landroid/widget/FrameLayout;

    sget-object v0, Lcom/android/fileexplorer/R$styleable;->ToastTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    move v1, p3

    :goto_4c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ge v0, v2, :cond_9a

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    if-eqz v2, :cond_90

    if-eq v2, p3, :cond_88

    if-eq v2, v4, :cond_81

    if-eq v2, v3, :cond_77

    const/4 v3, 0x4

    if-eq v2, v3, :cond_72

    const/4 v3, 0x5

    if-eq v2, v3, :cond_67

    goto :goto_97

    :cond_67
    iget-object v2, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_97

    :cond_72
    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    goto :goto_97

    :cond_77
    iget-object v2, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_97

    :cond_81
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/fileexplorer/view/ToastTextView;->mMode:I

    goto :goto_97

    :cond_88
    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/ToastTextView;->setIconType(I)V

    goto :goto_97

    :cond_90
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_97
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_9a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v1, v4, :cond_b3

    if-eq v1, v3, :cond_aa

    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    const p2, 0x800013

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_ba

    :cond_aa
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    const p2, 0x800015

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_ba

    :cond_b3
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    :goto_ba
    invoke-virtual {p0, p3}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/ToastTextView;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/ToastTextView;->postDismiss(J)V

    return-void
.end method

.method private cancelAnimation()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method private postDismiss(J)V
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/view/ToastTextView$6;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/ToastTextView$6;-><init>(Lcom/android/fileexplorer/view/ToastTextView;)V

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private show(ZJ)V
    .registers 16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIsShowing:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ToastTextView;->cancelAnimation()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

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

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0005

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/android/fileexplorer/view/ToastTextView$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/fileexplorer/view/ToastTextView$4;-><init>(Lcom/android/fileexplorer/view/ToastTextView;ZJ)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4b

    :cond_46
    if-eqz p1, :cond_4b

    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/view/ToastTextView;->postDismiss(J)V

    :cond_4b
    :goto_4b
    return-void
.end method


# virtual methods
.method public clearTextClickListener()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public dismiss()V
    .registers 14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIsShowing:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/view/ToastTextView;->cancelAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    return-void

    :cond_f
    iget v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1a

    move v12, v3

    goto :goto_20

    :cond_1a
    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_1f

    :cond_1d
    const/high16 v0, -0x40800000  # -1.0f

    :goto_1f
    move v12, v0

    :goto_20
    cmpl-float v0, v12, v3

    if-eqz v0, :cond_4c

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0005

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/android/fileexplorer/view/ToastTextView$5;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/ToastTextView$5;-><init>(Lcom/android/fileexplorer/view/ToastTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4f

    :cond_4c
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4f
    return-void
.end method

.method public isShowing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIsShowing:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public setCancelClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/fileexplorer/view/ToastTextView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/view/ToastTextView$3;-><init>(Lcom/android/fileexplorer/view/ToastTextView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mCustom:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setIconType(I)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_60

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_3e

    const/4 v3, 0x3

    if-eq p1, v3, :cond_21

    const/4 v0, 0x4

    if-eq p1, v0, :cond_11

    goto :goto_6f

    :cond_11
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mCustom:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6f

    :cond_21
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mCustom:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f08029a

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6f

    :cond_3e
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mCustom:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f08029d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/fileexplorer/view/ToastTextView$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/ToastTextView$1;-><init>(Lcom/android/fileexplorer/view/ToastTextView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6f

    :cond_60
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mCustom:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6f
    return-void
.end method

.method public setLocationMode(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mMode:I

    return-void
.end method

.method public setTextClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/fileexplorer/view/ToastTextView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/view/ToastTextView$2;-><init>(Lcom/android/fileexplorer/view/ToastTextView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/fileexplorer/view/ToastTextView;->show(Ljava/lang/String;ZJ)V

    return-void
.end method

.method public show(Ljava/lang/String;ZJ)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/android/fileexplorer/view/ToastTextView;->show(ZJ)V

    return-void
.end method

.method public showLink(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/fileexplorer/view/ToastTextView;->show(ZJ)V

    return-void
.end method
