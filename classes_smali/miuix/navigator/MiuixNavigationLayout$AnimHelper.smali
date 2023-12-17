.class public Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;
.super Ljava/lang/Object;
.source "MiuixNavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/MiuixNavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimHelper"
.end annotation


# static fields
.field private static final CONTENT_RATIO:Ljava/lang/String; = "contentRatio"

.field private static final CONTENT_SWITCH_ALPHA:Ljava/lang/String; = "contentSwitchAlpha"

.field private static final CONTENT_SWITCH_RATIO:Ljava/lang/String; = "contentSwitchRatio"

.field private static final CONTENT_VIEW_AFTER_SWITCH_RATIO:Ljava/lang/String; = "contentViewAfterSwitchRatio"

.field private static final NAVIGATION_RATIO:Ljava/lang/String; = "navigationRatio"

.field private static final NAVIGATION_SWITCH_ALPHA:Ljava/lang/String; = "navigationSwitchAlpha"

.field private static final NAVIGATION_SWITCH_RATIO:Ljava/lang/String; = "navigationSwitchRatio"


# instance fields
.field private mContentOffset:I

.field private mContentRatio:F

.field private mContentSwitchAlpha:F

.field private mContentSwitchRatio:F

.field private mContentViewAfterSwitchOffset:I

.field private mContentViewAfterSwitchRatio:F

.field private mCurrentContentViewAfterSwitchOffset:I

.field private mInvalidated:Z

.field private mLastRealContentRatio:F

.field private mLastRealNavigationRatio:F

.field private mNavigationHadLayout:Z

.field private mNavigationOffset:I

.field private mNavigationRatio:F

.field private mNavigationSwitchAlpha:F

.field private mNavigationSwitchRatio:F

.field private final mUpdateAnimation:Ljava/lang/Runnable;

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/navigator/MiuixNavigationLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lmiuix/navigator/MiuixNavigationLayout;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationRatio:F

    .line 4
    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentRatio:F

    .line 5
    new-instance v0, Lmiuix/navigator/f;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lmiuix/navigator/f;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mUpdateAnimation:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/navigator/MiuixNavigationLayout;Lmiuix/navigator/MiuixNavigationLayout$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;-><init>(Lmiuix/navigator/MiuixNavigationLayout;)V

    return-void
.end method

