.class public Lmiuix/popupwidget/internal/widget/ArrowPopupView;
.super Landroid/widget/FrameLayout;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_REPEAT_COUNT:I = 0x8

.field public static final ARROW_BOTTOM_LEFT_MODE:B = 0x12t

.field public static final ARROW_BOTTOM_MODE:B = 0x10t

.field public static final ARROW_BOTTOM_RIGHT_MODE:B = 0x11t

.field public static final ARROW_LEFT_MODE:B = 0x20t

.field public static final ARROW_NONE_MODE:B = 0x0t

.field private static final ARROW_PADDING:I = 0x1

.field public static final ARROW_RIGHT_MODE:B = 0x40t

.field public static final ARROW_TOP_LEFT_MODE:B = 0x9t

.field public static final ARROW_TOP_MODE:B = 0x8t

.field public static final ARROW_TOP_RIGHT_MODE:B = 0xat

.field public static final LAYOUT_MODE_LTR:I = 0x0

.field public static final LAYOUT_MODE_RTL:I = 0x1

.field public static final LAYOUT_MODE_UNSPECIFIED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ArrowPopupView"

.field private static final TRANSLATION_VALUE:I = 0x4


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mArrow:Landroidx/appcompat/widget/AppCompatImageView;

.field private mArrowBottom:Landroid/graphics/drawable/Drawable;

.field private mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

.field private mArrowBottomRight:Landroid/graphics/drawable/Drawable;

.field private mArrowLeft:Landroid/graphics/drawable/Drawable;

.field private mArrowMode:I

.field private mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

.field private mArrowRight:Landroid/graphics/drawable/Drawable;

.field private mArrowSpaceLeft:I

.field private mArrowSpaceTop:I

.field private mArrowTop:Landroid/graphics/drawable/Drawable;

.field private mArrowTopLeft:Landroid/graphics/drawable/Drawable;

.field private mArrowTopRight:Landroid/graphics/drawable/Drawable;

.field private mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

.field private mAutoDismiss:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundLeft:Landroid/graphics/drawable/Drawable;

.field private mBackgroundRight:Landroid/graphics/drawable/Drawable;

.field private mContentFrame:Landroid/widget/FrameLayout;

.field private mContentFrameWrapper:Landroid/widget/LinearLayout;

.field private mElevation:I

.field private mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

.field private mIsDismissing:Z

.field private mMinBorder:I

.field private mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

.field private mNegativeClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

.field private mPositiveClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private mRtlMode:I

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShowingAnimation:Z

.field private mSpaceLeft:I

.field private mSpaceTop:I

