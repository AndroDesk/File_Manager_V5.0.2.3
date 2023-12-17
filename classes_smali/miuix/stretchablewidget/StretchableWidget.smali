.class public Lmiuix/stretchablewidget/StretchableWidget;
.super Landroid/widget/LinearLayout;
.source "StretchableWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/stretchablewidget/StretchableWidget$StretchableWidgetStateChangedListener;
    }
.end annotation


# static fields
.field private static final STATE_COLLAPSE:Ljava/lang/String; = "end"

.field private static final STATE_EXPAND:Ljava/lang/String; = "start"


# instance fields
.field private mButtonLine:Landroid/view/View;

.field private mContainer:Lmiuix/stretchablewidget/WidgetContainer;

.field private mContext:Landroid/content/Context;

.field private mDetailMsgResId:Ljava/lang/String;

.field public mDetailMsgText:Landroid/widget/TextView;

.field public mHeight:I

.field private mIcon:Landroid/widget/ImageView;

.field private mIconResId:I

.field private mIsExpand:Z

.field private mLayout:Landroid/view/View;

.field private mLayoutResId:I

.field private mStateImage:Landroid/widget/ImageView;

.field private mStretchableWidgetStateChangedListener:Lmiuix/stretchablewidget/StretchableWidget$StretchableWidgetStateChangedListener;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleResId:Ljava/lang/String;

.field private mTopLine:Landroid/view/View;

.field private mTopView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/stretchablewidget/StretchableWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/stretchablewidget/R$attr;->stretchableWidgetStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/stretchablewidget/StretchableWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mHeight:I

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    iput-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContext:Landroid/content/Context;

    .line 7
    sget-object v1, Lmiuix/stretchablewidget/R$styleable;->StretchableWidget:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 8
    sget v2, Lmiuix/stretchablewidget/R$styleable;->StretchableWidget_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTitleResId:Ljava/lang/String;

    .line 9
    sget v2, Lmiuix/stretchablewidget/R$styleable;->StretchableWidget_icon:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIconResId:I

    .line 10
    sget v2, Lmiuix/stretchablewidget/R$styleable;->StretchableWidget_layout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiuix/stretchablewidget/StretchableWidget;->mLayoutResId:I

    .line 11
    sget v2, Lmiuix/stretchablewidget/R$styleable;->StretchableWidget_detail_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiuix/stretchablewidget/StretchableWidget;->mDetailMsgResId:Ljava/lang/String;

    .line 12
    sget v2, Lmiuix/stretchablewidget/R$styleable;->StretchableWidget_expand_state:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIsExpand:Z

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lmiuix/stretchablewidget/StretchableWidget;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/stretchablewidget/StretchableWidget;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/stretchablewidget/StretchableWidget;->stateChangeAnim()V

    .line 4
    return-void
.end method

