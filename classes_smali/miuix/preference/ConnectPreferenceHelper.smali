.class public Lmiuix/preference/ConnectPreferenceHelper;
.super Ljava/lang/Object;
.source "ConnectPreferenceHelper.java"


# static fields
.field public static final BACKGROUND_ANIM_FACTOR:F = 1.5f

.field public static final BACKGROUND_ANIM_TIME:I = 0x12c

.field private static final STATE_ATTR_CONNECTED:[I

.field private static final STATE_ATTR_DISCONNECTED:[I

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ConnectPreferenceHelper"


# instance fields
.field private bgDrawableConnected:Landroid/graphics/drawable/Drawable;

.field private bgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

.field private connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private iconColorList:Landroid/content/res/ColorStateList;

.field private mContext:Landroid/content/Context;

.field private mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

.field private mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

.field private mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

.field private mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

.field private mIconAnimEnabled:Z

.field private mLastState:I

.field private mPreference:Landroidx/preference/Preference;

.field private mState:I

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mWidgetView:Landroid/view/View;

.field private summaryColorList:Landroid/content/res/ColorStateList;

.field private titleColorList:Landroid/content/res/ColorStateList;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 4
    sget v2, Lmiuix/preference/R$attr;->state_connected:I

    .line 6
    const/4 v3, 0x0

    .line 7
    aput v2, v1, v3

    .line 9
    sput-object v1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    .line 11
    new-array v0, v0, [I

    .line 13
    neg-int v1, v2

    .line 14
    aput v1, v0, v3

    .line 16
    sput-object v0, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/Preference;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    .line 7
    iput v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    .line 12
    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    .line 16
    sget p2, Lmiuix/preference/R$color;->miuix_preference_connect_title_color:I

    .line 18
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    .line 24
    sget p2, Lmiuix/preference/R$color;->miuix_preference_connect_summary_color:I

    .line 26
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    .line 32
    sget p2, Lmiuix/preference/R$color;->miuix_preference_connect_icon_color:I

    .line 34
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    .line 40
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->initAnim(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public static synthetic access$000(Lmiuix/preference/ConnectPreferenceHelper;)Landroidx/preference/Preference;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/preference/ConnectPreferenceHelper;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mTitleView:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mSummaryView:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 3
    return-object p0
.end method

.method private initAnim(Landroid/content/Context;)V
    .registers 12

    .line 1
    sget v0, Lmiuix/preference/R$drawable;->miuix_preference_ic_bg_connect:I

    .line 3
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 9
    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

    .line 11
    if-nez p1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    sget v0, Lmiuix/preference/R$id;->anim_preference_connecting:I

    .line 16
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 22
    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 24
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

    .line 26
    sget v0, Lmiuix/preference/R$id;->shape_preference_connected:I

    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    .line 34
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    .line 36
    sget-object v0, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    .line 38
    sget v1, Lmiuix/preference/R$color;->miuix_preference_connect_title_disconnected_color:I

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 43
    move-result p1

    .line 44
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    .line 46
    sget-object v2, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    .line 48
    sget v3, Lmiuix/preference/R$color;->miuix_preference_connect_title_connected_color:I

    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 53
    move-result v1

    .line 54
    iget-object v3, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    .line 56
    sget v4, Lmiuix/preference/R$color;->miuix_preference_connect_summary_disconnected_color:I

    .line 58
    invoke-virtual {v3, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 61
    move-result v3

    .line 62
    iget-object v4, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    .line 64
    sget v5, Lmiuix/preference/R$color;->miuix_preference_connect_summary_connected_color:I

    .line 66
    invoke-virtual {v4, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 69
    move-result v4

    .line 70
    iget-object v5, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    .line 72
    sget v6, Lmiuix/preference/R$color;->miuix_preference_connect_icon_disconnected_color:I

    .line 74
    invoke-virtual {v5, v0, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 77
    move-result v0

    .line 78
    iget-object v5, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    .line 80
    sget v6, Lmiuix/preference/R$color;->miuix_preference_connect_icon_connected_color:I

    .line 82
    invoke-virtual {v5, v2, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 85
    move-result v2

    .line 86
    const/4 v5, 0x2

    .line 87
    new-array v6, v5, [I

    .line 89
    const/4 v7, 0x0

    .line 90
    aput v0, v6, v7

    .line 92
    const/4 v0, 0x1

    .line 93
    aput v2, v6, v0

    .line 95
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    .line 98
    move-result-object v2

    .line 99
    iput-object v2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    .line 101
    const-wide/16 v8, 0x12c

    .line 103
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 106
    iget-object v2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    .line 108
    new-instance v6, Lmiuix/preference/ConnectPreferenceHelper$1;

    .line 110
    invoke-direct {v6, p0}, Lmiuix/preference/ConnectPreferenceHelper$1;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    .line 113
    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 116
    new-array v2, v5, [I

    .line 118
    aput p1, v2, v7

    .line 120
    aput v1, v2, v0

    .line 122
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    .line 125
    move-result-object p1

    .line 126
    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    .line 128
    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 131
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    .line 133
    new-instance v1, Lmiuix/preference/ConnectPreferenceHelper$2;

    .line 135
    invoke-direct {v1, p0}, Lmiuix/preference/ConnectPreferenceHelper$2;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    .line 138
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 141
    new-array p1, v5, [I

    .line 143
    aput v3, p1, v7

    .line 145
    aput v4, p1, v0

    .line 147
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    .line 150
    move-result-object p1

    .line 151
    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    .line 153
    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 156
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    .line 158
    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper$3;

    .line 160
    invoke-direct {v0, p0}, Lmiuix/preference/ConnectPreferenceHelper$3;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    .line 163
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 166
    new-array p1, v5, [I

    .line 168
    fill-array-data p1, :array_c8

    .line 171
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 174
    move-result-object p1

    .line 175
    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    .line 177
    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 180
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    .line 182
    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper$4;

    .line 184
    invoke-direct {v0, p0}, Lmiuix/preference/ConnectPreferenceHelper$4;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    .line 187
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 190
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    .line 192
    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper$5;

    .line 194
    invoke-direct {v0, p0}, Lmiuix/preference/ConnectPreferenceHelper$5;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    .line 197
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    return-void

    .line 201
    :array_c8
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private static setAlphaFolme(Landroid/view/View;)V
    .registers 6

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [Landroid/view/View;

    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object p0, v1, v2

    .line 10
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 17
    move-result-object v1

    .line 18
    const v3, 0x3f19999a  # 0.6f

    .line 21
    new-array v0, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 23
    sget-object v4, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 25
    aput-object v4, v0, v2

    .line 27
    invoke-interface {v1, v3, v0}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 30
    move-result-object v0

    .line 31
    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    .line 33
    invoke-interface {v0, p0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 36
    return-void
.end method

.method private startConnectedToDisConnectedAnim()V
    .registers 3

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 3
    const/high16 v1, 0x3fc00000  # 1.5f

    .line 5
    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 8
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    .line 10
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_14

    .line 16
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    .line 18
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 21
    :cond_14
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    .line 23
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    .line 28
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 31
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    .line 33
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2b

    .line 39
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    .line 41
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 44
    :cond_2b
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    .line 46
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    .line 51
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 54
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    .line 56
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_42

    .line 62
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    .line 64
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 67
    :cond_42
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    .line 69
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    .line 74
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 77
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    .line 79
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_59

    .line 85
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    .line 87
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 90
    :cond_59
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    .line 92
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    .line 97
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 100
    return-void
.end method

.method private startDisConnectedToConnectedAnim()V
    .registers 3

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 3
    const/high16 v1, 0x3fc00000  # 1.5f

    .line 5
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 8
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    .line 10
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_14

    .line 16
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    .line 18
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 21
    :cond_14
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    .line 23
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    .line 28
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 31
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    .line 33
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2b

    .line 39
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    .line 41
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 44
    :cond_2b
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    .line 46
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    .line 51
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 54
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    .line 56
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_42

    .line 62
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    .line 64
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 67
    :cond_42
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    .line 69
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    .line 74
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 77
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    .line 79
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_59

    .line 85
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    .line 87
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 90
    :cond_59
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    .line 92
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    .line 97
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 100
    return-void
.end method

.method private updateState(Z)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    .line 3
    if-eqz v0, :cond_13

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_f

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_b

    .line 11
    goto :goto_16

    .line 12
    :cond_b
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateStateConnecting(Z)V

    .line 15
    goto :goto_16

    .line 16
    :cond_f
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateStateConnected(Z)V

    .line 19
    goto :goto_16

    .line 20
    :cond_13
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateStateDisconnected(Z)V

    .line 23
    :goto_16
    return-void
.end method

.method private updateStateConnected(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_6

    .line 3
    invoke-direct {p0}, Lmiuix/preference/ConnectPreferenceHelper;->startDisConnectedToConnectedAnim()V

    .line 6
    goto :goto_12

    .line 7
    :cond_6
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    .line 9
    const/16 v0, 0xff

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 14
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    .line 16
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateViewColorList([I)V

    .line 19
    :goto_12
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    .line 21
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateWidgetDrawable([I)V

    .line 24
    return-void
.end method

.method private updateStateConnecting(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 9
    if-eqz v0, :cond_1c

    .line 11
    const/16 v1, 0xff

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAlpha(I)V

    .line 16
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 18
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1c

    .line 24
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 29
    :cond_1c
    if-nez p1, :cond_23

    .line 31
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    .line 33
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateViewColorList([I)V

    .line 36
    :cond_23
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    .line 38
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateWidgetDrawable([I)V

    .line 41
    return-void
.end method

.method private updateStateDisconnected(Z)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1f

    .line 4
    iget p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p1, v1, :cond_c

    .line 9
    invoke-direct {p0}, Lmiuix/preference/ConnectPreferenceHelper;->startConnectedToDisConnectedAnim()V

    .line 12
    goto :goto_29

    .line 13
    :cond_c
    const/4 v1, 0x2

    .line 14
    if-ne p1, v1, :cond_29

    .line 16
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 18
    if-eqz p1, :cond_29

    .line 20
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_29

    .line 26
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 28
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 31
    goto :goto_29

    .line 32
    :cond_1f
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 37
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    .line 39
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateViewColorList([I)V

    .line 42
    :cond_29
    :goto_29
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 44
    if-eqz p1, :cond_30

    .line 46
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAlpha(I)V

    .line 49
    :cond_30
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    .line 51
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateWidgetDrawable([I)V

    .line 54
    return-void
.end method

.method private updateViewColorList([I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    .line 3
    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_17

    .line 9
    iget-boolean v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    .line 11
    if-eqz v1, :cond_17

    .line 13
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    .line 15
    sget v2, Lmiuix/preference/R$color;->miuix_preference_connect_icon_disconnected_color:I

    .line 17
    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 20
    move-result v1

    .line 21
    invoke-static {v0, v1}, Lg0/a$b;->g(Landroid/graphics/drawable/Drawable;I)V

    .line 24
    :cond_17
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mTitleView:Landroid/widget/TextView;

    .line 26
    if-eqz v0, :cond_26

    .line 28
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    .line 30
    sget v2, Lmiuix/preference/R$color;->miuix_preference_connect_title_disconnected_color:I

    .line 32
    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    :cond_26
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mSummaryView:Landroid/widget/TextView;

    .line 41
    if-eqz v0, :cond_35

    .line 43
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    .line 45
    sget v2, Lmiuix/preference/R$color;->miuix_preference_connect_summary_disconnected_color:I

    .line 47
    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 50
    move-result p1

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    :cond_35
    return-void
.end method

.method private updateWidgetDrawable([I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mWidgetView:Landroid/view/View;

    .line 3
    instance-of v1, v0, Landroid/widget/ImageView;

    .line 5
    if-eqz v1, :cond_38

    .line 7
    sget-object v1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    .line 9
    if-ne p1, v1, :cond_18

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 13
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    .line 15
    sget v1, Lmiuix/preference/R$drawable;->miuix_preference_ic_detail_connected:I

    .line 17
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    goto :goto_38

    .line 25
    :cond_18
    new-instance p1, Landroid/util/TypedValue;

    .line 27
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 30
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 35
    move-result-object v0

    .line 36
    sget v1, Lmiuix/preference/R$attr;->connectDetailDisconnectedDrawable:I

    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 42
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mWidgetView:Landroid/view/View;

    .line 44
    check-cast v0, Landroid/widget/ImageView;

    .line 46
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    .line 48
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    .line 50
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_38
    :goto_38
    return-void
.end method


# virtual methods
.method public getConnectState()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    .line 3
    return v0
.end method

.method public initConnectState(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    .line 3
    iput v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    .line 5
    iput p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    .line 7
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;Landroid/view/View;)V
    .registers 4

    .line 1
    if-eqz p2, :cond_51

    .line 3
    if-nez p1, :cond_5

    .line 5
    goto :goto_51

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17
    const p2, 0x1020016

    .line 20
    invoke-virtual {p1, p2}, Landroidx/preference/h;->a(I)Landroid/view/View;

    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/widget/TextView;

    .line 26
    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mTitleView:Landroid/widget/TextView;

    .line 28
    const p2, 0x1020010

    .line 31
    invoke-virtual {p1, p2}, Landroidx/preference/h;->a(I)Landroid/view/View;

    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Landroid/widget/TextView;

    .line 37
    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mSummaryView:Landroid/widget/TextView;

    .line 39
    sget p2, Lmiuix/preference/R$id;->preference_detail:I

    .line 41
    invoke-virtual {p1, p2}, Landroidx/preference/h;->a(I)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mWidgetView:Landroid/view/View;

    .line 47
    invoke-static {p1}, Lmiuix/preference/ConnectPreferenceHelper;->setAlphaFolme(Landroid/view/View;)V

    .line 50
    iget p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    .line 52
    const/4 p2, -0x1

    .line 53
    const/4 v0, 0x0

    .line 54
    if-ne p1, p2, :cond_4e

    .line 56
    iget p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    .line 58
    if-ne p1, p2, :cond_42

    .line 60
    invoke-virtual {p0, v0}, Lmiuix/preference/ConnectPreferenceHelper;->initConnectState(I)V

    .line 63
    invoke-direct {p0, v0}, Lmiuix/preference/ConnectPreferenceHelper;->updateState(Z)V

    .line 66
    goto :goto_51

    .line 67
    :cond_42
    const/4 p2, 0x2

    .line 68
    if-eq p1, p2, :cond_49

    .line 70
    invoke-direct {p0, v0}, Lmiuix/preference/ConnectPreferenceHelper;->updateState(Z)V

    .line 73
    goto :goto_51

    .line 74
    :cond_49
    const/4 p1, 0x1

    .line 75
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateState(Z)V

    .line 78
    goto :goto_51

    .line 79
    :cond_4e
    invoke-direct {p0, v0}, Lmiuix/preference/ConnectPreferenceHelper;->updateState(Z)V

    .line 82
    :cond_51
    :goto_51
    return-void
.end method

.method public setConnectState(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    .line 3
    iput v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    .line 5
    iput p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateState(Z)V

    .line 11
    return-void
.end method

.method public setIconAnimEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    .line 3
    return-void
.end method