.field private mTitleBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleText:Landroidx/appcompat/widget/AppCompatTextView;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRectF:Landroid/graphics/RectF;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTranslationValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/popupwidget/R$attr;->arrowPopupViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTmpRect:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    const/4 v1, 0x2

    .line 7
    iput v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    .line 9
    new-instance v2, Lmiuix/popupwidget/internal/widget/ArrowPopupView$1;

    invoke-direct {v2, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$1;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 10
    new-instance v2, Lmiuix/popupwidget/internal/widget/ArrowPopupView$2;

    invoke-direct {v2, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$2;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

    .line 11
    iput v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 12
    invoke-static {p0, v1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 13
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    .line 14
    sget-object v0, Lmiuix/popupwidget/R$styleable;->ArrowPopupView:[I

    sget v1, Lmiuix/popupwidget/R$style;->Widget_ArrowPopupView_DayNight:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 15
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_contentBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 16
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_backgroundLeft:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    .line 17
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_backgroundRight:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    .line 18
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_titleBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    .line 19
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 20
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topArrowWithTitle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

    .line 21
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_bottomArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    .line 22
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_rightArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    .line 23
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_leftArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    .line 24
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topLeftArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    .line 25
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topRightArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    .line 26
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_bottomRightArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    .line 27
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_bottomLeftArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_window_elevation:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 29
    sget v0, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_android_elevation:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mElevation:I

    .line 30
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_window_min_border:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mMinBorder:I

    return-void
.end method

.method public static synthetic access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lmiuix/popupwidget/internal/widget/ArrowPopupView;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation$AnimationListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    .line 3
    return p0
.end method

.method public static synthetic access$1102(Lmiuix/popupwidget/internal/widget/ArrowPopupView;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    .line 3
    return p1
.end method

.method public static synthetic access$1200(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->animateShowing()V

    .line 4
    return-void
.end method

.method public static synthetic access$302(Lmiuix/popupwidget/internal/widget/ArrowPopupView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mIsDismissing:Z

    .line 3
    return p1
.end method

.method public static synthetic access$400(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Lmiuix/popupwidget/widget/ArrowPopupWindow;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 3
    return p0
.end method

.method public static synthetic access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lmiuix/popupwidget/internal/widget/ArrowPopupView;[F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getAnimationPivot([F)V

    .line 4
    return-void
.end method

.method private addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V
    .registers 3

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 4
    iget p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mElevation:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method private adjustArrowMode()V
    .registers 12

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    .line 6
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 19
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    move-result v3

    .line 23
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 28
    move-result v4

    .line 29
    iget-object v5, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    .line 31
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 34
    move-result v5

    .line 35
    iget-object v6, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    .line 37
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 40
    move-result v6

    .line 41
    new-instance v7, Landroid/util/SparseIntArray;

    .line 43
    const/4 v8, 0x4

    .line 44
    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 47
    const/4 v8, 0x1

    .line 48
    aget v9, v0, v8

    .line 50
    sub-int/2addr v9, v4

    .line 51
    const/16 v10, 0x10

    .line 53
    invoke-virtual {v7, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    aget v8, v0, v8

    .line 58
    sub-int/2addr v2, v8

    .line 59
    sub-int/2addr v2, v5

    .line 60
    sub-int/2addr v2, v4

    .line 61
    const/16 v4, 0x8

    .line 63
    invoke-virtual {v7, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    const/4 v2, 0x0

    .line 67
    aget v4, v0, v2

    .line 69
    sub-int/2addr v4, v3

    .line 70
    const/16 v5, 0x40

    .line 72
    invoke-virtual {v7, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    aget v0, v0, v2

    .line 77
    sub-int/2addr v1, v0

    .line 78
    sub-int/2addr v1, v6

    .line 79
    sub-int/2addr v1, v3

    .line 80
    const/16 v0, 0x20

    .line 82
    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    const/high16 v0, -0x80000000

    .line 87
    :goto_56
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    .line 90
    move-result v1

    .line 91
    if-ge v2, v1, :cond_78

    .line 93
    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 96
    move-result v1

    .line 97
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 100
    move-result v3

    .line 101
    iget v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mMinBorder:I

    .line 103
    if-lt v3, v4, :cond_6a

    .line 105
    move v10, v1

    .line 106
    goto :goto_78

    .line 107
    :cond_6a
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 110
    move-result v3

    .line 111
    if-le v3, v0, :cond_75

    .line 113
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 116
    move-result v0

    .line 117
    move v10, v1

    .line 118
    :cond_75
    add-int/lit8 v2, v2, 0x1

    .line 120
    goto :goto_56

    .line 121
    :cond_78
    :goto_78
    invoke-virtual {p0, v10}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setArrowMode(I)V

    .line 124
    return-void
.end method

.method private animateShowing()V
    .registers 14

    .line 1
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_cd

    .line 7
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 16
    if-eqz v0, :cond_14

    .line 18
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 21
    :cond_14
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 23
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 26
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 28
    new-instance v1, Lmiuix/popupwidget/internal/widget/ArrowPopupView$6;

    .line 30
    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$6;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36
    const/high16 v0, 0x40800000  # 4.0f

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 49
    move-result-object v1

    .line 50
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 52
    mul-float/2addr v1, v0

    .line 53
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 55
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x2

    .line 59
    const/4 v5, 0x1

    .line 60
    if-eq v2, v5, :cond_48

    .line 62
    if-ne v2, v4, :cond_46

    .line 64
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_46

    .line 70
    goto :goto_48

    .line 71
    :cond_46
    move v2, v3

    .line 72
    goto :goto_49

    .line 73
    :cond_48
    :goto_48
    move v2, v5

    .line 74
    :goto_49
    iget v6, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 76
    const/16 v7, 0x10

    .line 78
    if-eq v6, v7, :cond_65

    .line 80
    const/16 v7, 0x20

    .line 82
    if-eq v6, v7, :cond_5f

    .line 84
    const/16 v7, 0x40

    .line 86
    if-eq v6, v7, :cond_58

    .line 88
    goto :goto_66

    .line 89
    :cond_58
    if-nez v2, :cond_5c

    .line 91
    neg-float v0, v1

    .line 92
    move v1, v0

    .line 93
    :cond_5c
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 95
    goto :goto_66

    .line 96
    :cond_5f
    if-eqz v2, :cond_62

    .line 98
    neg-float v1, v1

    .line 99
    :cond_62
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 101
    goto :goto_66

    .line 102
    :cond_65
    neg-float v1, v1

    .line 103
    :goto_66
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 105
    const/4 v6, 0x3

    .line 106
    new-array v7, v6, [F

    .line 108
    const/4 v8, 0x0

    .line 109
    aput v8, v7, v3

    .line 111
    aput v1, v7, v5

    .line 113
    aput v8, v7, v4

    .line 115
    invoke-static {v2, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 118
    move-result-object v2

    .line 119
    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 121
    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 124
    invoke-virtual {v2, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    const-wide/16 v9, 0x4b0

    .line 129
    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 132
    iget-boolean v7, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    .line 134
    const/16 v11, 0x8

    .line 136
    const/4 v12, -0x1

    .line 137
    if-eqz v7, :cond_8e

    .line 139
    invoke-virtual {v2, v11}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 142
    goto :goto_91

    .line 143
    :cond_8e
    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 146
    :goto_91
    new-instance v7, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;

    .line 148
    invoke-direct {v7, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    .line 151
    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 154
    iget-object v7, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 156
    new-array v6, v6, [F

    .line 158
    aput v8, v6, v3

    .line 160
    aput v1, v6, v5

    .line 162
    aput v8, v6, v4

    .line 164
    invoke-static {v7, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 167
    move-result-object v0

    .line 168
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 170
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 173
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 179
    iget-boolean v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    .line 181
    if-eqz v1, :cond_ba

    .line 183
    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 186
    goto :goto_bd

    .line 187
    :cond_ba
    invoke-virtual {v0, v12}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 190
    :goto_bd
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 192
    new-array v4, v4, [Landroid/animation/Animator;

    .line 194
    aput-object v2, v4, v3

    .line 196
    aput-object v0, v4, v5

    .line 198
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 201
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 203
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 206
    :cond_cd
    return-void
.end method

.method private arrowHorizontalLayout(I)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [I

    .line 6
    iget-object v3, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    .line 8
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 11
    const/4 v3, 0x0

    .line 12
    aget v4, v2, v3

    .line 14
    const/4 v5, 0x1

    .line 15
    aget v6, v2, v5

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 20
    iget-object v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    .line 22
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 25
    move-result v7

    .line 26
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    .line 28
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 31
    move-result v8

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 35
    move-result v9

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 39
    move-result v10

    .line 40
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 42
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 45
    move-result v11

    .line 46
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 48
    invoke-virtual {v12}, Landroid/view/View;->getMinimumWidth()I

    .line 51
    move-result v12

    .line 52
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    .line 55
    move-result v11

    .line 56
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 58
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 61
    move-result v12

    .line 62
    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 64
    invoke-virtual {v13}, Landroid/view/View;->getMinimumHeight()I

    .line 67
    move-result v13

    .line 68
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 71
    move-result v12

    .line 72
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowWidth()I

    .line 75
    move-result v13

    .line 76
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowHeight()I

    .line 79
    move-result v14

    .line 80
    div-int/lit8 v15, v8, 0x2

    .line 82
    add-int/2addr v15, v6

    .line 83
    aget v16, v2, v5

    .line 85
    sub-int v15, v15, v16

    .line 87
    iput v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 89
    sub-int v15, v10, v15

    .line 91
    sub-int/2addr v8, v14

    .line 92
    div-int/2addr v8, v1

    .line 93
    add-int/2addr v8, v6

    .line 94
    sub-int v8, v8, v16

    .line 96
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 98
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    .line 101
    move-result v6

    .line 102
    iget-object v3, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 104
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 107
    move-result v3

    .line 108
    sub-int/2addr v6, v3

    .line 109
    div-int/2addr v6, v1

    .line 110
    add-int/2addr v6, v8

    .line 111
    iput v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    .line 113
    div-int/lit8 v3, v12, 0x2

    .line 115
    sub-int v6, v12, v3

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    .line 120
    move-result v8

    .line 121
    add-int v8, v8, p1

    .line 123
    iput v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 125
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isRightMode()Z

    .line 128
    move-result v8

    .line 129
    if-eqz v8, :cond_c0

    .line 131
    iget v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    .line 133
    if-eq v8, v5, :cond_a3

    .line 135
    if-ne v8, v1, :cond_8f

    .line 137
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_8f

    .line 143
    goto :goto_a3

    .line 144
    :cond_8f
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 146
    sub-int v7, v4, v11

    .line 148
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 150
    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    .line 153
    move-result v8

    .line 154
    add-int/2addr v8, v7

    .line 155
    sub-int/2addr v8, v13

    .line 156
    const/4 v7, 0x0

    .line 157
    aget v2, v2, v7

    .line 159
    sub-int/2addr v8, v2

    .line 160
    add-int/2addr v8, v1

    .line 161
    iput v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 163
    goto :goto_100

    .line 164
    :cond_a3
    :goto_a3
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 166
    add-int/2addr v4, v7

    .line 167
    iget-object v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 169
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    .line 172
    move-result v7

    .line 173
    sub-int/2addr v4, v7

    .line 174
    add-int/2addr v4, v13

    .line 175
    const/4 v7, 0x0

    .line 176
    aget v2, v2, v7

    .line 178
    sub-int/2addr v4, v2

    .line 179
    add-int/2addr v4, v1

    .line 180
    iput v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 182
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 184
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 187
    move-result v1

    .line 188
    :goto_bb
    sub-int/2addr v1, v13

    .line 189
    add-int/2addr v1, v4

    .line 190
    add-int/2addr v1, v5

    .line 191
    :goto_be
    move v7, v1

    .line 192
    goto :goto_108

    .line 193
    :cond_c0
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isLeftMode()Z

    .line 196
    move-result v8

    .line 197
    if-eqz v8, :cond_107

    .line 199
    iget v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    .line 201
    if-eq v8, v5, :cond_ec

    .line 203
    if-ne v8, v1, :cond_d3

    .line 205
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_d3

    .line 211
    goto :goto_ec

    .line 212
    :cond_d3
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 214
    add-int/2addr v4, v7

    .line 215
    iget-object v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 217
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    .line 220
    move-result v7

    .line 221
    sub-int/2addr v4, v7

    .line 222
    add-int/2addr v4, v13

    .line 223
    const/4 v7, 0x0

    .line 224
    aget v2, v2, v7

    .line 226
    sub-int/2addr v4, v2

    .line 227
    add-int/2addr v4, v1

    .line 228
    iput v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 230
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 232
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 235
    move-result v1

    .line 236
    goto :goto_bb

    .line 237
    :cond_ec
    :goto_ec
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 239
    sub-int v7, v4, v11

    .line 241
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 243
    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    .line 246
    move-result v8

    .line 247
    add-int/2addr v8, v7

    .line 248
    sub-int/2addr v8, v13

    .line 249
    const/4 v7, 0x0

    .line 250
    aget v2, v2, v7

    .line 252
    sub-int/2addr v8, v2

    .line 253
    add-int/2addr v8, v5

    .line 254
    add-int/2addr v8, v1

    .line 255
    iput v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 257
    :goto_100
    sub-int/2addr v4, v13

    .line 258
    sub-int/2addr v4, v2

    .line 259
    add-int v4, v4, p1

    .line 261
    add-int/lit8 v1, v4, -0x1

    .line 263
    goto :goto_be

    .line 264
    :cond_107
    const/4 v7, 0x0

    .line 265
    :goto_108
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 267
    if-lt v1, v3, :cond_115

    .line 269
    if-lt v15, v6, :cond_115

    .line 271
    sub-int/2addr v1, v3

    .line 272
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    .line 274
    add-int/2addr v1, v2

    .line 275
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 277
    goto :goto_125

    .line 278
    :cond_115
    if-ge v15, v6, :cond_11f

    .line 280
    sub-int v1, v10, v12

    .line 282
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    .line 284
    add-int/2addr v1, v2

    .line 285
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 287
    goto :goto_125

    .line 288
    :cond_11f
    if-ge v1, v3, :cond_125

    .line 290
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    .line 292
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 294
    :cond_125
    :goto_125
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    .line 296
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    .line 298
    add-int/2addr v1, v2

    .line 299
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    .line 301
    if-gez v1, :cond_132

    .line 303
    const/4 v2, 0x0

    .line 304
    iput v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    .line 306
    goto :goto_13c

    .line 307
    :cond_132
    add-int v2, v1, v14

    .line 309
    if-le v2, v10, :cond_13c

    .line 311
    add-int v2, v1, v14

    .line 313
    sub-int/2addr v2, v10

    .line 314
    sub-int/2addr v1, v2

    .line 315
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    .line 317
    :cond_13c
    :goto_13c
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 319
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 321
    const/4 v3, 0x0

    .line 322
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 325
    move-result v2

    .line 326
    iget v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 328
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 331
    move-result v3

    .line 332
    iget v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 334
    add-int/2addr v4, v11

    .line 335
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    .line 338
    move-result v4

    .line 339
    iget v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 341
    add-int/2addr v5, v12

    .line 342
    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    .line 345
    move-result v5

    .line 346
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 349
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 351
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    .line 353
    add-int/2addr v13, v7

    .line 354
    add-int/2addr v14, v2

    .line 355
    invoke-virtual {v1, v7, v2, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 358
    return-void
.end method

.method private arrowLayout()V
    .registers 6

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_10

    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_f

    .line 9
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    :cond_10
    :goto_10
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetX:I

    .line 19
    if-eqz v1, :cond_15

    .line 21
    neg-int v0, v0

    .line 22
    :cond_15
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isVerticalMode()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1f

    .line 28
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->arrowVerticalLayout(I)V

    .line 31
    goto :goto_22

    .line 32
    :cond_1f
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->arrowHorizontalLayout(I)V

    .line 35
    :goto_22
    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_78

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 48
    move-result v2

    .line 49
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 51
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 54
    move-result v3

    .line 55
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 57
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 60
    move-result v4

    .line 61
    sub-int/2addr v3, v4

    .line 62
    if-le v2, v3, :cond_52

    .line 64
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 69
    move-result v2

    .line 70
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 75
    move-result v3

    .line 76
    sub-int/2addr v2, v3

    .line 77
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    goto :goto_69

    .line 83
    :cond_52
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 86
    move-result v2

    .line 87
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 89
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 92
    move-result v3

    .line 93
    if-le v2, v3, :cond_69

    .line 95
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 100
    move-result v2

    .line 101
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    :cond_69
    :goto_69
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 108
    if-lez v0, :cond_71

    .line 110
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 112
    if-gtz v0, :cond_78

    .line 114
    :cond_71
    const-string v0, "ArrowPopupView"

    .line 116
    const-string v1, "Invalid LayoutPrams of content view, please check the anchor view"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_78
    return-void
.end method

.method private arrowVerticalLayout(I)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 8
    move-result v1

    .line 9
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 18
    move-result v3

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 22
    move-result v4

    .line 23
    iget-object v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 28
    move-result v5

    .line 29
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 31
    invoke-virtual {v6}, Landroid/view/View;->getMinimumWidth()I

    .line 34
    move-result v6

    .line 35
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result v5

    .line 39
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 41
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    move-result v6

    .line 45
    iget-object v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 47
    invoke-virtual {v7}, Landroid/view/View;->getMinimumHeight()I

    .line 50
    move-result v7

    .line 51
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 54
    move-result v6

    .line 55
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowWidth()I

    .line 58
    move-result v7

    .line 59
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowHeight()I

    .line 62
    move-result v8

    .line 63
    const/4 v9, 0x2

    .line 64
    new-array v10, v9, [I

    .line 66
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    .line 68
    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 71
    const/4 v11, 0x0

    .line 72
    aget v12, v10, v11

    .line 74
    const/4 v13, 0x1

    .line 75
    aget v14, v10, v13

    .line 77
    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 80
    div-int/lit8 v15, v1, 0x2

    .line 82
    add-int/2addr v15, v12

    .line 83
    aget v16, v10, v11

    .line 85
    sub-int v15, v15, v16

    .line 87
    iput v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 89
    sub-int v15, v3, v15

    .line 91
    sub-int/2addr v1, v7

    .line 92
    div-int/2addr v1, v9

    .line 93
    add-int/2addr v1, v12

    .line 94
    sub-int v1, v1, v16

    .line 96
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    .line 101
    move-result v1

    .line 102
    iget v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    .line 104
    add-int/2addr v1, v9

    .line 105
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 107
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isBottomMode()Z

    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_8b

    .line 113
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 115
    aget v2, v10, v13

    .line 117
    sub-int v2, v14, v2

    .line 119
    sub-int/2addr v2, v6

    .line 120
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 122
    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    .line 125
    move-result v9

    .line 126
    sub-int/2addr v9, v8

    .line 127
    add-int/2addr v9, v2

    .line 128
    add-int/2addr v9, v1

    .line 129
    iput v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 131
    aget v1, v10, v13

    .line 133
    sub-int/2addr v14, v1

    .line 134
    sub-int/2addr v14, v8

    .line 135
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    .line 137
    add-int/2addr v14, v1

    .line 138
    sub-int/2addr v14, v13

    .line 139
    goto :goto_ae

    .line 140
    :cond_8b
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isTopMode()Z

    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_ad

    .line 146
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 148
    add-int/2addr v14, v2

    .line 149
    aget v2, v10, v13

    .line 151
    sub-int/2addr v14, v2

    .line 152
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 154
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 157
    move-result v2

    .line 158
    sub-int/2addr v14, v2

    .line 159
    add-int/2addr v14, v8

    .line 160
    add-int/2addr v14, v1

    .line 161
    iput v14, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 163
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 168
    move-result v1

    .line 169
    sub-int/2addr v1, v8

    .line 170
    add-int/2addr v1, v14

    .line 171
    add-int/lit8 v14, v1, 0x1

    .line 173
    goto :goto_ae

    .line 174
    :cond_ad
    move v14, v11

    .line 175
    :goto_ae
    div-int/lit8 v1, v5, 0x2

    .line 177
    sub-int v2, v5, v1

    .line 179
    iget v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 181
    if-lt v9, v1, :cond_bc

    .line 183
    if-lt v15, v2, :cond_bc

    .line 185
    sub-int/2addr v9, v1

    .line 186
    iput v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 188
    goto :goto_c7

    .line 189
    :cond_bc
    if-ge v15, v2, :cond_c3

    .line 191
    sub-int v1, v3, v5

    .line 193
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 195
    goto :goto_c7

    .line 196
    :cond_c3
    if-ge v9, v1, :cond_c7

    .line 198
    iput v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 200
    :cond_c7
    :goto_c7
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 202
    add-int v1, v1, p1

    .line 204
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 206
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    .line 208
    add-int v2, v2, p1

    .line 210
    iput v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    .line 212
    if-gez v2, :cond_d8

    .line 214
    iput v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    .line 216
    goto :goto_e2

    .line 217
    :cond_d8
    add-int v9, v2, v7

    .line 219
    if-le v9, v3, :cond_e2

    .line 221
    add-int v9, v2, v7

    .line 223
    sub-int/2addr v9, v3

    .line 224
    sub-int/2addr v2, v9

    .line 225
    iput v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    .line 227
    :cond_e2
    :goto_e2
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 229
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    .line 232
    move-result v1

    .line 233
    iget v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 235
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    .line 238
    move-result v9

    .line 239
    iget v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 241
    add-int/2addr v10, v5

    .line 242
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    .line 245
    move-result v3

    .line 246
    iget v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 248
    add-int/2addr v5, v6

    .line 249
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 252
    move-result v4

    .line 253
    invoke-virtual {v2, v1, v9, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 256
    invoke-direct {v0, v7, v8, v14}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->executeLayoutArrow(III)V

    .line 259
    return-void
.end method

.method private executeLayoutArrow(III)V
    .registers 11

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_12

    .line 7
    const/4 v3, 0x2

    .line 8
    if-ne v0, v3, :cond_10

    .line 10
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    move v0, v1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    :goto_12
    move v0, v2

    .line 20
    :goto_13
    iget v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 22
    const/16 v4, 0xa

    .line 24
    const/16 v5, 0x9

    .line 26
    if-eq v3, v5, :cond_92

    .line 28
    if-eq v3, v4, :cond_92

    .line 30
    const/16 v4, 0x11

    .line 32
    const/16 v5, 0x12

    .line 34
    if-eq v3, v4, :cond_29

    .line 36
    if-eq v3, v5, :cond_29

    .line 38
    iget p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    .line 40
    goto/16 :goto_d2

    .line 42
    :cond_29
    if-nez v0, :cond_2d

    .line 44
    if-eq v3, v5, :cond_31

    .line 46
    :cond_2d
    if-eqz v0, :cond_32

    .line 48
    if-ne v3, v4, :cond_32

    .line 50
    :cond_31
    move v1, v2

    .line 51
    :cond_32
    if-eqz v1, :cond_58

    .line 53
    iget-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 55
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 58
    move-result p3

    .line 59
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 64
    move-result v0

    .line 65
    add-int/2addr v0, p3

    .line 66
    iget-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 68
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 71
    move-result p3

    .line 72
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 77
    move-result v1

    .line 78
    sub-int/2addr p3, v1

    .line 79
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 84
    move-result v1

    .line 85
    sub-int/2addr v1, p2

    .line 86
    sub-int/2addr p3, v1

    .line 87
    move p2, v0

    .line 88
    goto :goto_7f

    .line 89
    :cond_58
    iget-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 91
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 94
    move-result p3

    .line 95
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 100
    move-result v0

    .line 101
    sub-int/2addr p3, v0

    .line 102
    sub-int/2addr p3, p1

    .line 103
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 108
    move-result v0

    .line 109
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 111
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 114
    move-result v1

    .line 115
    sub-int/2addr v0, v1

    .line 116
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 118
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 121
    move-result v1

    .line 122
    sub-int/2addr v1, p2

    .line 123
    sub-int p2, v0, v1

    .line 125
    move v6, p3

    .line 126
    move p3, p2

    .line 127
    move p2, v6

    .line 128
    :goto_7f
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 130
    if-ne v0, v5, :cond_8f

    .line 132
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 134
    add-int v1, p2, p1

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 139
    move-result v2

    .line 140
    add-int/2addr v2, p3

    .line 141
    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 144
    :cond_8f
    add-int/lit8 p3, p3, -0x5

    .line 146
    goto :goto_d2

    .line 147
    :cond_92
    if-nez v0, :cond_96

    .line 149
    if-eq v3, v5, :cond_9a

    .line 151
    :cond_96
    if-eqz v0, :cond_9b

    .line 153
    if-ne v3, v4, :cond_9b

    .line 155
    :cond_9a
    move v1, v2

    .line 156
    :cond_9b
    if-eqz v1, :cond_ad

    .line 158
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 163
    move-result v0

    .line 164
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 166
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    .line 169
    move-result v1

    .line 170
    add-int/2addr v1, v0

    .line 171
    sub-int/2addr v1, v2

    .line 172
    move v0, v1

    .line 173
    goto :goto_bc

    .line 174
    :cond_ad
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 179
    move-result v0

    .line 180
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 182
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    .line 185
    move-result v1

    .line 186
    sub-int/2addr v0, v1

    .line 187
    sub-int/2addr v0, p1

    .line 188
    add-int/2addr v0, v2

    .line 189
    :goto_bc
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 191
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 194
    move-result v1

    .line 195
    add-int/2addr v1, p3

    .line 196
    sub-int p3, v1, p2

    .line 198
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 200
    add-int v1, v0, p1

    .line 202
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 205
    move-result v2

    .line 206
    add-int/2addr v2, p3

    .line 207
    invoke-virtual {p2, v0, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 210
    move p2, v0

    .line 211
    :goto_d2
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 213
    add-int/2addr p1, p2

    .line 214
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 221
    move-result v1

    .line 222
    add-int/2addr v1, p3

    .line 223
    invoke-virtual {v0, p2, p3, p1, v1}, Landroid/view/View;->layout(IIII)V

    .line 226
    return-void
.end method

.method private getAnimationPivot([F)V
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 21
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 24
    move-result v3

    .line 25
    iget v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x1

    .line 29
    const/4 v7, 0x2

    .line 30
    if-eq v4, v6, :cond_2a

    .line 32
    if-ne v4, v7, :cond_28

    .line 34
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_28

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    move v4, v5

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    :goto_2a
    move v4, v6

    .line 44
    :goto_2b
    iget v8, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 46
    const/16 v9, 0x20

    .line 48
    if-eq v8, v9, :cond_6d

    .line 50
    const/16 v9, 0x40

    .line 52
    if-eq v8, v9, :cond_65

    .line 54
    packed-switch v8, :pswitch_data_7a

    .line 57
    packed-switch v8, :pswitch_data_84

    .line 60
    add-int/2addr v3, v2

    .line 61
    div-int/2addr v3, v7

    .line 62
    int-to-float v2, v3

    .line 63
    add-int/2addr v1, v0

    .line 64
    div-int/2addr v1, v7

    .line 65
    goto :goto_51

    .line 66
    :pswitch_41  #0x12
    if-eqz v4, :cond_45

    .line 68
    int-to-float v0, v3

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    int-to-float v0, v2

    .line 71
    :goto_46
    move v2, v0

    .line 72
    goto :goto_51

    .line 73
    :pswitch_48  #0x11
    if-eqz v4, :cond_4c

    .line 75
    int-to-float v0, v2

    .line 76
    goto :goto_46

    .line 77
    :cond_4c
    int-to-float v0, v3

    .line 78
    goto :goto_46

    .line 79
    :pswitch_4e  #0x10
    add-int/2addr v3, v2

    .line 80
    div-int/2addr v3, v7

    .line 81
    int-to-float v2, v3

    .line 82
    :goto_51
    int-to-float v0, v1

    .line 83
    goto :goto_75

    .line 84
    :pswitch_53  #0xa
    if-eqz v4, :cond_57

    .line 86
    int-to-float v1, v2

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    int-to-float v1, v3

    .line 89
    :goto_58
    move v2, v1

    .line 90
    goto :goto_63

    .line 91
    :pswitch_5a  #0x9
    if-eqz v4, :cond_5e

    .line 93
    int-to-float v1, v3

    .line 94
    goto :goto_58

    .line 95
    :cond_5e
    int-to-float v1, v2

    .line 96
    goto :goto_58

    .line 97
    :pswitch_60  #0x8
    add-int/2addr v3, v2

    .line 98
    div-int/2addr v3, v7

    .line 99
    int-to-float v2, v3

    .line 100
    :goto_63
    int-to-float v0, v0

    .line 101
    goto :goto_75

    .line 102
    :cond_65
    if-eqz v4, :cond_69

    .line 104
    int-to-float v2, v2

    .line 105
    goto :goto_6a

    .line 106
    :cond_69
    int-to-float v2, v3

    .line 107
    :goto_6a
    add-int/2addr v1, v0

    .line 108
    div-int/2addr v1, v7

    .line 109
    goto :goto_51

    .line 110
    :cond_6d
    if-eqz v4, :cond_71

    .line 112
    int-to-float v2, v3

    .line 113
    goto :goto_72

    .line 114
    :cond_71
    int-to-float v2, v2

    .line 115
    :goto_72
    add-int/2addr v1, v0

    .line 116
    div-int/2addr v1, v7

    .line 117
    goto :goto_51

    .line 118
    :goto_75
    aput v2, p1, v5

    .line 120
    aput v0, p1, v6

    .line 122
    return-void

    .line 123
    :pswitch_data_7a
    .packed-switch 0x8
        :pswitch_60  #00000008
        :pswitch_5a  #00000009
        :pswitch_53  #0000000a
    .end packed-switch

    .line 133
    :pswitch_data_84
    .packed-switch 0x10
        :pswitch_4e  #00000010
        :pswitch_48  #00000011
        :pswitch_41  #00000012
    .end packed-switch
.end method

.method private getArrowHeight()I
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 3
    const/16 v1, 0x9

    .line 5
    if-eq v0, v1, :cond_2c

    .line 7
    const/16 v1, 0xa

    .line 9
    if-eq v0, v1, :cond_2c

    .line 11
    const/16 v1, 0x11

    .line 13
    if-eq v0, v1, :cond_25

    .line 15
    const/16 v1, 0x12

    .line 17
    if-eq v0, v1, :cond_25

    .line 19
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_32

    .line 27
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 29
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 36
    move-result v0

    .line 37
    goto :goto_32

    .line 38
    :cond_25
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 43
    move-result v0

    .line 44
    goto :goto_32

    .line 45
    :cond_2c
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 50
    move-result v0

    .line 51
    :cond_32
    :goto_32
    return v0
.end method

.method private getArrowWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_12

    .line 9
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 11
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 18
    move-result v0

    .line 19
    :cond_12
    return v0
.end method

.method private isBottomMode()Z
    .registers 2

    .line 1
    const/16 v0, 0x10

    .line 3
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private isCertainMode(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 3
    and-int/2addr v0, p1

    .line 4
    if-ne v0, p1, :cond_7

    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    :goto_8
    return p1
.end method

.method private isLeftMode()Z
    .registers 2

    .line 1
    const/16 v0, 0x20

    .line 3
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private isRightMode()Z
    .registers 2

    .line 1
    const/16 v0, 0x40

    .line 3
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private isTopMode()Z
    .registers 2

    .line 1
    const/16 v0, 0x8

    .line 3
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private isVerticalMode()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isTopMode()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isBottomMode()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 17
    :goto_10
    return v0
.end method

.method private updateArrowDrawable(I)V
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_10

    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_f

    .line 9
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    :cond_10
    :goto_10
    const/16 v0, 0x20

    .line 19
    if-eq p1, v0, :cond_7c

    .line 21
    const/16 v0, 0x40

    .line 23
    if-eq p1, v0, :cond_6f

    .line 25
    packed-switch p1, :pswitch_data_8a

    .line 28
    packed-switch p1, :pswitch_data_94

    .line 31
    goto/16 :goto_88

    .line 33
    :pswitch_20  #0x12
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 35
    if-eqz v1, :cond_27

    .line 37
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    .line 42
    :goto_29
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    goto :goto_88

    .line 46
    :pswitch_2d  #0x11
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 48
    if-eqz v1, :cond_34

    .line 50
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    .line 52
    goto :goto_36

    .line 53
    :cond_34
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    .line 55
    :goto_36
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    goto :goto_88

    .line 59
    :pswitch_3a  #0x10
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 61
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    goto :goto_88

    .line 67
    :pswitch_42  #0xa
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 69
    if-eqz v1, :cond_49

    .line 71
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    .line 73
    goto :goto_4b

    .line 74
    :cond_49
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    .line 76
    :goto_4b
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    goto :goto_88

    .line 80
    :pswitch_4f  #0x9
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 82
    if-eqz v1, :cond_56

    .line 84
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    .line 86
    goto :goto_58

    .line 87
    :cond_56
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    .line 89
    :goto_58
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    goto :goto_88

    .line 93
    :pswitch_5c  #0x8
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 95
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_69

    .line 103
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

    .line 105
    goto :goto_6b

    .line 106
    :cond_69
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 108
    :goto_6b
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    goto :goto_88

    .line 112
    :cond_6f
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 114
    if-eqz v1, :cond_76

    .line 116
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    .line 118
    goto :goto_78

    .line 119
    :cond_76
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    .line 121
    :goto_78
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    goto :goto_88

    .line 125
    :cond_7c
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 127
    if-eqz v1, :cond_83

    .line 129
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    .line 131
    goto :goto_85

    .line 132
    :cond_83
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    .line 134
    :goto_85
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :goto_88
    return-void

    .line 138
    nop

    .line 139
    :pswitch_data_8a
    .packed-switch 0x8
        :pswitch_5c  #00000008
        :pswitch_4f  #00000009
        :pswitch_42  #0000000a
    .end packed-switch

    .line 149
    :pswitch_data_94
    .packed-switch 0x10
        :pswitch_3a  #00000010
        :pswitch_2d  #00000011
        :pswitch_20  #00000012
    .end packed-switch
.end method


# virtual methods
.method public addShadow()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    invoke-direct {p0, v0, v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V

    .line 2
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    new-instance v1, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    invoke-direct {p0, v0, v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public animateToDismiss()V
    .registers 13

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mIsDismissing:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 13
    :cond_c
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 15
    if-eqz v0, :cond_13

    .line 17
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 20
    :cond_13
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 26
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 28
    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [F

    .line 31
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getAnimationPivot([F)V

    .line 34
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    .line 36
    const/high16 v3, 0x3f800000  # 1.0f

    .line 38
    const v4, 0x3f19999a  # 0.6f

    .line 41
    const/high16 v5, 0x3f800000  # 1.0f

    .line 43
    const v6, 0x3f19999a  # 0.6f

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v2, 0x0

    .line 48
    aget v8, v0, v2

    .line 50
    const/4 v9, 0x0

    .line 51
    aget v10, v0, v1

    .line 53
    move-object v2, v11

    .line 54
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 57
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 59
    const/high16 v1, 0x3f800000  # 1.0f

    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 65
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_4f

    .line 71
    const-wide/16 v1, 0x96

    .line 73
    invoke-virtual {v11, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 79
    goto :goto_56

    .line 80
    :cond_4f
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 82
    const-wide/16 v2, 0x0

    .line 84
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 87
    :goto_56
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 89
    invoke-virtual {v1, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 92
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 94
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 97
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 99
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 104
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 106
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 108
    const/high16 v2, 0x40000000  # 2.0f

    .line 110
    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 116
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    return-void
.end method

.method public animateToShow()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;

    .line 10
    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 16
    return-void
.end method

.method public enableShowingAnimation(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    .line 3
    return-void
.end method

.method public getArrowImageHeightAndWidth(I)[I
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    const/16 v1, 0x20

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eq p1, v1, :cond_8d

    .line 10
    const/16 v1, 0x40

    .line 12
    if-eq p1, v1, :cond_7c

    .line 14
    packed-switch p1, :pswitch_data_9e

    .line 17
    packed-switch p1, :pswitch_data_a8

    .line 20
    goto/16 :goto_9d

    .line 22
    :pswitch_15  #0x12
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 27
    move-result p1

    .line 28
    aput p1, v0, v3

    .line 30
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 35
    move-result p1

    .line 36
    aput p1, v0, v2

    .line 38
    goto/16 :goto_9d

    .line 40
    :pswitch_27  #0x11
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 45
    move-result p1

    .line 46
    aput p1, v0, v3

    .line 48
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 53
    move-result p1

    .line 54
    aput p1, v0, v2

    .line 56
    goto :goto_9d

    .line 57
    :pswitch_38  #0x10
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 62
    move-result p1

    .line 63
    aput p1, v0, v3

    .line 65
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    .line 67
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 70
    move-result p1

    .line 71
    aput p1, v0, v2

    .line 73
    goto :goto_9d

    .line 74
    :pswitch_49  #0xa
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 79
    move-result p1

    .line 80
    aput p1, v0, v3

    .line 82
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 87
    move-result p1

    .line 88
    aput p1, v0, v2

    .line 90
    goto :goto_9d

    .line 91
    :pswitch_5a  #0x9
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 96
    move-result p1

    .line 97
    aput p1, v0, v3

    .line 99
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 104
    move-result p1

    .line 105
    aput p1, v0, v2

    .line 107
    goto :goto_9d

    .line 108
    :pswitch_6b  #0x8
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 113
    move-result p1

    .line 114
    aput p1, v0, v3

    .line 116
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 118
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 121
    move-result p1

    .line 122
    aput p1, v0, v2

    .line 124
    goto :goto_9d

    .line 125
    :cond_7c
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 130
    move-result p1

    .line 131
    aput p1, v0, v3

    .line 133
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    .line 135
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 138
    move-result p1

    .line 139
    aput p1, v0, v2

    .line 141
    goto :goto_9d

    .line 142
    :cond_8d
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    .line 144
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 147
    move-result p1

    .line 148
    aput p1, v0, v3

    .line 150
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    .line 152
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 155
    move-result p1

    .line 156
    aput p1, v0, v2

    .line 158
    :goto_9d
    return-object v0

    .line 159
    :pswitch_data_9e
    .packed-switch 0x8
        :pswitch_6b  #00000008
        :pswitch_5a  #00000009
        :pswitch_49  #0000000a
    .end packed-switch

    .line 169
    :pswitch_data_a8
    .packed-switch 0x10
        :pswitch_38  #00000010
        :pswitch_27  #00000011
        :pswitch_15  #00000012
    .end packed-switch
.end method

.method public getArrowMode()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 3
    return v0
.end method

.method public getContentFrameWrapperBottomPadding()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getContentFrameWrapperTopPadding()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_10

    .line 9
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method public getNegativeButton()Landroidx/appcompat/widget/AppCompatButton;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 3
    return-object v0
.end method

.method public getPositiveButton()Landroidx/appcompat/widget/AppCompatButton;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 3
    return-object v0
.end method

.method public getRollingPercent()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public getTitleHeight()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 9
    if-eq v0, v1, :cond_11

    .line 11
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public isTitleEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleText:Landroidx/appcompat/widget/AppCompatTextView;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 8
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 13
    move-result v1

    .line 14
    div-int/lit8 v1, v1, 0x2

    .line 16
    add-int/2addr v1, v0

    .line 17
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 19
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 24
    move-result v2

    .line 25
    div-int/lit8 v2, v2, 0x2

    .line 27
    add-int/2addr v2, v0

    .line 28
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 30
    const/16 v3, 0x40

    .line 32
    const/16 v4, 0x20

    .line 34
    const/16 v5, 0x10

    .line 36
    const/16 v6, 0x8

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    if-eq v0, v6, :cond_7c

    .line 42
    if-eq v0, v5, :cond_63

    .line 44
    if-eq v0, v4, :cond_4c

    .line 46
    if-eq v0, v3, :cond_33

    .line 48
    move v0, v7

    .line 49
    move v9, v8

    .line 50
    move v11, v9

    .line 51
    goto :goto_95

    .line 52
    :cond_33
    const/high16 v0, 0x42b40000  # 90.0f

    .line 54
    iget v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    .line 56
    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 58
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 61
    move-result v10

    .line 62
    div-int/lit8 v10, v10, 0x2

    .line 64
    add-int/2addr v10, v9

    .line 65
    iget v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 67
    sub-int v9, v10, v9

    .line 69
    iget-object v11, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 71
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    .line 74
    move-result v11

    .line 75
    sub-int/2addr v11, v10

    .line 76
    goto :goto_95

    .line 77
    :cond_4c
    const/high16 v0, -0x3d4c0000  # -90.0f

    .line 79
    iget v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    .line 81
    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 83
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 86
    move-result v10

    .line 87
    div-int/lit8 v10, v10, 0x2

    .line 89
    add-int/2addr v10, v9

    .line 90
    iget-object v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 92
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    .line 95
    move-result v9

    .line 96
    sub-int/2addr v9, v10

    .line 97
    iget v11, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 99
    goto :goto_79

    .line 100
    :cond_63
    const/high16 v0, 0x43340000  # 180.0f

    .line 102
    iget v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    .line 104
    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 106
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 109
    move-result v10

    .line 110
    div-int/lit8 v10, v10, 0x2

    .line 112
    add-int/2addr v10, v9

    .line 113
    iget-object v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 115
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    .line 118
    move-result v9

    .line 119
    sub-int/2addr v9, v10

    .line 120
    iget v11, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 122
    :goto_79
    sub-int v11, v10, v11

    .line 124
    goto :goto_95

    .line 125
    :cond_7c
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    .line 127
    iget-object v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 129
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 132
    move-result v9

    .line 133
    div-int/lit8 v9, v9, 0x2

    .line 135
    add-int/2addr v9, v0

    .line 136
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 138
    sub-int v0, v9, v0

    .line 140
    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 142
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    .line 145
    move-result v10

    .line 146
    sub-int v11, v10, v9

    .line 148
    move v9, v0

    .line 149
    move v0, v7

    .line 150
    :goto_95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 153
    move-result v10

    .line 154
    int-to-float v12, v1

    .line 155
    int-to-float v13, v2

    .line 156
    invoke-virtual {p1, v0, v12, v13}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 159
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 161
    if-eq v0, v6, :cond_f6

    .line 163
    if-eq v0, v5, :cond_f6

    .line 165
    if-eq v0, v4, :cond_aa

    .line 167
    if-eq v0, v3, :cond_aa

    .line 169
    goto/16 :goto_133

    .line 171
    :cond_aa
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 176
    move-result v0

    .line 177
    div-int/lit8 v0, v0, 0x2

    .line 179
    sub-int/2addr v1, v0

    .line 180
    int-to-float v0, v1

    .line 181
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 183
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 186
    move-result v1

    .line 187
    div-int/lit8 v1, v1, 0x2

    .line 189
    sub-int/2addr v2, v1

    .line 190
    int-to-float v1, v2

    .line 191
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 194
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    .line 196
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 198
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 201
    move-result v1

    .line 202
    invoke-virtual {v0, v8, v8, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 205
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isLeftMode()Z

    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_d5

    .line 211
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    .line 213
    goto :goto_d8

    .line 214
    :cond_d5
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    .line 216
    neg-int v0, v0

    .line 217
    :goto_d8
    int-to-float v0, v0

    .line 218
    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 221
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    .line 223
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 226
    int-to-float v0, v9

    .line 227
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 230
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    .line 232
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 234
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 237
    move-result v1

    .line 238
    invoke-virtual {v0, v8, v8, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 241
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    .line 243
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 246
    goto :goto_133

    .line 247
    :cond_f6
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 249
    int-to-float v0, v0

    .line 250
    iget v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 252
    int-to-float v1, v1

    .line 253
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    .line 258
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 260
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 263
    move-result v1

    .line 264
    invoke-virtual {v0, v8, v8, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isTopMode()Z

    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_113

    .line 273
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    .line 275
    goto :goto_116

    .line 276
    :cond_113
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    .line 278
    neg-int v0, v0

    .line 279
    :goto_116
    int-to-float v0, v0

    .line 280
    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 283
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    .line 285
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 288
    int-to-float v0, v9

    .line 289
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 292
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    .line 294
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 296
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 299
    move-result v1

    .line 300
    invoke-virtual {v0, v8, v8, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 303
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    .line 305
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 308
    :goto_133
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 311
    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    sget v0, Lmiuix/popupwidget/R$id;->popup_arrow:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 12
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 14
    const v0, 0x1020002

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/FrameLayout;

    .line 23
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    .line 25
    sget v0, Lmiuix/popupwidget/R$id;->content_wrapper:I

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/LinearLayout;

    .line 33
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 35
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v0

    .line 48
    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_view_min_height:I

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 56
    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 59
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    .line 61
    if-eqz v0, :cond_53

    .line 63
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    .line 65
    if-eqz v0, :cond_53

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    .line 69
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 72
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 77
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 79
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 81
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 84
    :cond_53
    sget v0, Lmiuix/popupwidget/R$id;->title_layout:I

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/LinearLayout;

    .line 92
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 94
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    const v0, 0x1020016

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleText:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    const v0, 0x102001a

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    .line 119
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 121
    const v0, 0x1020019

    .line 124
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    .line 130
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 132
    new-instance v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 134
    invoke-direct {v0, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    .line 137
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 139
    new-instance v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 141
    invoke-direct {v0, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    .line 144
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 146
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 148
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 155
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_16

    .line 9
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 11
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_15

    .line 17
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 19
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 22
    :cond_15
    return-void

    .line 23
    :cond_16
    iget p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 25
    if-nez p1, :cond_1d

    .line 27
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->adjustArrowMode()V

    .line 30
    :cond_1d
    iget p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 32
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->updateArrowDrawable(I)V

    .line 35
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->arrowLayout()V

    .line 38
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 9
    move-result v1

    .line 10
    float-to-int v1, v1

    .line 11
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTmpRect:Landroid/graphics/Rect;

    .line 13
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 15
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-nez v3, :cond_24

    .line 25
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_24

    .line 31
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 33
    invoke-virtual {p1, v4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 36
    return v4

    .line 37
    :cond_24
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 39
    if-eqz v0, :cond_2f

    .line 41
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2f

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    const/4 v4, 0x0

    .line 49
    :goto_30
    return v4
.end method

.method public setAnchor(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    .line 3
    return-void
.end method

.method public setArrowMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 3
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->updateArrowDrawable(I)V

    .line 6
    return-void
.end method

.method public setArrowPopupWindow(Lmiuix/popupwidget/widget/ArrowPopupWindow;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 3
    return-void
.end method

.method public setAutoDismiss(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    .line 3
    return-void
.end method

.method public setContentView(I)V
    .registers 4

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_c

    .line 3
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    return-void
.end method

.method public setLayoutRtlMode(I)V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-gt p1, v0, :cond_8

    .line 4
    if-ltz p1, :cond_8

    .line 6
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    iput v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    .line 11
    :goto_a
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_10

    .line 14
    const/16 p1, 0x8

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 23
    invoke-virtual {p1, p2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method

.method public setOffset(II)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetX:I

    .line 3
    iput p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    .line 5
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_10

    .line 14
    const/16 p1, 0x8

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 23
    invoke-virtual {p1, p2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method

.method public setRollingPercent(F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_b

    .line 9
    const/16 v1, 0x8

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v1, 0x0

    .line 13
    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleText:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 3
    return-void
.end method
