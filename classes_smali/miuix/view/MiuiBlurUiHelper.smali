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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedEnableBlur:Z

    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedApplyBlur:Z

    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    iput-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    iput v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    iput-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    iput-boolean p3, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSpecialShape:Z

    iput-object p4, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    return-void
.end method

.method private applyBlurInternal(Z)V
    .registers 5

    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    if-eq v0, p1, :cond_63

    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_54

    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    if-nez p1, :cond_1c

    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    invoke-interface {p1, p0}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V

    :cond_1c
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurApplyStateChanged(Z)V

    :try_start_22
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_33

    goto :goto_35

    :catch_33
    const/high16 p1, 0x40300000  # 2.75f

    :goto_35
    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    iget v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    iget-boolean v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSpecialShape:Z

    invoke-static {v1, p1, v2}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlur(Landroid/view/View;IZ)Z

    :goto_41
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    array-length v1, p1

    if-ge v0, v1, :cond_63

    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    aget p1, p1, v0

    iget-object v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    aget v2, v2, v0

    invoke-static {v1, p1, v2}, Lmiuix/core/util/MiuiBlurUtils;->addBackgroundBlenderColor(Landroid/view/View;II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_54
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-static {p1}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlur(Landroid/view/View;)Z

    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-static {p1}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlenderColor(Landroid/view/View;)Z

    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    invoke-interface {p1, v0}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurApplyStateChanged(Z)V

    :cond_63
    return-void
.end method

.method public static getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;I[I)[I
    .registers 6

    array-length v0, p2

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p1, :cond_1a

    const v0, 0x1010054

    invoke-static {p0, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1a

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    :cond_1a
    if-eqz p1, :cond_29

    const p0, 0xffffff

    and-int/2addr p0, p1

    const/high16 p1, -0x1000000

    const/4 v0, 0x1

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

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_d

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    invoke-static {p0, p1, p2}, Lmiuix/view/MiuiBlurUiHelper;->getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;I[I)[I

    move-result-object p0

    return-object p0
.end method

.method private setEnableBlurInternal(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    if-eq v0, p1, :cond_21

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->isApplyBlur()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedApplyBlur:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/view/MiuiBlurUiHelper;->applyBlurInternal(Z)V

    :cond_10
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    invoke-interface {v0, p1}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurEnableStateChanged(Z)V

    if-eqz p1, :cond_21

    iget-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedApplyBlur:Z

    if-eqz p1, :cond_21

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlurInternal(Z)V

    :cond_21
    return-void
.end method


# virtual methods
.method public applyBlur(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedApplyBlur:Z

    invoke-direct {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlurInternal(Z)V

    return-void
.end method

.method public getViewApplyBlur()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    return-object v0
.end method

.method public isApplyBlur()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedApplyBlur:Z

    return v0
.end method

.method public isEnableBlur()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedEnableBlur:Z

    return v0
.end method

.method public isSupportBlur()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    return v0
.end method

.method public onConfigChanged()V
    .registers 2

    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->resetBlurParams()V

    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlurInternal(Z)V

    goto :goto_28

    :cond_10
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlurInternal(Z)V

    :cond_28
    :goto_28
    return-void
.end method

.method public refreshBlur()V
    .registers 5

    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    if-nez v0, :cond_17

    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlur(Landroid/view/View;)Z

    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlenderColor(Landroid/view/View;)Z

    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    invoke-interface {v0, p0}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V

    :cond_17
    :try_start_17
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_27} :catch_28

    goto :goto_2a

    :catch_28
    const/high16 v0, 0x40300000  # 2.75f

    :goto_2a
    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurApplyStateChanged(Z)V

    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    iget v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iget-boolean v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSpecialShape:Z

    invoke-static {v1, v0, v2}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlur(Landroid/view/View;IZ)Z

    const/4 v0, 0x0

    :goto_3d
    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    array-length v2, v1

    if-ge v0, v2, :cond_50

    iget-object v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    aget v1, v1, v0

    iget-object v3, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    aget v3, v3, v0

    invoke-static {v2, v1, v3}, Lmiuix/core/util/MiuiBlurUtils;->addBackgroundBlenderColor(Landroid/view/View;II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_50
    return-void
.end method

.method public resetBlurParams()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    iput-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    return-void
.end method

.method public setBlurParams([I[II)V
    .registers 4

    iput-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    iput-object p2, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    iput p3, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    return-void
.end method

.method public setEnableBlur(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedEnableBlur:Z

    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedEnableBlur:Z

    invoke-direct {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlurInternal(Z)V

    :cond_14
    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    return-void
.end method
