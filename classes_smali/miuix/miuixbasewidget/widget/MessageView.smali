.class public Lmiuix/miuixbasewidget/widget/MessageView;
.super Landroid/widget/LinearLayout;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;
    }
.end annotation


# instance fields
.field private mClosable:Z

.field private mCloseBackground:Landroid/graphics/drawable/Drawable;

.field private mCloseIndex:I

.field private mOnMessageViewCloseListener:Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/MessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/miuixbasewidget/widget/MessageView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/miuixbasewidget/widget/MessageView;)Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mOnMessageViewCloseListener:Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;

    .line 3
    return-object p0
.end method

.method private addCloseIcon()V
    .registers 5

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 12
    const/4 v2, -0x2

    .line 13
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v2

    .line 20
    sget v3, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_message_view_text_margin_right:I

    .line 22
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 29
    sget v2, Lmiuix/miuixbasewidget/R$id;->close:I

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 34
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mCloseBackground:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v2

    .line 47
    sget v3, Lmiuix/miuixbasewidget/R$string;->close:I

    .line 49
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v2, Lmiuix/miuixbasewidget/widget/MessageView$1;

    .line 58
    invoke-direct {v2, p0}, Lmiuix/miuixbasewidget/widget/MessageView$1;-><init>(Lmiuix/miuixbasewidget/widget/MessageView;)V

    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    const/4 v1, 0x1

    .line 68
    new-array v1, v1, [Landroid/view/View;

    .line 70
    const/4 v2, 0x0

    .line 71
    aput-object v0, v1, v2

    .line 73
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 80
    move-result-object v1

    .line 81
    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    .line 83
    invoke-interface {v1, v0, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 86
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .line 1
    sget-object v0, Lmiuix/miuixbasewidget/R$styleable;->MessageView:[I

    .line 3
    sget v1, Lmiuix/miuixbasewidget/R$style;->Widget_MessageView:I

    .line 5
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 8
    move-result-object p2

    .line 9
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->MessageView_android_text:I

    .line 11
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object p3

    .line 15
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->MessageView_android_textColor:I

    .line 17
    sget v1, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_message_view_text_color_light:I

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 22
    move-result v0

    .line 23
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 26
    move-result-object v0

    .line 27
    sget v1, Lmiuix/miuixbasewidget/R$styleable;->MessageView_closeBackground:I

    .line 29
    sget v2, Lmiuix/miuixbasewidget/R$drawable;->miuix_appcompat_ic_message_view_close_guide_light:I

    .line 31
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 34
    move-result v1

    .line 35
    invoke-static {p1, v1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mCloseBackground:Landroid/graphics/drawable/Drawable;

    .line 41
    sget p1, Lmiuix/miuixbasewidget/R$styleable;->MessageView_closable:I

    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 47
    move-result p1

    .line 48
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    new-instance p2, Landroid/widget/TextView;

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v2

    .line 57
    invoke-direct {p2, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    .line 62
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    const/4 v2, -0x1

    .line 65
    const/4 v3, -0x2

    .line 66
    invoke-direct {p2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    const/high16 v2, 0x3f800000  # 1.0f

    .line 71
    iput v2, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 73
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    .line 75
    const v4, 0x1020014

    .line 78
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 81
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 86
    move-result-object v4

    .line 87
    sget v5, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_message_view_text_padding_start:I

    .line 89
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 92
    move-result v4

    .line 93
    const/4 v5, 0x0

    .line 94
    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 97
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    .line 99
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 107
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 112
    move-result-object v0

    .line 113
    sget v3, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_message_view_text_size:I

    .line 115
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 118
    move-result v0

    .line 119
    int-to-float v0, v0

    .line 120
    invoke-virtual {p3, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 123
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    .line 125
    const/4 v0, 0x5

    .line 126
    invoke-virtual {p3, v0}, Landroid/view/View;->setTextDirection(I)V

    .line 129
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    .line 131
    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/MessageView;->setClosable(Z)V

    .line 137
    const/16 p1, 0x10

    .line 139
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 142
    new-array p1, v1, [Landroid/view/View;

    .line 144
    aput-object p0, p1, v5

    .line 146
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 153
    move-result-object p1

    .line 154
    invoke-interface {p1, v5}, Lmiuix/animation/ITouchStyle;->setTintMode(I)Lmiuix/animation/ITouchStyle;

    .line 157
    move-result-object p1

    .line 158
    new-array p2, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 160
    invoke-interface {p1, v2, p2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 163
    move-result-object p1

    .line 164
    new-array p2, v5, [Lmiuix/animation/base/AnimConfig;

    .line 166
    invoke-interface {p1, p0, p2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 169
    new-array p1, v1, [Landroid/view/View;

    .line 171
    aput-object p0, p1, v5

    .line 173
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 176
    move-result-object p1

    .line 177
    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 180
    move-result-object p1

    .line 181
    sget-object p2, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 183
    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 186
    move-result-object p1

    .line 187
    new-array p2, v5, [Lmiuix/animation/base/AnimConfig;

    .line 189
    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 192
    return-void
.end method


# virtual methods
.method public setClosable(Z)V
    .registers 3

    .line 1
    sget v0, Lmiuix/miuixbasewidget/R$id;->close:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    if-eqz p1, :cond_e

    .line 9
    if-nez v0, :cond_13

    .line 11
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/MessageView;->addCloseIcon()V

    .line 14
    goto :goto_13

    .line 15
    :cond_e
    if-eqz v0, :cond_13

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    :cond_13
    :goto_13
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public setOnMessageViewCloseListener(Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mOnMessageViewCloseListener:Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;

    .line 3
    return-void
.end method
