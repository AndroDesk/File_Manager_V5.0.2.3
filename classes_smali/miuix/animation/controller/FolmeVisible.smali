.class public Lmiuix/animation/controller/FolmeVisible;
.super Lmiuix/animation/controller/FolmeBase;
.source "FolmeVisible.java"

# interfaces
.implements Lmiuix/animation/IVisibleStyle;


# instance fields
.field private final mDefConfig:Lmiuix/animation/base/AnimConfig;

.field private mHasMove:Z

.field private mHasScale:Z

.field private mSetBound:Z


# direct methods
.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 4
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 6
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v1, v0, [Lmiuix/animation/listener/TransitionListener;

    .line 12
    new-instance v2, Lmiuix/animation/controller/FolmeVisible$1;

    .line 14
    invoke-direct {v2, p0}, Lmiuix/animation/controller/FolmeVisible$1;-><init>(Lmiuix/animation/controller/FolmeVisible;)V

    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v2, v1, v3

    .line 20
    invoke-virtual {p1, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    .line 26
    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeVisible;->useAutoAlpha(Z)Lmiuix/animation/IVisibleStyle;

    .line 29
    return-void
.end method

.method public static synthetic access$000(Lmiuix/animation/controller/FolmeVisible;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/animation/controller/FolmeVisible;->mSetBound:Z

    .line 3
    return p0
.end method

.method private varargs getConfig(Lmiuix/animation/IVisibleStyle$VisibleType;[Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .registers 9

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasScale:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, -0x2

    .line 7
    if-nez v0, :cond_2c

    .line 9
    iget-boolean v5, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    .line 11
    if-nez v5, :cond_2c

    .line 13
    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    .line 15
    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 17
    if-ne p1, v5, :cond_1f

    .line 19
    const/16 p1, 0x10

    .line 21
    new-array v3, v2, [F

    .line 23
    const/high16 v4, 0x43960000  # 300.0f

    .line 25
    aput v4, v3, v1

    .line 27
    invoke-static {p1, v3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 30
    move-result-object p1

    .line 31
    goto :goto_28

    .line 32
    :cond_1f
    new-array p1, v3, [F

    .line 34
    fill-array-data p1, :array_98

    .line 37
    invoke-static {v4, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 40
    move-result-object p1

    .line 41
    :goto_28
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 44
    goto :goto_8a

    .line 45
    :cond_2c
    if-eqz v0, :cond_4f

    .line 47
    iget-boolean v5, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    .line 49
    if-nez v5, :cond_4f

    .line 51
    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    .line 53
    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 55
    if-ne p1, v5, :cond_42

    .line 57
    new-array p1, v3, [F

    .line 59
    fill-array-data p1, :array_a0

    .line 62
    invoke-static {v4, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 65
    move-result-object p1

    .line 66
    goto :goto_4b

    .line 67
    :cond_42
    new-array p1, v3, [F

    .line 69
    fill-array-data p1, :array_a8

    .line 72
    invoke-static {v4, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 75
    move-result-object p1

    .line 76
    :goto_4b
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 79
    goto :goto_8a

    .line 80
    :cond_4f
    if-nez v0, :cond_6e

    .line 82
    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    .line 84
    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 86
    if-ne p1, v5, :cond_61

    .line 88
    new-array p1, v3, [F

    .line 90
    fill-array-data p1, :array_b0

    .line 93
    invoke-static {v4, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 96
    move-result-object p1

    .line 97
    goto :goto_6a

    .line 98
    :cond_61
    new-array p1, v3, [F

    .line 100
    fill-array-data p1, :array_b8

    .line 103
    invoke-static {v4, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 106
    move-result-object p1

    .line 107
    :goto_6a
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 110
    goto :goto_8a

    .line 111
    :cond_6e
    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    .line 113
    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 115
    if-ne p1, v5, :cond_7e

    .line 117
    new-array p1, v3, [F

    .line 119
    fill-array-data p1, :array_c0

    .line 122
    invoke-static {v4, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 125
    move-result-object p1

    .line 126
    goto :goto_87

    .line 127
    :cond_7e
    new-array p1, v3, [F

    .line 129
    fill-array-data p1, :array_c8

    .line 132
    invoke-static {v4, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 135
    move-result-object p1

    .line 136
    :goto_87
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 139
    :goto_8a
    new-array p1, v2, [Lmiuix/animation/base/AnimConfig;

    .line 141
    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    .line 143
    aput-object v0, p1, v1

    .line 145
    invoke-static {p2, p1}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 148
    move-result-object p1

    .line 149
    check-cast p1, [Lmiuix/animation/base/AnimConfig;

    .line 151
    return-object p1

    .line 152
    nop

    .line 153
    :array_98
    .array-data 4
        0x3f800000  # 1.0f
        0x3e19999a  # 0.15f
    .end array-data

    .line 161
    :array_a0
    .array-data 4
        0x3f19999a  # 0.6f
        0x3eb33333  # 0.35f
    .end array-data

    .line 169
    :array_a8
    .array-data 4
        0x3f400000  # 0.75f
        0x3e4ccccd  # 0.2f
    .end array-data

    .line 177
    :array_b0
    .array-data 4
        0x3f400000  # 0.75f
        0x3eb33333  # 0.35f
    .end array-data

    .line 185
    :array_b8
    .array-data 4
        0x3f400000  # 0.75f
        0x3e800000  # 0.25f
    .end array-data

    .line 193
    :array_c0
    .array-data 4
        0x3f266666  # 0.65f
        0x3eb33333  # 0.35f
    .end array-data

    .line 201
    :array_c8
    .array-data 4
        0x3f400000  # 0.75f
        0x3e800000  # 0.25f
    .end array-data
.end method

.method private varargs getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;
    .registers 3

    .line 1
    array-length v0, p1

    .line 2
    if-lez v0, :cond_7

    .line 4
    const/4 v0, 0x0

    .line 5
    aget-object p1, p1, v0

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    sget-object p1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 10
    :goto_9
    return-object p1
.end method


# virtual methods
.method public clean()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasScale:Z

    .line 7
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    .line 9
    return-void
.end method

.method public varargs hide([Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 5
    invoke-direct {p0, v1, p1}, Lmiuix/animation/controller/FolmeVisible;->getConfig(Lmiuix/animation/IVisibleStyle$VisibleType;[Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, v1, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 12
    return-void
.end method

.method public varargs setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeVisible;->getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 10
    move-result-object p2

    .line 11
    sget-object v0, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 13
    float-to-double v1, p1

    .line 14
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 17
    return-object p0
.end method

.method public setBound(IIII)Lmiuix/animation/IVisibleStyle;
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mSetBound:Z

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 6
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 8
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 14
    int-to-double v2, p1

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    .line 21
    int-to-double v1, p2

    .line 22
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 25
    move-result-object p1

    .line 26
    sget-object p2, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 28
    int-to-double v0, p3

    .line 29
    invoke-virtual {p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 32
    move-result-object p1

    .line 33
    sget-object p2, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 35
    int-to-double p3, p4

    .line 36
    invoke-virtual {p1, p2, p3, p4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 39
    return-object p0
.end method

.method public setFlags(J)Lmiuix/animation/IVisibleStyle;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    invoke-interface {v0, p1, p2}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    .line 6
    return-object p0
.end method

.method public setHide()Lmiuix/animation/IVisibleStyle;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 5
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 8
    return-object p0
.end method

.method public setMove(II)Lmiuix/animation/IVisibleStyle;
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 1
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, v0}, Lmiuix/animation/controller/FolmeVisible;->setMove(II[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs setMove(II[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;
    .registers 10

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_11

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    :goto_12
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    if-eqz v0, :cond_35

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeVisible;->getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;

    move-result-object p3

    invoke-interface {v0, p3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    sget-object v0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    new-array v3, v2, [J

    const-wide/16 v4, 0x1

    aput-wide v4, v3, v1

    .line 4
    invoke-virtual {p3, v0, p1, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p3, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    new-array v0, v2, [J

    aput-wide v4, v0, v1

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    :cond_35
    return-object p0
.end method

.method public varargs setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasScale:Z

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 6
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeVisible;->getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 9
    move-result-object p2

    .line 10
    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 13
    move-result-object p2

    .line 14
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 16
    float-to-double v1, p1

    .line 17
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 20
    move-result-object p1

    .line 21
    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 23
    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 26
    return-object p0
.end method

.method public setShow()Lmiuix/animation/IVisibleStyle;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 5
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 8
    return-object p0
.end method

.method public setShowDelay(J)Lmiuix/animation/IVisibleStyle;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 5
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 12
    move-result-object v0

    .line 13
    iput-wide p1, v0, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 15
    return-object p0
.end method

.method public varargs show([Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 5
    invoke-direct {p0, v1, p1}, Lmiuix/animation/controller/FolmeVisible;->getConfig(Lmiuix/animation/IVisibleStyle$VisibleType;[Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, v1, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 12
    return-void
.end method

.method public useAutoAlpha(Z)Lmiuix/animation/IVisibleStyle;
    .registers 9

    .line 1
    sget-object v0, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 3
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 9
    if-eqz p1, :cond_29

    .line 11
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 13
    sget-object v6, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 15
    invoke-interface {p1, v6}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1, v0, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 26
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 28
    sget-object v4, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 30
    invoke-interface {p1, v4}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 41
    goto :goto_47

    .line 42
    :cond_29
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 44
    sget-object v6, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 46
    invoke-interface {p1, v6}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 57
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 59
    sget-object v4, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 61
    invoke-interface {p1, v4}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 72
    :goto_47
    return-object p0
.end method
