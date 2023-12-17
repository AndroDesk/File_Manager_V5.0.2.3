.class public Lmiuix/view/MiuiBlurUiHelper;
.super Ljava/lang/Object;
.source "MiuiBlurUiHelper.java"

# interfaces
.implements Lmiuix/view/BlurableWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;
    }
.end annotation


# instance fields
.field private mApplyBlur:Z

.field private mBlurBlendColorModes:[I

.field private mBlurBlendColors:[I

.field private mBlurEffect:I

.field private final mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

.field private final mContext:Landroid/content/Context;

.field private mIsEnableBlur:Z

.field private final mIsSpecialShape:Z

.field private mIsSupportBlur:Z

.field private mNeedApplyBlur:Z

.field private mNeedEnableBlur:Z

.field private final mViewApplyBlur:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    .line 7
    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedEnableBlur:Z

    .line 9
    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    .line 11
    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedApplyBlur:Z

    .line 13
    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    .line 18
    iput-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    .line 20
    iput v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    .line 22
    iput-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    .line 26
    iput-boolean p3, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSpecialShape:Z

    .line 28
    iput-object p4, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    .line 30
    return-void
.end method

.method private applyBlurInternal(Z)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    .line 8
    if-nez v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    .line 13
    if-eq v0, p1, :cond_63

    .line 15
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_54

    .line 20
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    .line 22
    if-nez p1, :cond_1c

    .line 24
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    .line 26
    invoke-interface {p1, p0}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V

    .line 29
    :cond_1c
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-interface {p1, v1}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurApplyStateChanged(Z)V

    .line 35
    :try_start_22
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 48
    move-result-object p1

    .line 49
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_33

    .line 51
    goto :goto_35

    .line 52
    :catch_33
    const/high16 p1, 0x40300000  # 2.75f

    .line 54
    :goto_35
    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    .line 56
    iget v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    .line 58
    int-to-float v2, v2

    .line 59
    mul-float/2addr v2, p1

    .line 60
    float-to-int p1, v2

    .line 61
    iget-boolean v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSpecialShape:Z

    .line 63
    invoke-static {v1, p1, v2}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlur(Landroid/view/View;IZ)Z

    .line 66
    :goto_41
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    .line 68
    array-length v1, p1

    .line 69
    if-ge v0, v1, :cond_63

    .line 71
    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    .line 73
    aget p1, p1, v0

    .line 75
    iget-object v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    .line 77
    aget v2, v2, v0

    .line 79
    invoke-static {v1, p1, v2}, Lmiuix/core/util/MiuiBlurUtils;->addBackgroundBlenderColor(Landroid/view/View;II)Z

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 84
    goto :goto_41

    .line 85
    :cond_54
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    .line 87
    invoke-static {p1}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlur(Landroid/view/View;)Z

    .line 90
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    .line 92
    invoke-static {p1}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlenderColor(Landroid/view/View;)Z

    .line 95
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    .line 97
    invoke-interface {p1, v0}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurApplyStateChanged(Z)V

    .line 100
    :cond_63
    return-void
.end method

.method public static getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;I[I)[I
    .registers 6

    .line 5
    array-length v0, p2

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 6
    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p1, :cond_1a

    const v0, 0x1010054

    .line 7
    invoke-static {p0, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 8
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1a

    .line 9
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    :cond_1a
    if-eqz p1, :cond_29

    const p0, 0xffffff

    and-int/2addr p0, p1

    const/high16 p1, -0x1000000

    const/4 v0, 0x1

    .line 10
    aget p2, p2, v0

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    aput p0, v1, v0

    :cond_29
    return-object v1
.end method

.method public static getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;[I)[I
    .registers 4

    if-eqz p1, :cond_d

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_d

    .line 2
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 4
    :goto_e
    invoke-static {p0, p1, p2}, Lmiuix/view/MiuiBlurUiHelper;->getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;I[I)[I

    move-result-object p0

    return-object p0
.end method

.method private setEnableBlurInternal(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    .line 3
    if-eq v0, p1, :cond_21

    .line 5
    if-nez p1, :cond_10

    .line 7
    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->isApplyBlur()Z

    .line 10
    move-result v0

    .line 11
    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedApplyBlur:Z

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lmiuix/view/MiuiBlurUiHelper;->applyBlurInternal(Z)V

    .line 17
    :cond_10
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    .line 19
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    .line 21
    invoke-interface {v0, p1}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurEnableStateChanged(Z)V

    .line 24
    if-eqz p1, :cond_21

    .line 26
    iget-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedApplyBlur:Z

    .line 28
    if-eqz p1, :cond_21

    .line 30
    const/4 p1, 0x1

    .line 31
    invoke-direct {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlurInternal(Z)V

    .line 34
    :cond_21
    return-void
.end method


# virtual methods
.method public applyBlur(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedApplyBlur:Z

    .line 3
    invoke-direct {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlurInternal(Z)V

    .line 6
    return-void
.end method

.method public getViewApplyBlur()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public isApplyBlur()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedApplyBlur:Z

    .line 3
    return v0
.end method

.method public isEnableBlur()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedEnableBlur:Z

    .line 3
    return v0
.end method

.method public isSupportBlur()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    .line 3
    return v0
.end method

.method public onConfigChanged()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->resetBlurParams()V

    .line 4
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_10

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlurInternal(Z)V

    .line 16
    goto :goto_28

    .line 17
    :cond_10
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_28

    .line 23
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_28

    .line 31
    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_28

    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlurInternal(Z)V

    .line 41
    :cond_28
    :goto_28
    return-void
.end method

.method public refreshBlur()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    .line 3
    if-eqz v0, :cond_50

    .line 5
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    .line 7
    if-nez v0, :cond_17

    .line 9
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    .line 11
    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlur(Landroid/view/View;)Z

    .line 14
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    .line 16
    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlenderColor(Landroid/view/View;)Z

    .line 19
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    .line 21
    invoke-interface {v0, p0}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V

    .line 24
    :cond_17
    :try_start_17
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 37
    move-result-object v0

    .line 38
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_27} :catch_28

    .line 40
    goto :goto_2a

    .line 41
    :catch_28
    const/high16 v0, 0x40300000  # 2.75f

    .line 43
    :goto_2a
    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-interface {v1, v2}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurApplyStateChanged(Z)V

    .line 49
    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    .line 51
    iget v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    .line 53
    int-to-float v2, v2

    .line 54
    mul-float/2addr v2, v0

    .line 55
    float-to-int v0, v2

    .line 56
    iget-boolean v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSpecialShape:Z

    .line 58
    invoke-static {v1, v0, v2}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlur(Landroid/view/View;IZ)Z

    .line 61
    const/4 v0, 0x0

    .line 62
    :goto_3d
    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    .line 64
    array-length v2, v1

    .line 65
    if-ge v0, v2, :cond_50

    .line 67
    iget-object v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    .line 69
    aget v1, v1, v0

    .line 71
    iget-object v3, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    .line 73
    aget v3, v3, v0

    .line 75
    invoke-static {v2, v1, v3}, Lmiuix/core/util/MiuiBlurUtils;->addBackgroundBlenderColor(Landroid/view/View;II)Z

    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 80
    goto :goto_3d

    .line 81
    :cond_50
    return-void
.end method

.method public resetBlurParams()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    .line 4
    iput-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    .line 9
    return-void
.end method

.method public setBlurParams([I[II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    .line 3
    iput-object p2, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    .line 5
    iput p3, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    .line 7
    return-void
.end method

.method public setEnableBlur(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedEnableBlur:Z

    .line 8
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mContext:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_14

    .line 16
    iget-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedEnableBlur:Z

    .line 18
    invoke-direct {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlurInternal(Z)V

    .line 21
    :cond_14
    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    .line 3
    return-void
.end method
