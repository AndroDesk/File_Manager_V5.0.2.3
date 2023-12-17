.class public Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;
.super Landroid/widget/TextView;
.source "ScrollingTabTextView.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mClipPosition:I

.field private mLeftToRight:Z

.field private mNormalColor:I

.field private mOriginColor:Landroid/content/res/ColorStateList;

.field private mSelectedColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->setupColors()V

    return-void
.end method

.method public static synthetic access$002(Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;I)I
    .registers 2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mClipPosition:I

    return p1
.end method

.method private setupColors()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    sget-object v1, Landroid/widget/TextView;->ENABLED_STATE_SET:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$color;->miuix_appcompat_action_bar_tab_text_color_normal_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mNormalColor:I

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    sget-object v1, Landroid/widget/TextView;->ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$color;->miuix_appcompat_action_bar_tab_text_color_selected_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mSelectedColor:I

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_80

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_80

    :cond_c
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mLeftToRight:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_16
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mLeftToRight:Z

    if-nez v0, :cond_23

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_20
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mNormalColor:I

    goto :goto_25

    :cond_23
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mSelectedColor:I

    :goto_25
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mClipPosition:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_41

    :cond_40
    move v5, v4

    :goto_41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v5, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mNormalColor:I

    if-ne v0, v2, :cond_54

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mSelectedColor:I

    goto :goto_59

    :cond_54
    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mSelectedColor:I

    if-ne v0, v5, :cond_59

    move v0, v2

    :cond_59
    :goto_59
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mClipPosition:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v1, :cond_6e

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v2, v1

    :cond_6e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_80
    :goto_80
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->setupColors()V

    return-void
.end method

.method public startScrollAnimation(Z)V
    .registers 6

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_c

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_f

    :cond_c
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_f
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mLeftToRight:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    move v1, p1

    move p1, v0

    goto :goto_20

    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    move v1, v0

    :goto_20
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v0

    const/4 p1, 0x1

    aput v1, v3, p1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView$1;-><init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView$2;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView$2;-><init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
