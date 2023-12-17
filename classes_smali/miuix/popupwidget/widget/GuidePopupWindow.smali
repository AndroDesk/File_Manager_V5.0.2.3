.class public Lmiuix/popupwidget/widget/GuidePopupWindow;
.super Lmiuix/popupwidget/widget/ArrowPopupWindow;
.source "GuidePopupWindow.java"


# static fields
.field public static final ARROW_BOTTOM_LEFT_MODE:I

.field public static final ARROW_BOTTOM_MODE:I

.field public static final ARROW_BOTTOM_RIGHT_MODE:I

.field public static final ARROW_LEFT_MODE:I

.field public static final ARROW_RIGHT_MODE:I

.field public static final ARROW_TOP_LEFT_MODE:I

.field public static final ARROW_TOP_MODE:I

.field public static final ARROW_TOP_RIGHT_MODE:I

.field private static final DEFAULT_SHOW_DURATION:I


# instance fields
.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mGuideView:Landroid/widget/LinearLayout;

.field private mShowDuration:I

.field private mTextViewHeight:I

.field private mTextViewWidth:I

.field private mUseWrapContent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d84

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/widget/GuidePopupWindow;->ARROW_BOTTOM_LEFT_MODE:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/widget/GuidePopupWindow;->ARROW_BOTTOM_MODE:I

    const v0, 0x92d87

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/widget/GuidePopupWindow;->ARROW_BOTTOM_RIGHT_MODE:I

    const v0, 0x92db6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/widget/GuidePopupWindow;->ARROW_LEFT_MODE:I

    const v0, 0x92dd6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/widget/GuidePopupWindow;->ARROW_RIGHT_MODE:I

    const v0, 0x92d9f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/widget/GuidePopupWindow;->ARROW_TOP_LEFT_MODE:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/widget/GuidePopupWindow;->ARROW_TOP_MODE:I

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/widget/GuidePopupWindow;->ARROW_TOP_RIGHT_MODE:I

    const v0, 0x93e1e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/widget/GuidePopupWindow;->DEFAULT_SHOW_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    new-instance p1, Lmiuix/popupwidget/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow$1;-><init>(Lmiuix/popupwidget/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    new-instance p1, Lmiuix/popupwidget/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow$1;-><init>(Lmiuix/popupwidget/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    new-instance p1, Lmiuix/popupwidget/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow$1;-><init>(Lmiuix/popupwidget/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    new-instance p1, Lmiuix/popupwidget/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow$1;-><init>(Lmiuix/popupwidget/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private addGuideTextView(Ljava/lang/String;)V
    .registers 11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_68

    array-length v0, p1

    if-nez v0, :cond_13

    goto :goto_68

    :cond_13
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_22
    if-ge v3, v1, :cond_68

    aget-object v4, p1, v3

    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    sget v8, Lmiuix/popupwidget/R$attr;->guidePopupTextStyle:I

    invoke-direct {v5, v6, v7, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lmiuix/popupwidget/R$dimen;->miuix_popup_guide_text_view_max_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x5

    invoke-virtual {v5, v4}, Landroid/view/View;->setTextDirection(I)V

    invoke-direct {p0, v5, v0}, Lmiuix/popupwidget/widget/GuidePopupWindow;->getTextViewHeightAndWidth(Landroid/view/View;Landroid/graphics/Point;)[I

    move-result-object v4

    iget v6, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewHeight:I

    aget v7, v4, v2

    add-int/2addr v6, v7

    iput v6, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewHeight:I

    iget v6, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    const/4 v7, 0x1

    aget v4, v4, v7

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    iget-object v4, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mGuideView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_68
    :goto_68
    return-void
.end method

.method private getTextViewHeightAndWidth(Landroid/view/View;Landroid/graphics/Point;)[I
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p2, Landroid/graphics/Point;->x:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/4 p2, 0x1

    aput p1, v0, p2

    return-object v0
.end method

.method private showWithWrapContent(Landroid/view/View;)V
    .registers 15

    const/4 v0, -0x2

    invoke-super {p0, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setSuperHeight(I)V

    invoke-super {p0, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setSuperWidth(I)V

    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setAnchor(Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-object v5, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getArrowMode()I

    move-result v6

    invoke-virtual {v5, v6}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowImageHeightAndWidth(I)[I

    move-result-object v5

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_guide_popup_horizontal_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_guide_popup_vertical_padding:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_view_paddingStart:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_view_paddingTop:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_guide_popup_margin_horizontal:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getArrowMode()I

    move-result v11

    const/16 v12, 0x20

    if-eq v11, v12, :cond_d8

    const/16 v12, 0x40

    if-eq v11, v12, :cond_b1

    packed-switch v11, :pswitch_data_158

    packed-switch v11, :pswitch_data_162

    goto/16 :goto_ff

    :pswitch_7c  #0x11, 0x12
    iget v4, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewHeight:I

    aget v6, v5, v2

    goto :goto_92

    :pswitch_81  #0x10
    mul-int/2addr v8, v0

    mul-int/2addr v6, v0

    add-int/2addr v6, v8

    iget v4, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    add-int/2addr v6, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v6, v4

    div-int/2addr v6, v0

    sub-int/2addr v3, v6

    iget v4, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewHeight:I

    aget v6, v5, v2

    :goto_92
    add-int/2addr v4, v6

    add-int/2addr v4, v9

    add-int/2addr v4, v7

    :goto_95
    sub-int/2addr v1, v4

    goto/16 :goto_ff

    :pswitch_98  #0x9, 0xa
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    goto :goto_ae

    :pswitch_9d  #0x8
    mul-int/2addr v8, v0

    mul-int/2addr v6, v0

    add-int/2addr v6, v8

    iget v4, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    add-int/2addr v6, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v6, v4

    div-int/2addr v6, v0

    sub-int/2addr v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    :goto_ae
    sub-int/2addr v4, v9

    add-int/2addr v1, v4

    goto :goto_ff

    :cond_b1
    iget v11, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mRtlMode:I

    if-eq v11, v4, :cond_c8

    if-ne v11, v0, :cond_be

    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_be

    goto :goto_c8

    :cond_be
    mul-int/2addr v6, v0

    add-int/2addr v6, v8

    iget v8, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    add-int/2addr v6, v8

    aget v4, v5, v4

    add-int/2addr v6, v4

    sub-int/2addr v3, v6

    goto :goto_cf

    :cond_c8
    :goto_c8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v8

    add-int/2addr v4, v3

    move v3, v4

    :goto_cf
    aget v4, v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/2addr v4, v0

    goto :goto_95

    :cond_d8
    iget v11, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mRtlMode:I

    if-eq v11, v4, :cond_ed

    if-ne v11, v0, :cond_e5

    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_e5

    goto :goto_ed

    :cond_e5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v8

    add-int/2addr v4, v3

    move v3, v4

    goto :goto_f6

    :cond_ed
    :goto_ed
    mul-int/2addr v6, v0

    add-int/2addr v6, v8

    iget v8, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    add-int/2addr v6, v8

    aget v4, v5, v4

    add-int/2addr v6, v4

    sub-int/2addr v3, v6

    :goto_f6
    aget v4, v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/2addr v4, v0

    goto :goto_95

    :goto_ff
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget-object v6, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    sget v8, Lmiuix/popupwidget/R$id;->content_wrapper:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewHeight:I

    mul-int/lit8 v12, v11, 0x5

    aget v2, v5, v2

    add-int/2addr v12, v2

    mul-int/2addr v9, v0

    add-int/2addr v12, v9

    mul-int/2addr v7, v0

    add-int/2addr v12, v7

    if-lt v4, v12, :cond_131

    mul-int/lit8 v2, v11, 0x2

    mul-int/2addr v11, v0

    invoke-virtual {v8, v10, v2, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_139

    :cond_131
    sub-int/2addr v4, v11

    sub-int/2addr v4, v2

    sub-int/2addr v4, v9

    sub-int/2addr v4, v7

    div-int/2addr v4, v0

    invoke-virtual {v8, v10, v4, v10, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_139
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x800033

    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v2

    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v3, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getAutoDismiss()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setAutoDismiss(Z)V

    iget-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->animateToShow()V

    return-void

    nop

    :pswitch_data_158
    .packed-switch 0x8
        :pswitch_9d  #00000008
        :pswitch_98  #00000009
        :pswitch_98  #0000000a
    .end packed-switch

    :pswitch_data_162
    .packed-switch 0x10
        :pswitch_81  #00000010
        :pswitch_7c  #00000011
        :pswitch_7c  #00000012
    .end packed-switch
.end method


# virtual methods
.method public onPrepareWindow()V
    .registers 5

    invoke-super {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->onPrepareWindow()V

    const/16 v0, 0x1388

    iput v0, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mShowDuration:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$layout;->miuix_appcompat_guide_popup_content_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mGuideView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->enableShowingAnimation(Z)V

    return-void
.end method

.method public setGuideText(I)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->setGuideText(Ljava/lang/String;)V

    return-void
.end method

.method public setGuideText(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->addGuideTextView(Ljava/lang/String;)V

    return-void
.end method

.method public setOffset(II)V
    .registers 4

    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setOffset(II)V

    return-void
.end method

.method public setShowDuration(I)V
    .registers 2

    iput p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mShowDuration:I

    return-void
.end method

.method public setWrapContent(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mUseWrapContent:Z

    return-void
.end method

.method public show(Landroid/view/View;II)V
    .registers 5

    iget-boolean v0, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mUseWrapContent:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->showWithWrapContent(Landroid/view/View;)V

    goto :goto_b

    :cond_8
    invoke-super {p0, p1, p2, p3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    :goto_b
    return-void
.end method

.method public show(Landroid/view/View;IIZ)V
    .registers 7

    invoke-virtual {p0, p4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setAutoDismiss(Z)V

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;II)V

    if-eqz p4, :cond_12

    iget-object p2, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    iget-object p3, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    iget p4, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mShowDuration:I

    int-to-long v0, p4

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    const-string p2, "2.0"

    invoke-static {p2}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1b

    goto :goto_20

    :cond_1b
    sget p2, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    invoke-static {p1, p2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :goto_20
    return-void
.end method

.method public show(Landroid/view/View;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    return-void
.end method
