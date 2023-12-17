.class public Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;
.super Ljava/lang/Object;
.source "ExtraPaddingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
    }
.end annotation


# static fields
.field public static DEBUGGABLE:Z = true

.field public static final EXTRA_PADDING_BASE_DP:I

.field public static final EXTRA_PADDING_DEFAULT:I


# instance fields
.field private mEnable:Z

.field private mIsFullWindow:Z

.field private mLastContainerHeight:I

.field private mLastContainerWidth:I

.field private mLastWindowHeightDp:I

.field private mLastWindowWidthDp:I

.field private mLevel:I

.field private mLevelThreshHolds:[I

.field private mLevelThreshHoldsInMultiColumns:[I

.field private mPaddingsDp:[I

.field private mPaddingsDpInMultiColumns:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d8a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->EXTRA_PADDING_BASE_DP:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowWidthDp:I

    iput v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowHeightDp:I

    iput v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerWidth:I

    iput v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mIsFullWindow:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHolds:[I

    iput-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHoldsInMultiColumns:[I

    return-void
.end method

.method public static synthetic access$002(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHolds:[I

    return-object p1
.end method

.method public static synthetic access$102(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mPaddingsDp:[I

    return-object p1
.end method

.method public static synthetic access$202(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHoldsInMultiColumns:[I

    return-object p1
.end method

.method public static synthetic access$302(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mPaddingsDpInMultiColumns:[I

    return-object p1
.end method


# virtual methods
.method public applyExtraPadding(Landroid/view/View;)V
    .registers 8

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mEnable:Z

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v4

    const/high16 v5, 0x43200000  # 160.0f

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->getExtraPaddingDp()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_32

    sub-int/2addr v0, v4

    sub-int/2addr v2, v4

    goto :goto_34

    :cond_32
    add-int/2addr v0, v4

    add-int/2addr v2, v4

    :goto_34
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_37
    return-void
.end method

.method public getExtraPaddingDp()I
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->getExtraPaddingDp(Z)I

    move-result v0

    return v0
.end method

.method public getExtraPaddingDp(Z)I
    .registers 4

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mIsFullWindow:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mPaddingsDpInMultiColumns:[I

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    iget v1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    aget v0, v0, v1

    goto :goto_14

    :cond_e
    :goto_e
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mPaddingsDp:[I

    iget v1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    aget v0, v0, v1

    :goto_14
    if-nez v0, :cond_17

    return v0

    :cond_17
    if-eqz p1, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1c

    return v0
.end method

.method public getLevel()I
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    return v0
.end method

.method public isEnable()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mEnable:Z

    return v0
.end method

.method public onContainerSizeChanged(IIIIFZ)V
    .registers 11

    iget v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerWidth:I

    if-ne v0, p3, :cond_8

    iget v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowWidthDp:I

    if-eq v0, p1, :cond_fe

    :cond_8
    sget-boolean v0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->DEBUGGABLE:Z

    const-string v1, "ExtraPaddingPolicy"

    if-eqz v0, :cond_74

    const-string v0, "onContainerSizeChanged new Win w = "

    const-string v2, " h = "

    const-string v3, " new C w = "

    invoke-static {v0, p1, v2, p2, v3}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContainerSizeChanged old Win w = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowWidthDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowHeightDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " old C w = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContainerSizeChanged density "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " isInFloatingWindow = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    iput p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowWidthDp:I

    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowHeightDp:I

    iput p3, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerWidth:I

    iput p4, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerHeight:I

    int-to-float p2, p3

    const/high16 p4, 0x3f800000  # 1.0f

    mul-float/2addr p2, p4

    int-to-float p1, p1

    mul-float/2addr p1, p5

    div-float/2addr p2, p1

    const p1, 0x3f733333  # 0.95f

    cmpl-float p1, p2, p1

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-gez p1, :cond_91

    if-eqz p6, :cond_8f

    goto :goto_91

    :cond_8f
    move p1, p2

    goto :goto_92

    :cond_91
    :goto_91
    move p1, p4

    :goto_92
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mIsFullWindow:Z

    sget-boolean p1, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->DEBUGGABLE:Z

    if-eqz p1, :cond_aa

    const-string p1, "onContainerSizeChanged isFullWindow "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p6, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mIsFullWindow:Z

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    iget p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowHeightDp:I

    const/16 p6, 0x226

    if-gt p1, p6, :cond_b3

    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    return-void

    :cond_b3
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mIsFullWindow:Z

    if-nez p1, :cond_dd

    iget-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHoldsInMultiColumns:[I

    if-nez p1, :cond_bc

    goto :goto_dd

    :cond_bc
    :goto_bc
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHoldsInMultiColumns:[I

    array-length p6, p1

    if-ge p2, p6, :cond_fe

    aget p6, p1, p2

    int-to-float p6, p6

    mul-float/2addr p6, p5

    float-to-int p6, p6

    if-nez p2, :cond_cd

    if-ge p3, p6, :cond_cd

    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    goto :goto_fe

    :cond_cd
    if-gt p3, p6, :cond_d2

    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    goto :goto_fe

    :cond_d2
    array-length p1, p1

    sub-int/2addr p1, p4

    if-ne p2, p1, :cond_da

    add-int/lit8 p1, p2, 0x1

    iput p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    :cond_da
    add-int/lit8 p2, p2, 0x1

    goto :goto_bc

    :cond_dd
    :goto_dd
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHolds:[I

    array-length p6, p1

    if-ge p2, p6, :cond_fe

    aget p6, p1, p2

    int-to-float p6, p6

    mul-float/2addr p6, p5

    float-to-int p6, p6

    if-nez p2, :cond_ee

    if-ge p3, p6, :cond_ee

    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    goto :goto_fe

    :cond_ee
    if-gt p3, p6, :cond_f3

    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    goto :goto_fe

    :cond_f3
    array-length p1, p1

    sub-int/2addr p1, p4

    if-ne p2, p1, :cond_fb

    add-int/lit8 p1, p2, 0x1

    iput p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    :cond_fb
    add-int/lit8 p2, p2, 0x1

    goto :goto_dd

    :cond_fe
    :goto_fe
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mEnable:Z

    return-void
.end method
