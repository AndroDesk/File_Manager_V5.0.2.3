.class public Lmiuix/preference/StretchableWidgetPreference;
.super Landroidx/preference/Preference;
.source "StretchableWidgetPreference.java"


# static fields
.field private static final STATE_COLLAPSE:Ljava/lang/String; = "end"

.field private static final STATE_EXPAND:Ljava/lang/String; = "start"


# instance fields
.field private mButtonLine:Landroid/view/View;

.field private mContainer:Lmiuix/stretchablewidget/WidgetContainer;

.field private mDetailMsgResId:Ljava/lang/String;

.field private mDetailMsgView:Landroid/widget/TextView;

.field private mHeight:I

.field private mIsExpand:Z

.field private mStateImage:Landroid/widget/ImageView;

.field private mStretchableWidgetStateChangedListener:Lmiuix/stretchablewidget/StretchableWidget$StretchableWidgetStateChangedListener;

.field private mTitle:Landroid/widget/TextView;

.field private mTopLine:Landroid/view/View;

.field private mTopView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lmiuix/preference/StretchableWidgetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 7
    sget v0, Lmiuix/preference/R$attr;->stretchableWidgetPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/StretchableWidgetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mHeight:I

    .line 3
    sget-object v1, Lmiuix/preference/R$styleable;->StretchableWidgetPreference:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lmiuix/preference/R$styleable;->StretchableWidgetPreference_detail_message:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/StretchableWidgetPreference;->mDetailMsgResId:Ljava/lang/String;

    .line 5
    sget p2, Lmiuix/preference/R$styleable;->StretchableWidgetPreference_expand_state:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/preference/StretchableWidgetPreference;->mIsExpand:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/preference/StretchableWidgetPreference;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/preference/StretchableWidgetPreference;->stateChangeAnim()V

    .line 4
    return-void
.end method

