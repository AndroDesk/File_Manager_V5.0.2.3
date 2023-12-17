.class public Lmiuix/animation/controller/FolmeFont;
.super Lmiuix/animation/controller/FolmeBase;
.source "FolmeFont.java"

# interfaces
.implements Lmiuix/animation/IVarFontStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/controller/FolmeFont$FontType;
    }
.end annotation


# instance fields
.field private mDefaultTo:Lmiuix/animation/base/AnimConfig;

.field private mInitValue:I

.field private mIsInitSet:Z

.field private mProperty:Lmiuix/animation/font/FontWeightProperty;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Lmiuix/animation/IAnimTarget;

    .line 4
    invoke-direct {p0, v1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 7
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 9
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 12
    iput-object v1, p0, Lmiuix/animation/controller/FolmeFont;->mDefaultTo:Lmiuix/animation/base/AnimConfig;

    .line 14
    const/4 v2, 0x3

    .line 15
    new-array v2, v2, [F

    .line 17
    fill-array-data v2, :array_1c

    .line 20
    invoke-static {v0, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_1c
    .array-data 4
        0x43af0000  # 350.0f
        0x3f666666  # 0.9f
        0x3f5c28f6  # 0.86f
    .end array-data
.end method


# virtual methods
.method public clean()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 7
    iput-object v0, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lmiuix/animation/controller/FolmeFont;->mInitValue:I

    .line 12
    return-void
.end method

.method public varargs fromTo(II[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    if-eqz v0, :cond_23

    .line 5
    sget-object v1, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    .line 7
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 10
    move-result-object v0

    .line 11
    iget-object v2, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    .line 13
    int-to-double v3, p1

    .line 14
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 17
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 19
    sget-object v0, Lmiuix/animation/controller/FolmeFont$FontType;->TARGET:Lmiuix/animation/controller/FolmeFont$FontType;

    .line 21
    invoke-interface {p1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 24
    move-result-object p1

    .line 25
    iget-object v2, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    .line 27
    int-to-double v3, p2

    .line 28
    invoke-virtual {p1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 31
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 33
    invoke-interface {p1, v1, v0, p3}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 36
    :cond_23
    return-object p0
.end method

.method public setTo(I)Lmiuix/animation/IVarFontStyle;
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    if-eqz v0, :cond_15

    .line 5
    sget-object v1, Lmiuix/animation/controller/FolmeFont$FontType;->TARGET:Lmiuix/animation/controller/FolmeFont$FontType;

    .line 7
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 10
    move-result-object v0

    .line 11
    iget-object v2, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    .line 13
    int-to-double v3, p1

    .line 14
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 17
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 19
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 22
    :cond_15
    return-object p0
.end method

.method public varargs to(I[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    if-eqz v0, :cond_3c

    .line 5
    iget-boolean v1, p0, Lmiuix/animation/controller/FolmeFont;->mIsInitSet:Z

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_10

    .line 10
    iput-boolean v2, p0, Lmiuix/animation/controller/FolmeFont;->mIsInitSet:Z

    .line 12
    sget-object v1, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    .line 14
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 17
    :cond_10
    new-array v0, v2, [Lmiuix/animation/base/AnimConfig;

    .line 19
    const/4 v1, 0x0

    .line 20
    iget-object v2, p0, Lmiuix/animation/controller/FolmeFont;->mDefaultTo:Lmiuix/animation/base/AnimConfig;

    .line 22
    aput-object v2, v0, v1

    .line 24
    invoke-static {p2, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 28
    check-cast p2, [Lmiuix/animation/base/AnimConfig;

    .line 30
    iget v0, p0, Lmiuix/animation/controller/FolmeFont;->mInitValue:I

    .line 32
    if-ne v0, p1, :cond_29

    .line 34
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 36
    sget-object v0, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    .line 38
    invoke-interface {p1, v0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 41
    goto :goto_3c

    .line 42
    :cond_29
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 44
    sget-object v1, Lmiuix/animation/controller/FolmeFont$FontType;->TARGET:Lmiuix/animation/controller/FolmeFont$FontType;

    .line 46
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 49
    move-result-object v0

    .line 50
    iget-object v2, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    .line 52
    int-to-double v3, p1

    .line 53
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 56
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 58
    invoke-interface {p1, v1, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 61
    :cond_3c
    :goto_3c
    return-object p0
.end method

.method public useAt(Landroid/widget/TextView;II)Lmiuix/animation/IVarFontStyle;
    .registers 6

    .line 1
    new-instance v0, Lmiuix/animation/controller/FolmeState;

    .line 3
    sget-object v1, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    .line 5
    invoke-static {p1, v1}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeState;-><init>(Lmiuix/animation/IAnimTarget;)V

    .line 12
    iput-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 14
    new-instance v0, Lmiuix/animation/font/FontWeightProperty;

    .line 16
    invoke-direct {v0, p1, p2}, Lmiuix/animation/font/FontWeightProperty;-><init>(Landroid/widget/TextView;I)V

    .line 19
    iput-object v0, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    .line 21
    iput p3, p0, Lmiuix/animation/controller/FolmeFont;->mInitValue:I

    .line 23
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 25
    sget-object p2, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    .line 27
    invoke-interface {p1, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    .line 33
    int-to-double v0, p3

    .line 34
    invoke-virtual {p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 37
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeFont;->mIsInitSet:Z

    .line 40
    return-object p0
.end method