.method private inflaterView(I)Landroid/view/View;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    iget-object v1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContext:Landroid/content/Context;

    .line 7
    const-string v2, "layout_inflater"

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/view/LayoutInflater;

    .line 15
    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 1
    const-string v0, "layout_inflater"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/LayoutInflater;

    .line 9
    sget v0, Lmiuix/stretchablewidget/R$layout;->miuix_stretchable_widget_layout:I

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    sget v0, Lmiuix/stretchablewidget/R$id;->top_view:I

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 24
    iput-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTopView:Landroid/widget/RelativeLayout;

    .line 26
    sget v0, Lmiuix/stretchablewidget/R$id;->icon:I

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIcon:Landroid/widget/ImageView;

    .line 36
    sget v0, Lmiuix/stretchablewidget/R$id;->start_text:I

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTitle:Landroid/widget/TextView;

    .line 46
    sget v0, Lmiuix/stretchablewidget/R$id;->state_image:I

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/ImageView;

    .line 54
    iput-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mStateImage:Landroid/widget/ImageView;

    .line 56
    sget v0, Lmiuix/stretchablewidget/R$id;->detail_msg_text:I

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 64
    iput-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mDetailMsgText:Landroid/widget/TextView;

    .line 66
    sget v0, Lmiuix/stretchablewidget/R$id;->customize_container:I

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lmiuix/stretchablewidget/WidgetContainer;

    .line 74
    iput-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 76
    sget v0, Lmiuix/stretchablewidget/R$id;->button_line:I

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mButtonLine:Landroid/view/View;

    .line 84
    sget v0, Lmiuix/stretchablewidget/R$id;->top_line:I

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTopLine:Landroid/view/View;

    .line 92
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTitleResId:Ljava/lang/String;

    .line 94
    invoke-virtual {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/stretchablewidget/StretchableWidget;->preSetView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    iget p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mLayoutResId:I

    .line 104
    invoke-virtual {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setLayout(I)Landroid/view/View;

    .line 107
    iget p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIconResId:I

    .line 109
    invoke-virtual {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setIcon(I)V

    .line 112
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mDetailMsgResId:Ljava/lang/String;

    .line 114
    invoke-virtual {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setDetailMessage(Ljava/lang/CharSequence;)V

    .line 117
    iget-boolean p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIsExpand:Z

    .line 119
    invoke-virtual {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setState(Z)V

    .line 122
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTopView:Landroid/widget/RelativeLayout;

    .line 124
    new-instance p2, Lmiuix/stretchablewidget/StretchableWidget$1;

    .line 126
    invoke-direct {p2, p0}, Lmiuix/stretchablewidget/StretchableWidget$1;-><init>(Lmiuix/stretchablewidget/StretchableWidget;)V

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method private setContainerAmin(Z)V
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 9
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "start"

    .line 15
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 18
    move-result-object v1

    .line 19
    iget v4, p0, Lmiuix/stretchablewidget/StretchableWidget;->mHeight:I

    .line 21
    const-string v5, "widgetHeight"

    .line 23
    invoke-interface {v1, v5, v4}, Lmiuix/animation/IStateStyle;->add(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;

    .line 26
    move-result-object v1

    .line 27
    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 29
    const/high16 v6, 0x3f800000  # 1.0f

    .line 31
    invoke-interface {v1, v4, v6}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 34
    move-result-object v1

    .line 35
    const-string v6, "end"

    .line 37
    invoke-interface {v1, v6}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1, v5, v3}, Lmiuix/animation/IStateStyle;->add(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;

    .line 44
    move-result-object v1

    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-interface {v1, v4, v5}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 53
    aput-object v1, v0, v3

    .line 55
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 58
    move-result-object v0

    .line 59
    if-eqz p1, :cond_3d

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move-object v2, v6

    .line 63
    :goto_3e
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 66
    return-void
.end method

.method private stateChangeAnim()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIsExpand:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    iput-boolean v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIsExpand:Z

    .line 7
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 9
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 12
    const/4 v2, -0x2

    .line 13
    const/4 v3, 0x2

    .line 14
    new-array v3, v3, [F

    .line 16
    fill-array-data v3, :array_92

    .line 19
    invoke-virtual {v0, v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 25
    iget-boolean v2, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIsExpand:Z

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v2, :cond_52

    .line 31
    new-array v2, v1, [Ljava/lang/Object;

    .line 33
    iget-object v5, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 35
    aput-object v5, v2, v4

    .line 37
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 40
    move-result-object v2

    .line 41
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 43
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 45
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 48
    invoke-virtual {v5, v3}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    .line 51
    move-result-object v3

    .line 52
    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 54
    invoke-virtual {v3, v5, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 57
    move-result-object v0

    .line 58
    aput-object v0, v1, v4

    .line 60
    const-string v0, "start"

    .line 62
    invoke-interface {v2, v0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 65
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mStateImage:Landroid/widget/ImageView;

    .line 67
    sget v1, Lmiuix/stretchablewidget/R$drawable;->miuix_stretchable_widget_state_expand:I

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 72
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTopLine:Landroid/view/View;

    .line 74
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mButtonLine:Landroid/view/View;

    .line 79
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 82
    goto :goto_87

    .line 83
    :cond_52
    new-array v2, v1, [Ljava/lang/Object;

    .line 85
    iget-object v5, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 87
    aput-object v5, v2, v4

    .line 89
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 92
    move-result-object v2

    .line 93
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 95
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 97
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 100
    invoke-virtual {v5, v3}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    .line 103
    move-result-object v3

    .line 104
    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 106
    invoke-virtual {v3, v5, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 109
    move-result-object v0

    .line 110
    aput-object v0, v1, v4

    .line 112
    const-string v0, "end"

    .line 114
    invoke-interface {v2, v0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 117
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mStateImage:Landroid/widget/ImageView;

    .line 119
    sget v1, Lmiuix/stretchablewidget/R$drawable;->miuix_stretchable_widget_state_collapse:I

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 124
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTopLine:Landroid/view/View;

    .line 126
    const/16 v1, 0x8

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mButtonLine:Landroid/view/View;

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :goto_87
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mStretchableWidgetStateChangedListener:Lmiuix/stretchablewidget/StretchableWidget$StretchableWidgetStateChangedListener;

    .line 138
    if-eqz v0, :cond_90

    .line 140
    iget-boolean v1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIsExpand:Z

    .line 142
    invoke-interface {v0, v1}, Lmiuix/stretchablewidget/StretchableWidget$StretchableWidgetStateChangedListener;->stateChanged(Z)V

    .line 145
    :cond_90
    return-void

    .line 146
    nop

    .line 147
    :array_92
    .array-data 4
        0x3f800000  # 1.0f
        0x3e4ccccd  # 0.2f
    .end array-data
.end method


# virtual methods
.method public afterSetView()V
    .registers 1

    return-void
.end method

.method public getLayout()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mLayout:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public preSetView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    return-void
.end method

.method public setDetailMessage(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mDetailMsgText:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setIcon(I)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIcon:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    return-void
.end method

.method public setLayout(I)Landroid/view/View;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    invoke-direct {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->inflaterView(I)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setView(Landroid/view/View;)V

    return-object p1
.end method

.method public setLayout(Landroid/view/View;)V
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setView(Landroid/view/View;)V

    return-void
.end method

.method public setState(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_15

    .line 3
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mStateImage:Landroid/widget/ImageView;

    .line 5
    sget v1, Lmiuix/stretchablewidget/R$drawable;->miuix_stretchable_widget_state_expand:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 10
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTopLine:Landroid/view/View;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mButtonLine:Landroid/view/View;

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    goto :goto_28

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mStateImage:Landroid/widget/ImageView;

    .line 24
    sget v1, Lmiuix/stretchablewidget/R$drawable;->miuix_stretchable_widget_state_collapse:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTopLine:Landroid/view/View;

    .line 31
    const/16 v1, 0x8

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mButtonLine:Landroid/view/View;

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :goto_28
    invoke-direct {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setContainerAmin(Z)V

    .line 44
    return-void
.end method

.method public setStateChangedListener(Lmiuix/stretchablewidget/StretchableWidget$StretchableWidgetStateChangedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mStretchableWidgetStateChangedListener:Lmiuix/stretchablewidget/StretchableWidget$StretchableWidgetStateChangedListener;

    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTitle:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iput-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mLayout:Landroid/view/View;

    .line 6
    instance-of v0, p1, Lmiuix/stretchablewidget/TextProvider;

    .line 8
    if-eqz v0, :cond_14

    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Lmiuix/stretchablewidget/TextProvider;

    .line 13
    new-instance v1, Lmiuix/stretchablewidget/StretchableWidget$2;

    .line 15
    invoke-direct {v1, p0}, Lmiuix/stretchablewidget/StretchableWidget$2;-><init>(Lmiuix/stretchablewidget/StretchableWidget;)V

    .line 18
    invoke-interface {v0, v1}, Lmiuix/stretchablewidget/TextProvider;->setListener(Lmiuix/stretchablewidget/SyncDetailMessageListener;)V

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_22

    .line 29
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 31
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    goto :goto_2c

    .line 35
    :cond_22
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 37
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 40
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 42
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    :goto_2c
    const/4 v0, 0x0

    .line 46
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 49
    move-result v1

    .line 50
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mHeight:I

    .line 63
    invoke-virtual {p0}, Lmiuix/stretchablewidget/StretchableWidget;->afterSetView()V

    .line 66
    iget-boolean p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIsExpand:Z

    .line 68
    invoke-direct {p0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setContainerAmin(Z)V

    .line 71
    return-void
.end method