.method public static synthetic a(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;ZLmiuix/navigator/SwitchInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->lambda$new$0(ZLmiuix/navigator/SwitchInfo;)V

    return-void
.end method

.method public static synthetic access$2002(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationHadLayout:Z

    .line 3
    return p1
.end method

.method public static synthetic access$2102(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationOffset:I

    .line 3
    return p1
.end method

.method public static synthetic access$2202(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentOffset:I

    .line 3
    return p1
.end method

.method public static synthetic access$2400(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mLastRealContentRatio:F

    .line 3
    return p0
.end method

.method public static synthetic b(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->lambda$new$1()V

    return-void
.end method

.method private synthetic lambda$new$0(ZLmiuix/navigator/SwitchInfo;)V
    .registers 9

    .line 1
    iget-object v0, p2, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    .line 3
    sget v1, Lmiuix/navigator/R$id;->miuix_appcompat_navigator_switch_presenter:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    .line 11
    iget v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchRatio:F

    .line 13
    const/4 v2, 0x0

    .line 14
    cmpl-float v1, v1, v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_14

    .line 19
    move v1, v3

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    const/16 v1, 0x8

    .line 23
    :goto_16
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->setVisibility(I)V

    .line 26
    iget v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchAlpha:F

    .line 28
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->setAlpha(F)V

    .line 31
    iget-object v0, p2, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    .line 33
    iget v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentOffset:I

    .line 35
    int-to-float v1, v1

    .line 36
    iget v4, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchRatio:F

    .line 38
    const/high16 v5, 0x3f800000  # 1.0f

    .line 40
    sub-float v4, v5, v4

    .line 42
    mul-float/2addr v4, v1

    .line 43
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 46
    iget-object v0, p2, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_37

    .line 54
    iget v3, p2, Lmiuix/navigator/SwitchInfo;->offset:I

    .line 56
    :cond_37
    iput v3, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mCurrentContentViewAfterSwitchOffset:I

    .line 58
    iget-object v0, p2, Lmiuix/navigator/SwitchInfo;->presenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    .line 60
    if-eqz v0, :cond_63

    .line 62
    if-eqz p1, :cond_44

    .line 64
    int-to-float p1, v3

    .line 65
    iget v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentViewAfterSwitchRatio:F

    .line 67
    sub-float/2addr v1, v5

    .line 68
    goto :goto_49

    .line 69
    :cond_44
    int-to-float p1, v3

    .line 70
    iget v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentViewAfterSwitchRatio:F

    .line 72
    sub-float v1, v5, v1

    .line 74
    :goto_49
    mul-float/2addr v1, p1

    .line 75
    invoke-virtual {v0, v1}, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->setTranslationX(F)V

    .line 78
    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentViewAfterSwitchRatio:F

    .line 80
    cmpl-float v0, p1, v2

    .line 82
    if-eqz v0, :cond_5e

    .line 84
    cmpl-float p1, p1, v5

    .line 86
    if-nez p1, :cond_58

    .line 88
    goto :goto_5e

    .line 89
    :cond_58
    iget-object p1, p2, Lmiuix/navigator/SwitchInfo;->presenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    .line 91
    invoke-virtual {p1}, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->ignoreHover()V

    .line 94
    goto :goto_63

    .line 95
    :cond_5e
    :goto_5e
    iget-object p1, p2, Lmiuix/navigator/SwitchInfo;->presenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    .line 97
    invoke-virtual {p1, v1}, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->setTranslationXTagForHover(F)V

    .line 100
    :cond_63
    :goto_63
    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mInvalidated:Z

    .line 4
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mView:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lmiuix/navigator/MiuixNavigationLayout;

    .line 12
    if-nez v1, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v2, v3, :cond_17

    .line 22
    move v2, v3

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v2, v0

    .line 25
    :goto_18
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1500(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 28
    move-result v4

    .line 29
    int-to-float v4, v4

    .line 30
    iget v5, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationRatio:F

    .line 32
    mul-float/2addr v4, v5

    .line 33
    invoke-static {v1, v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$2500(Lmiuix/navigator/MiuixNavigationLayout;F)V

    .line 36
    iget v5, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentRatio:F

    .line 38
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 41
    move-result v6

    .line 42
    int-to-float v6, v6

    .line 43
    add-float/2addr v4, v6

    .line 44
    mul-float/2addr v4, v5

    .line 45
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 48
    move-result v5

    .line 49
    int-to-float v5, v5

    .line 50
    cmpl-float v5, v4, v5

    .line 52
    const/high16 v6, 0x3f800000  # 1.0f

    .line 54
    const/4 v7, 0x0

    .line 55
    if-ltz v5, :cond_46

    .line 57
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 60
    move-result v5

    .line 61
    int-to-float v5, v5

    .line 62
    sub-float/2addr v4, v5

    .line 63
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1500(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 66
    move-result v5

    .line 67
    int-to-float v5, v5

    .line 68
    div-float/2addr v4, v5

    .line 69
    move v5, v6

    .line 70
    goto :goto_4e

    .line 71
    :cond_46
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 74
    move-result v5

    .line 75
    int-to-float v5, v5

    .line 76
    div-float/2addr v4, v5

    .line 77
    move v5, v4

    .line 78
    move v4, v7

    .line 79
    :goto_4e
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 81
    const/16 v9, 0x1d

    .line 83
    if-lt v8, v9, :cond_66

    .line 85
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$2600(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 88
    move-result-object v8

    .line 89
    iget-boolean v9, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationHadLayout:Z

    .line 91
    if-eqz v9, :cond_62

    .line 93
    cmpg-float v9, v4, v6

    .line 95
    if-gez v9, :cond_62

    .line 97
    move v9, v3

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move v9, v0

    .line 100
    :goto_63
    invoke-static {v8, v9}, Lf1/x;->q(Landroid/widget/FrameLayout;Z)V

    .line 103
    :cond_66
    iget v8, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mLastRealNavigationRatio:F

    .line 105
    cmpl-float v9, v8, v7

    .line 107
    if-nez v9, :cond_7a

    .line 109
    cmpl-float v9, v4, v7

    .line 111
    if-lez v9, :cond_7a

    .line 113
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$2600(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 116
    move-result-object v8

    .line 117
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iput-boolean v3, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationHadLayout:Z

    .line 122
    goto :goto_8a

    .line 123
    :cond_7a
    cmpl-float v8, v8, v7

    .line 125
    if-lez v8, :cond_8a

    .line 127
    cmpl-float v8, v4, v7

    .line 129
    if-nez v8, :cond_8a

    .line 131
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$2600(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 134
    move-result-object v8

    .line 135
    const/4 v9, 0x4

    .line 136
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_8a
    :goto_8a
    cmpl-float v8, v4, v7

    .line 141
    if-nez v8, :cond_92

    .line 143
    invoke-static {v1, v0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$2700(Lmiuix/navigator/MiuixNavigationLayout;ZZ)V

    .line 146
    goto :goto_b1

    .line 147
    :cond_92
    cmpl-float v8, v4, v6

    .line 149
    if-nez v8, :cond_ae

    .line 151
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$2800(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    .line 154
    move-result-object v8

    .line 155
    if-eqz v8, :cond_a9

    .line 157
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$2800(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    .line 160
    move-result-object v8

    .line 161
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 164
    move-result v8

    .line 165
    if-eqz v8, :cond_a7

    .line 167
    goto :goto_a9

    .line 168
    :cond_a7
    move v8, v0

    .line 169
    goto :goto_aa

    .line 170
    :cond_a9
    :goto_a9
    move v8, v3

    .line 171
    :goto_aa
    invoke-static {v1, v3, v8}, Lmiuix/navigator/MiuixNavigationLayout;->access$2700(Lmiuix/navigator/MiuixNavigationLayout;ZZ)V

    .line 174
    goto :goto_b1

    .line 175
    :cond_ae
    invoke-static {v1, v3, v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$2700(Lmiuix/navigator/MiuixNavigationLayout;ZZ)V

    .line 178
    :goto_b1
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1500(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 181
    move-result v8

    .line 182
    int-to-float v8, v8

    .line 183
    mul-float/2addr v8, v4

    .line 184
    if-eqz v2, :cond_ba

    .line 186
    neg-float v8, v8

    .line 187
    :cond_ba
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$2600(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 190
    move-result-object v9

    .line 191
    invoke-virtual {v9, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 194
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$400(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 197
    move-result-object v9

    .line 198
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z

    .line 201
    move-result v10

    .line 202
    if-eqz v10, :cond_cd

    .line 204
    move v10, v7

    .line 205
    goto :goto_ce

    .line 206
    :cond_cd
    move v10, v8

    .line 207
    :goto_ce
    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 210
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$2900(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    .line 213
    move-result-object v9

    .line 214
    invoke-virtual {v9, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 217
    iput v4, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mLastRealNavigationRatio:F

    .line 219
    iput v5, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mLastRealContentRatio:F

    .line 221
    cmpl-float v4, v5, v7

    .line 223
    if-lez v4, :cond_e2

    .line 225
    move v4, v3

    .line 226
    goto :goto_e3

    .line 227
    :cond_e2
    move v4, v0

    .line 228
    :goto_e3
    cmpl-float v8, v5, v6

    .line 230
    if-nez v8, :cond_e8

    .line 232
    goto :goto_e9

    .line 233
    :cond_e8
    move v3, v0

    .line 234
    :goto_e9
    invoke-static {v1, v4, v3}, Lmiuix/navigator/MiuixNavigationLayout;->access$3000(Lmiuix/navigator/MiuixNavigationLayout;ZZ)V

    .line 237
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 244
    move-result-object v3

    .line 245
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 247
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3100(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 250
    move-result-object v4

    .line 251
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 254
    move-result-object v4

    .line 255
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 257
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3200(Lmiuix/navigator/MiuixNavigationLayout;)Z

    .line 260
    move-result v8

    .line 261
    const/16 v9, 0x8

    .line 263
    if-eqz v8, :cond_167

    .line 265
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 268
    move-result v4

    .line 269
    int-to-float v4, v4

    .line 270
    sub-float v8, v5, v6

    .line 272
    mul-float/2addr v8, v4

    .line 273
    if-eqz v2, :cond_113

    .line 275
    neg-float v8, v8

    .line 276
    :cond_113
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 279
    move-result-object v4

    .line 280
    invoke-virtual {v4, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 283
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 286
    move-result v4

    .line 287
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 289
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3300(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 296
    move-result-object v3

    .line 297
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 299
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3300(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 306
    move-result v4

    .line 307
    if-eq v4, v9, :cond_137

    .line 309
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 311
    goto :goto_138

    .line 312
    :cond_137
    move v4, v0

    .line 313
    :goto_138
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 316
    move-result v8

    .line 317
    int-to-float v8, v8

    .line 318
    mul-float/2addr v8, v5

    .line 319
    int-to-float v4, v4

    .line 320
    sub-float/2addr v8, v4

    .line 321
    float-to-int v4, v8

    .line 322
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 325
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3300(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    .line 328
    move-result-object v4

    .line 329
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3100(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 339
    move-result-object v3

    .line 340
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 342
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 345
    move-result v4

    .line 346
    int-to-float v4, v4

    .line 347
    mul-float/2addr v4, v5

    .line 348
    float-to-int v4, v4

    .line 349
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 352
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3100(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 355
    move-result-object v4

    .line 356
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    goto :goto_17b

    .line 360
    :cond_167
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 363
    move-result-object v5

    .line 364
    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 367
    const/4 v5, -0x1

    .line 368
    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 370
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 373
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3100(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 376
    move-result-object v3

    .line 377
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    :goto_17b
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3400(Lmiuix/navigator/MiuixNavigationLayout;)V

    .line 383
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3500(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    .line 386
    move-result-object v3

    .line 387
    if-eqz v3, :cond_1ae

    .line 389
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3500(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    .line 392
    move-result-object v3

    .line 393
    sget v4, Lmiuix/navigator/R$id;->miuix_appcompat_navigator_switch_presenter:I

    .line 395
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 398
    move-result-object v3

    .line 399
    check-cast v3, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    .line 401
    iget v4, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchRatio:F

    .line 403
    cmpl-float v4, v4, v7

    .line 405
    if-eqz v4, :cond_197

    .line 407
    goto :goto_198

    .line 408
    :cond_197
    move v0, v9

    .line 409
    :goto_198
    invoke-virtual {v3, v0}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->setVisibility(I)V

    .line 412
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchAlpha:F

    .line 414
    invoke-virtual {v3, v0}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->setAlpha(F)V

    .line 417
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3500(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    .line 420
    move-result-object v0

    .line 421
    iget v3, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationOffset:I

    .line 423
    int-to-float v3, v3

    .line 424
    iget v4, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchRatio:F

    .line 426
    sub-float/2addr v6, v4

    .line 427
    mul-float/2addr v6, v3

    .line 428
    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 431
    :cond_1ae
    new-instance v0, Lmiuix/navigator/i;

    .line 433
    invoke-direct {v0, p0, v2}, Lmiuix/navigator/i;-><init>(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;Z)V

    .line 436
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3600(Lmiuix/navigator/MiuixNavigationLayout;)Ljava/util/List;

    .line 439
    move-result-object v2

    .line 440
    invoke-static {v1, v2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$3700(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Iterable;Ll0/a;)V

    .line 443
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3800(Lmiuix/navigator/MiuixNavigationLayout;)Ljava/util/List;

    .line 446
    move-result-object v2

    .line 447
    invoke-static {v1, v2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$3700(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Iterable;Ll0/a;)V

    .line 450
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 453
    return-void
.end method


# virtual methods
.method public getContentRatio()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentRatio:F

    .line 3
    return v0
.end method

.method public getContentSwitchAlpha()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchAlpha:F

    .line 3
    return v0
.end method

.method public getContentSwitchRatio()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchRatio:F

    .line 3
    return v0
.end method

.method public getContentViewAfterSwitchRatio()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentViewAfterSwitchRatio:F

    .line 3
    return v0
.end method

.method public getNavigationRatio()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationRatio:F

    .line 3
    return v0
.end method

.method public getNavigationSwitchAlpha()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchAlpha:F

    .line 3
    return v0
.end method

.method public getNavigationSwitchRatio()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchRatio:F

    .line 3
    return v0
.end method

.method public invalidate()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mInvalidated:Z

    .line 3
    if-eqz v0, :cond_13

    .line 5
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mView:Ljava/lang/ref/WeakReference;

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmiuix/navigator/MiuixNavigationLayout;

    .line 13
    if-eqz v0, :cond_13

    .line 15
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mUpdateAnimation:Ljava/lang/Runnable;

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    :cond_13
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mUpdateAnimation:Ljava/lang/Runnable;

    .line 22
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 25
    return-void
.end method

.method public postInvalidate()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mInvalidated:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mView:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lmiuix/navigator/MiuixNavigationLayout;

    .line 14
    if-eqz v0, :cond_1c

    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mInvalidated:Z

    .line 19
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mUpdateAnimation:Ljava/lang/Runnable;

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 24
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mUpdateAnimation:Ljava/lang/Runnable;

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 29
    :cond_1c
    return-void
.end method

.method public setContentRatio(F)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentRatio:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentRatio:F

    .line 10
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->postInvalidate()V

    .line 13
    return-void
.end method

.method public setContentSwitchAlpha(F)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchAlpha:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchAlpha:F

    .line 10
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->postInvalidate()V

    .line 13
    return-void
.end method

.method public setContentSwitchRatio(F)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchRatio:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchRatio:F

    .line 10
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->postInvalidate()V

    .line 13
    return-void
.end method

.method public setContentViewAfterSwitchRatio(F)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentViewAfterSwitchRatio:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentViewAfterSwitchRatio:F

    .line 10
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->postInvalidate()V

    .line 13
    return-void
.end method

.method public setNavigationRatio(F)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationRatio:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationRatio:F

    .line 10
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->postInvalidate()V

    .line 13
    return-void
.end method

.method public setNavigationSwitchAlpha(F)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchAlpha:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchAlpha:F

    .line 10
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->postInvalidate()V

    .line 13
    return-void
.end method

.method public setNavigationSwitchRatio(F)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchRatio:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchRatio:F

    .line 10
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->postInvalidate()V

    .line 13
    return-void
.end method
