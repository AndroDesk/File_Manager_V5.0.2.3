.class public Lmiuix/popupwidget/widget/ArrowPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ArrowPopupWindow.java"


# static fields
.field public static final ARROW_BOTTOM_LEFT_MODE:I = 0x12

.field public static final ARROW_BOTTOM_MODE:I = 0x10

.field public static final ARROW_BOTTOM_RIGHT_MODE:I = 0x11

.field public static final ARROW_LEFT_MODE:I = 0x20

.field public static final ARROW_RIGHT_MODE:I = 0x40

.field public static final ARROW_TOP_LEFT_MODE:I = 0x9

.field public static final ARROW_TOP_MODE:I = 0x8

.field public static final ARROW_TOP_RIGHT_MODE:I = 0xa

.field public static final LAYOUT_MODE_LTR:I = 0x0

.field public static final LAYOUT_MODE_RTL:I = 0x1

.field public static final LAYOUT_MODE_UNSPECIFIED:I = 0x2


# instance fields
.field public mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

.field private mAutoDismiss:Z

.field private mContext:Landroid/content/Context;

.field private mListViewMaxHeight:I

.field private mMaxAvailableHeight:I

.field public mRtlMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x2

    .line 5
    iput p2, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mRtlMode:I

    .line 6
    iput-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mAutoDismiss:Z

    .line 8
    invoke-direct {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setupPopupWindow()V

    .line 9
    iget-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    iget p2, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mRtlMode:I

    invoke-virtual {p1, p2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setLayoutRtlMode(I)V

    return-void
.end method

.method private setupPopupWindow()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_window_list_max_height:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mListViewMaxHeight:I

    .line 15
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 18
    move-result-object v0

    .line 19
    sget v1, Lmiuix/popupwidget/R$layout;->miuix_appcompat_arrow_popup_view:I

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 29
    iput-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 31
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 34
    const/4 v0, -0x1

    .line 35
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 38
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 41
    const/4 v0, 0x3

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 45
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 47
    invoke-virtual {v0, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setArrowPopupWindow(Lmiuix/popupwidget/widget/ArrowPopupWindow;)V

    .line 50
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;

    .line 53
    move-result-object v0

    .line 54
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 57
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 59
    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->addShadow()V

    .line 62
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->onPrepareWindow()V

    .line 65
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    .line 68
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_8

    .line 3
    iget-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 5
    invoke-virtual {p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->animateToDismiss()V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 12
    :goto_b
    return-void
.end method

.method public getArrowMode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowMode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getAutoDismiss()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mAutoDismiss:Z

    .line 3
    return v0
.end method

.method public getContentHeight()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getContentWidth()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentHeight()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMaxAvailableHeight(II)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getArrowMode()I

    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_14

    .line 8
    packed-switch v0, :pswitch_data_1e

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 14
    move-result p1

    .line 15
    goto :goto_10

    .line 16
    :pswitch_f  #0x10, 0x11, 0x12
    move p1, p2

    .line 17
    :goto_10
    :pswitch_10  #0x8, 0x9, 0xa
    iput p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mMaxAvailableHeight:I

    .line 19
    return p1

    .line 20
    nop

    .line 21
    :pswitch_data_14
    .packed-switch 0x8
        :pswitch_10  #00000008
        :pswitch_10  #00000009
        :pswitch_10  #0000000a
    .end packed-switch

    .line 31
    :pswitch_data_1e
    .packed-switch 0x10
        :pswitch_f  #00000010
        :pswitch_f  #00000011
        :pswitch_f  #00000012
    .end packed-switch
.end method

.method public getNegativeButton()Landroidx/appcompat/widget/AppCompatButton;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getNegativeButton()Landroidx/appcompat/widget/AppCompatButton;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPositiveButton()Landroidx/appcompat/widget/AppCompatButton;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getPositiveButton()Landroidx/appcompat/widget/AppCompatButton;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentWidth()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onPrepareWindow()V
    .registers 1

    return-void
.end method

.method public setArrowMode(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setArrowMode(I)V

    .line 6
    return-void
.end method

.method public setAutoDismiss(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mAutoDismiss:Z

    .line 3
    return-void
.end method

.method public setContentHeight(I)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mMaxAvailableHeight:I

    .line 3
    if-ne p1, v0, :cond_12

    .line 5
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 7
    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentFrameWrapperBottomPadding()I

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 13
    invoke-virtual {v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentFrameWrapperTopPadding()I

    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    sub-int/2addr p1, v1

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 21
    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isTitleEmpty()Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_21

    .line 27
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 29
    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getTitleHeight()I

    .line 32
    move-result v0

    .line 33
    sub-int/2addr p1, v0

    .line 34
    :cond_21
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    instance-of v1, v0, Landroid/widget/ListView;

    .line 40
    if-eqz v1, :cond_2e

    .line 42
    iget v1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mListViewMaxHeight:I

    .line 44
    if-le p1, v1, :cond_2e

    .line 46
    move p1, v1

    .line 47
    :cond_2e
    if-eqz v0, :cond_39

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    move-result-object v1

    .line 53
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    :cond_39
    return-void
.end method

.method public final setContentView(I)V
    .registers 3

    .line 3
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentWidth(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object v1

    .line 11
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    :cond_f
    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentHeight(I)V

    .line 4
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
    iput p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mRtlMode:I

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    iput v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mRtlMode:I

    .line 11
    :goto_a
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 13
    invoke-virtual {v0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setLayoutRtlMode(I)V

    .line 16
    return-void
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSuperHeight(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4
    return-void
.end method

.method public setSuperWidth(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4
    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 6
    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentWidth(I)V

    .line 4
    return-void
.end method

.method public show(Landroid/view/View;II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setAnchor(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 8
    invoke-virtual {v0, p2, p3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setOffset(II)V

    .line 11
    const p2, 0x800033

    .line 14
    const/4 p3, 0x0

    .line 15
    invoke-virtual {p0, p1, p2, p3, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 18
    iget-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 20
    iget-boolean p2, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mAutoDismiss:Z

    .line 22
    invoke-virtual {p1, p2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setAutoDismiss(Z)V

    .line 25
    iget-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 27
    invoke-virtual {p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->animateToShow()V

    .line 30
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .registers 5

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    return-void
.end method

.method public update(IIIIZ)V
    .registers 12

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    const/4 v3, -0x2

    .line 4
    const/4 v4, -0x2

    .line 5
    move-object v0, p0

    .line 6
    move v5, p5

    .line 7
    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 10
    invoke-virtual {p0, p4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentHeight(I)V

    .line 13
    return-void
.end method