.method private setContainerAmin(Z)V
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lmiuix/preference/StretchableWidgetPreference;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

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
    iget v4, p0, Lmiuix/preference/StretchableWidgetPreference;->mHeight:I

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
    iget-object v1, p0, Lmiuix/preference/StretchableWidgetPreference;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

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
    iget-boolean v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mIsExpand:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    iput-boolean v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mIsExpand:Z

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, -0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v0, :cond_50

    .line 13
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 15
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 18
    new-array v3, v3, [F

    .line 20
    fill-array-data v3, :array_a0

    .line 23
    invoke-virtual {v0, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 29
    new-array v3, v1, [Ljava/lang/Object;

    .line 31
    iget-object v4, p0, Lmiuix/preference/StretchableWidgetPreference;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 33
    aput-object v4, v3, v5

    .line 35
    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 38
    move-result-object v3

    .line 39
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 41
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 43
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 46
    invoke-virtual {v4, v2}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    .line 49
    move-result-object v2

    .line 50
    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 52
    invoke-virtual {v2, v4, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 55
    move-result-object v0

    .line 56
    aput-object v0, v1, v5

    .line 58
    const-string v0, "start"

    .line 60
    invoke-interface {v3, v0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 63
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mStateImage:Landroid/widget/ImageView;

    .line 65
    sget v1, Lmiuix/stretchablewidget/R$drawable;->miuix_stretchable_widget_state_expand:I

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mButtonLine:Landroid/view/View;

    .line 72
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mTopLine:Landroid/view/View;

    .line 77
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 80
    goto :goto_95

    .line 81
    :cond_50
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 83
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 86
    new-array v3, v3, [F

    .line 88
    fill-array-data v3, :array_a8

    .line 91
    invoke-virtual {v0, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 97
    new-array v3, v1, [Ljava/lang/Object;

    .line 99
    iget-object v4, p0, Lmiuix/preference/StretchableWidgetPreference;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 101
    aput-object v4, v3, v5

    .line 103
    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 106
    move-result-object v3

    .line 107
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 109
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 111
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 114
    invoke-virtual {v4, v2}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    .line 117
    move-result-object v2

    .line 118
    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 120
    invoke-virtual {v2, v4, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 123
    move-result-object v0

    .line 124
    aput-object v0, v1, v5

    .line 126
    const-string v0, "end"

    .line 128
    invoke-interface {v3, v0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 131
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mStateImage:Landroid/widget/ImageView;

    .line 133
    sget v1, Lmiuix/stretchablewidget/R$drawable;->miuix_stretchable_widget_state_collapse:I

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 138
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mButtonLine:Landroid/view/View;

    .line 140
    const/16 v1, 0x8

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mTopLine:Landroid/view/View;

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :goto_95
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mStretchableWidgetStateChangedListener:Lmiuix/stretchablewidget/StretchableWidget$StretchableWidgetStateChangedListener;

    .line 152
    if-eqz v0, :cond_9e

    .line 154
    iget-boolean v1, p0, Lmiuix/preference/StretchableWidgetPreference;->mIsExpand:Z

    .line 156
    invoke-interface {v0, v1}, Lmiuix/stretchablewidget/StretchableWidget$StretchableWidgetStateChangedListener;->stateChanged(Z)V

    .line 159
    :cond_9e
    return-void

    .line 160
    nop

    .line 161
    :array_a0
    .array-data 4
        0x3f800000  # 1.0f
        0x3e4ccccd  # 0.2f
    .end array-data

    .line 169
    :array_a8
    .array-data 4
        0x3f800000  # 1.0f
        0x3e4ccccd  # 0.2f
    .end array-data
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/h;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    sget v0, Lmiuix/preference/R$id;->top_view:I

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 14
    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mTopView:Landroid/widget/RelativeLayout;

    .line 16
    const v0, 0x1020018

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lmiuix/stretchablewidget/WidgetContainer;

    .line 25
    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 31
    move-result v2

    .line 32
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 39
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    move-result v0

    .line 45
    iput v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mHeight:I

    .line 47
    sget v0, Lmiuix/preference/R$id;->title:I

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mTitle:Landroid/widget/TextView;

    .line 57
    sget v0, Lmiuix/preference/R$id;->detail_msg_text:I

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mDetailMsgView:Landroid/widget/TextView;

    .line 67
    sget v0, Lmiuix/preference/R$id;->state_image:I

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/ImageView;

    .line 75
    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mStateImage:Landroid/widget/ImageView;

    .line 77
    sget v1, Lmiuix/preference/R$drawable;->miuix_stretchable_widget_state_collapse:I

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 82
    sget v0, Lmiuix/preference/R$id;->button_line:I

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mButtonLine:Landroid/view/View;

    .line 90
    sget v0, Lmiuix/preference/R$id;->top_line:I

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lmiuix/preference/StretchableWidgetPreference;->mTopLine:Landroid/view/View;

    .line 98
    iget-object p1, p0, Lmiuix/preference/StretchableWidgetPreference;->mDetailMsgResId:Ljava/lang/String;

    .line 100
    invoke-virtual {p0, p1}, Lmiuix/preference/StretchableWidgetPreference;->setDetailMsgText(Ljava/lang/String;)V

    .line 103
    iget-boolean p1, p0, Lmiuix/preference/StretchableWidgetPreference;->mIsExpand:Z

    .line 105
    invoke-virtual {p0, p1}, Lmiuix/preference/StretchableWidgetPreference;->setState(Z)V

    .line 108
    iget-object p1, p0, Lmiuix/preference/StretchableWidgetPreference;->mTopView:Landroid/widget/RelativeLayout;

    .line 110
    new-instance v0, Lmiuix/preference/StretchableWidgetPreference$1;

    .line 112
    invoke-direct {v0, p0}, Lmiuix/preference/StretchableWidgetPreference$1;-><init>(Lmiuix/preference/StretchableWidgetPreference;)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method public setDetailMsgText(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mDetailMsgView:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public setState(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_15

    .line 3
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mStateImage:Landroid/widget/ImageView;

    .line 5
    sget v1, Lmiuix/preference/R$drawable;->miuix_stretchable_widget_state_expand:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 10
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mButtonLine:Landroid/view/View;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mTopLine:Landroid/view/View;

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    goto :goto_28

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mStateImage:Landroid/widget/ImageView;

    .line 24
    sget v1, Lmiuix/preference/R$drawable;->miuix_stretchable_widget_state_collapse:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mButtonLine:Landroid/view/View;

    .line 31
    const/16 v1, 0x8

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mTopLine:Landroid/view/View;

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :goto_28
    invoke-direct {p0, p1}, Lmiuix/preference/StretchableWidgetPreference;->setContainerAmin(Z)V

    .line 44
    return-void
.end method

.method public setStateChangedListener(Lmiuix/stretchablewidget/StretchableWidget$StretchableWidgetStateChangedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/StretchableWidgetPreference;->mStretchableWidgetStateChangedListener:Lmiuix/stretchablewidget/StretchableWidget$StretchableWidgetStateChangedListener;

    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mTitle:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method
