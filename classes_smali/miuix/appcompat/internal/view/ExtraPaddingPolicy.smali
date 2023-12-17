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

.field public static final EXTRA_PADDING_BASE_DP:I = 0x1c

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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowWidthDp:I

    .line 7
    iput v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowHeightDp:I

    .line 9
    iput v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerWidth:I

    .line 11
    iput v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerHeight:I

    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mIsFullWindow:Z

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHolds:[I

    .line 19
    iput-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHoldsInMultiColumns:[I

    .line 21
    return-void
.end method

.method public static synthetic access$002(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHolds:[I

    .line 3
    return-object p1
.end method

.method public static synthetic access$102(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mPaddingsDp:[I

    .line 3
    return-object p1
.end method

.method public static synthetic access$202(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHoldsInMultiColumns:[I

    .line 3
    return-object p1
.end method

.method public static synthetic access$302(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mPaddingsDpInMultiColumns:[I

    .line 3
    return-object p1
.end method


# virtual methods
.method public applyExtraPadding(Landroid/view/View;)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mEnable:Z

    .line 3
    if-eqz v0, :cond_37

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 20
    move-result v3

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 28
    move-result-object v4

    .line 29
    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 31
    int-to-float v4, v4

    .line 32
    const/high16 v5, 0x43200000  # 160.0f

    .line 34
    div-float/2addr v4, v5

    .line 35
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->getExtraPaddingDp()I

    .line 38
    move-result v5

    .line 39
    int-to-float v5, v5

    .line 40
    mul-float/2addr v5, v4

    .line 41
    float-to-int v4, v5

    .line 42
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_32

    .line 48
    sub-int/2addr v0, v4

    .line 49
    sub-int/2addr v2, v4

    .line 50
    goto :goto_34

    .line 51
    :cond_32
    add-int/2addr v0, v4

    .line 52
    add-int/2addr v2, v4

    .line 53
    :goto_34
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 56
    :cond_37
    return-void
.end method

.method public getExtraPaddingDp()I
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->getExtraPaddingDp(Z)I

    move-result v0

    return v0
.end method

.method public getExtraPaddingDp(Z)I
    .registers 4

    .line 2
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mIsFullWindow:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mPaddingsDpInMultiColumns:[I

    if-nez v0, :cond_9

    goto :goto_e

    .line 3
    :cond_9
    iget v1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    aget v0, v0, v1

    goto :goto_14

    .line 4
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

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    .line 3
    return v0
.end method

.method public isEnable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mEnable:Z

    .line 3
    return v0
.end method

.method public onContainerSizeChanged(IIIIFZ)V
    .registers 11

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerWidth:I

    .line 3
    if-ne v0, p3, :cond_8

    .line 5
    iget v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowWidthDp:I

    .line 7
    if-eq v0, p1, :cond_fe

    .line 9
    :cond_8
    sget-boolean v0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->DEBUGGABLE:Z

    .line 11
    const-string v1, "ExtraPaddingPolicy"

    .line 13
    if-eqz v0, :cond_74

    .line 15
    const-string v0, "onContainerSizeChanged new Win w = "

    .line 17
    const-string v2, " h = "

    .line 19
    const-string v3, " new C w = "

    .line 21
    invoke-static {v0, p1, v2, p2, v3}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v3, "onContainerSizeChanged old Win w = "

    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v3, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowWidthDp:I

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v3, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowHeightDp:I

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v3, " old C w = "

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v3, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerWidth:I

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerHeight:I

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const-string v2, "onContainerSizeChanged density "

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, " isInFloatingWindow = "

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_74
    iput p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowWidthDp:I

    .line 119
    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowHeightDp:I

    .line 121
    iput p3, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerWidth:I

    .line 123
    iput p4, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerHeight:I

    .line 125
    int-to-float p2, p3

    .line 126
    const/high16 p4, 0x3f800000  # 1.0f

    .line 128
    mul-float/2addr p2, p4

    .line 129
    int-to-float p1, p1

    .line 130
    mul-float/2addr p1, p5

    .line 131
    div-float/2addr p2, p1

    .line 132
    const p1, 0x3f733333  # 0.95f

    .line 135
    cmpl-float p1, p2, p1

    .line 137
    const/4 p2, 0x0

    .line 138
    const/4 p4, 0x1

    .line 139
    if-gez p1, :cond_91

    .line 141
    if-eqz p6, :cond_8f

    .line 143
    goto :goto_91

    .line 144
    :cond_8f
    move p1, p2

    .line 145
    goto :goto_92

    .line 146
    :cond_91
    :goto_91
    move p1, p4

    .line 147
    :goto_92
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mIsFullWindow:Z

    .line 149
    sget-boolean p1, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->DEBUGGABLE:Z

    .line 151
    if-eqz p1, :cond_aa

    .line 153
    const-string p1, "onContainerSizeChanged isFullWindow "

    .line 155
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    move-result-object p1

    .line 159
    iget-boolean p6, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mIsFullWindow:Z

    .line 161
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 168
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_aa
    iget p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowHeightDp:I

    .line 173
    const/16 p6, 0x226

    .line 175
    if-gt p1, p6, :cond_b3

    .line 177
    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    .line 179
    return-void

    .line 180
    :cond_b3
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mIsFullWindow:Z

    .line 182
    if-nez p1, :cond_dd

    .line 184
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHoldsInMultiColumns:[I

    .line 186
    if-nez p1, :cond_bc

    .line 188
    goto :goto_dd

    .line 189
    :cond_bc
    :goto_bc
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHoldsInMultiColumns:[I

    .line 191
    array-length p6, p1

    .line 192
    if-ge p2, p6, :cond_fe

    .line 194
    aget p6, p1, p2

    .line 196
    int-to-float p6, p6

    .line 197
    mul-float/2addr p6, p5

    .line 198
    float-to-int p6, p6

    .line 199
    if-nez p2, :cond_cd

    .line 201
    if-ge p3, p6, :cond_cd

    .line 203
    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    .line 205
    goto :goto_fe

    .line 206
    :cond_cd
    if-gt p3, p6, :cond_d2

    .line 208
    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    .line 210
    goto :goto_fe

    .line 211
    :cond_d2
    array-length p1, p1

    .line 212
    sub-int/2addr p1, p4

    .line 213
    if-ne p2, p1, :cond_da

    .line 215
    add-int/lit8 p1, p2, 0x1

    .line 217
    iput p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    .line 219
    :cond_da
    add-int/lit8 p2, p2, 0x1

    .line 221
    goto :goto_bc

    .line 222
    :cond_dd
    :goto_dd
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHolds:[I

    .line 224
    array-length p6, p1

    .line 225
    if-ge p2, p6, :cond_fe

    .line 227
    aget p6, p1, p2

    .line 229
    int-to-float p6, p6

    .line 230
    mul-float/2addr p6, p5

    .line 231
    float-to-int p6, p6

    .line 232
    if-nez p2, :cond_ee

    .line 234
    if-ge p3, p6, :cond_ee

    .line 236
    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    .line 238
    goto :goto_fe

    .line 239
    :cond_ee
    if-gt p3, p6, :cond_f3

    .line 241
    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    .line 243
    goto :goto_fe

    .line 244
    :cond_f3
    array-length p1, p1

    .line 245
    sub-int/2addr p1, p4

    .line 246
    if-ne p2, p1, :cond_fb

    .line 248
    add-int/lit8 p1, p2, 0x1

    .line 250
    iput p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    .line 252
    :cond_fb
    add-int/lit8 p2, p2, 0x1

    .line 254
    goto :goto_dd

    .line 255
    :cond_fe
    :goto_fe
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mEnable:Z

    .line 3
    return-void
.end method
