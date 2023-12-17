.class public Lcom/android/fileexplorer/util/FolmeAnimUtil;
.super Ljava/lang/Object;
.source "FolmeAnimUtil.java"


# static fields
.field private static STYLE_SIZE_WH_CLOSE:Lmiuix/animation/utils/EaseManager$EaseStyle; = null

.field private static STYLE_SIZE_WH_EXPAND:Lmiuix/animation/utils/EaseManager$EaseStyle; = null

.field private static STYLE_TRANSLATE_XY_CLOSE:Lmiuix/animation/utils/EaseManager$EaseStyle; = null

.field private static STYLE_TRANSLATE_XY_EXPAND:Lmiuix/animation/utils/EaseManager$EaseStyle; = null

.field private static final TAG:Ljava/lang/String; = "FolmeAnimUtil"

.field private static mFloatEvaluator:Landroid/animation/FloatEvaluator;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_36

    .line 7
    const/4 v2, -0x2

    .line 8
    invoke-static {v2, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Lcom/android/fileexplorer/util/FolmeAnimUtil;->STYLE_TRANSLATE_XY_EXPAND:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 14
    new-array v1, v0, [F

    .line 16
    fill-array-data v1, :array_3e

    .line 19
    invoke-static {v2, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 22
    move-result-object v1

    .line 23
    sput-object v1, Lcom/android/fileexplorer/util/FolmeAnimUtil;->STYLE_TRANSLATE_XY_CLOSE:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 25
    new-array v1, v0, [F

    .line 27
    fill-array-data v1, :array_46

    .line 30
    invoke-static {v2, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 33
    move-result-object v1

    .line 34
    sput-object v1, Lcom/android/fileexplorer/util/FolmeAnimUtil;->STYLE_SIZE_WH_EXPAND:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 36
    new-array v0, v0, [F

    .line 38
    fill-array-data v0, :array_4e

    .line 41
    invoke-static {v2, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/fileexplorer/util/FolmeAnimUtil;->STYLE_SIZE_WH_CLOSE:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 47
    new-instance v0, Landroid/animation/FloatEvaluator;

    .line 49
    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    .line 52
    sput-object v0, Lcom/android/fileexplorer/util/FolmeAnimUtil;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    .line 54
    return-void

    .line 55
    :array_36
    .array-data 4
        0x3f666666  # 0.9f
        0x3e99999a  # 0.3f
    .end array-data

    .line 63
    :array_3e
    .array-data 4
        0x3f666666  # 0.9f
        0x3e99999a  # 0.3f
    .end array-data

    .line 71
    :array_46
    .array-data 4
        0x3f666666  # 0.9f
        0x3ecccccd  # 0.4f
    .end array-data

    .line 79
    :array_4e
    .array-data 4
        0x3f666666  # 0.9f
        0x3e800000  # 0.25f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Landroid/animation/FloatEvaluator;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/FolmeAnimUtil;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    .line 3
    return-object v0
.end method

.method public static animHide(Landroid/view/View;FLmiuix/animation/listener/TransitionListener;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    :try_start_4
    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 9
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 11
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array v1, v0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v3, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v3, v1, v2

    invoke-interface {p0, p1, v1}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    aput-object p2, v0, v2

    invoke-virtual {v1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-interface {p0, p1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_37

    goto :goto_4e

    :catch_37
    move-exception p0

    const-string p1, "animShow error: "

    .line 12
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FolmeAnimUtil"

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4e
    return-void
.end method

.method public static animHide(Landroid/view/View;Lmiuix/animation/listener/TransitionListener;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    :try_start_4
    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 3
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    aput-object p1, v0, v2

    invoke-virtual {v3, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-interface {p0, v1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_2d

    goto :goto_44

    :catch_2d
    move-exception p0

    const-string p1, "animShow error: "

    .line 4
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FolmeAnimUtil"

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method public static animScale(Landroid/view/View;IIIILmiuix/animation/listener/TransitionListener;)V
    .registers 16

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_48

    .line 7
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x12c

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    new-instance v1, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 18
    invoke-direct {v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    .line 21
    const v2, 0x3e99999a  # 0.3f

    .line 24
    invoke-virtual {v1, v2}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 27
    const v2, 0x3f666666  # 0.9f

    .line 30
    invoke-virtual {v1, v2}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 36
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    move-result-object v8

    .line 46
    new-instance v2, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;

    .line 48
    move-object v3, v2

    .line 49
    move v4, p1

    .line 50
    move v5, p3

    .line 51
    move v6, p2

    .line 52
    move v7, p4

    .line 53
    move-object v9, p0

    .line 54
    invoke-direct/range {v3 .. v9}, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;-><init>(IIIILandroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    .line 57
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    new-instance p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$2;

    .line 62
    invoke-direct {p0, p5, v1}, Lcom/android/fileexplorer/util/FolmeAnimUtil$2;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 65
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 71
    return-void

    .line 72
    nop

    .line 73
    :array_48
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static animScale(Landroid/view/View;ZLmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/listener/TransitionListener;)V
    .registers 5

    return-void
.end method

.method public static animShow(Landroid/view/View;Lmiuix/animation/listener/TransitionListener;)V
    .registers 8

    .line 1
    const-string v0, "FolmeAnimUtil"

    .line 3
    if-nez p0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    :try_start_5
    const-string v1, "animShow"

    .line 8
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 15
    const v1, 0x3f4ccccd  # 0.8f

    .line 18
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 24
    const/4 v1, 0x1

    .line 25
    new-array v2, v1, [Landroid/view/View;

    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object p0, v2, v3

    .line 30
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 41
    const/high16 v2, 0x3f800000  # 1.0f

    .line 43
    if-eqz p1, :cond_57

    .line 45
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 48
    move-result-object p0

    .line 49
    new-array v4, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 51
    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 53
    aput-object v5, v4, v3

    .line 55
    invoke-interface {p0, v2, v4}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    .line 58
    move-result-object p0

    .line 59
    new-array v4, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 61
    aput-object v5, v4, v3

    .line 63
    invoke-interface {p0, v2, v4}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    .line 66
    move-result-object p0

    .line 67
    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    .line 69
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 71
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 74
    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    .line 76
    aput-object p1, v1, v3

    .line 78
    invoke-virtual {v4, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 81
    move-result-object p1

    .line 82
    aput-object p1, v2, v3

    .line 84
    invoke-interface {p0, v2}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    .line 87
    goto :goto_88

    .line 88
    :cond_57
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 91
    move-result-object p0

    .line 92
    new-array p1, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 94
    sget-object v4, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 96
    aput-object v4, p1, v3

    .line 98
    invoke-interface {p0, v2, p1}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    .line 101
    move-result-object p0

    .line 102
    new-array p1, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 104
    aput-object v4, p1, v3

    .line 106
    invoke-interface {p0, v2, p1}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    .line 109
    move-result-object p0

    .line 110
    new-array p1, v3, [Lmiuix/animation/base/AnimConfig;

    .line 112
    invoke-interface {p0, p1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_72} :catch_73

    .line 115
    goto :goto_88

    .line 116
    :catch_73
    move-exception p0

    .line 117
    const-string p1, "animShow error: "

    .line 119
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_88
    return-void
.end method

.method public static animShowHide(Landroid/view/View;ZZJ)V
    .registers 7

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const/4 p3, 0x1

    .line 5
    new-array p4, p3, [Landroid/view/View;

    .line 7
    const/4 v0, 0x0

    .line 8
    aput-object p0, p4, v0

    .line 10
    invoke-static {p4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 13
    move-result-object p4

    .line 14
    :try_start_d
    invoke-interface {p4}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Lmiuix/animation/IStateContainer;->clean()V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 24
    if-nez p2, :cond_22

    .line 26
    if-eqz p1, :cond_1c

    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    const/16 v0, 0x8

    .line 31
    :goto_1e
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    return-void

    .line 35
    :cond_22
    if-eqz p1, :cond_40

    .line 37
    const p1, 0x3ecccccd  # 0.4f

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 43
    invoke-interface {p4}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 46
    move-result-object p0

    .line 47
    const/high16 p1, 0x3f800000  # 1.0f

    .line 49
    new-array p2, p3, [Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 51
    sget-object p3, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 53
    aput-object p3, p2, v0

    .line 55
    invoke-interface {p0, p1, p2}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    .line 58
    move-result-object p0

    .line 59
    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    .line 61
    invoke-interface {p0, p1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    .line 64
    goto :goto_5a

    .line 65
    :cond_40
    const p1, 0x3e4ccccd  # 0.2f

    .line 68
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 71
    invoke-interface {p4}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 74
    move-result-object p0

    .line 75
    const/4 p1, 0x0

    .line 76
    new-array p2, p3, [Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 78
    sget-object p3, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 80
    aput-object p3, p2, v0

    .line 82
    invoke-interface {p0, p1, p2}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    .line 85
    move-result-object p0

    .line 86
    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    .line 88
    invoke-interface {p0, p1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5a} :catch_5a

    .line 91
    :catch_5a
    :goto_5a
    return-void
.end method

.method public static animShowToShow(Landroid/view/View;Landroid/view/View;J)V
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_1
    new-array v1, v0, [Landroid/view/View;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 14
    move-result-object p0

    .line 15
    new-array v1, v0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 17
    sget-object v3, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 19
    aput-object v3, v1, v2

    .line 21
    const/high16 v4, 0x3f800000  # 1.0f

    .line 23
    invoke-interface {p0, v4, v1}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0, p2, p3}, Lmiuix/animation/IVisibleStyle;->setShowDelay(J)Lmiuix/animation/IVisibleStyle;

    .line 30
    move-result-object p0

    .line 31
    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    .line 33
    invoke-interface {p0, v1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    .line 36
    new-array p0, v0, [Landroid/view/View;

    .line 38
    aput-object p1, p0, v2

    .line 40
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 43
    move-result-object p0

    .line 44
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 47
    move-result-object p0

    .line 48
    new-array p1, v0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 50
    aput-object v3, p1, v2

    .line 52
    invoke-interface {p0, v4, p1}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    .line 55
    move-result-object p0

    .line 56
    invoke-interface {p0, p2, p3}, Lmiuix/animation/IVisibleStyle;->setShowDelay(J)Lmiuix/animation/IVisibleStyle;

    .line 59
    move-result-object p0

    .line 60
    new-array p1, v2, [Lmiuix/animation/base/AnimConfig;

    .line 62
    invoke-interface {p0, p1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_41

    .line 65
    goto :goto_58

    .line 66
    :catch_41
    move-exception p0

    .line 67
    const-string p1, "animShow error: "

    .line 69
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    const-string p1, "FolmeAnimUtil"

    .line 86
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_58
    return-void
.end method

.method public static crossFade(Landroid/view/View;Landroid/view/View;)V
    .registers 10

    .line 1
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 3
    const-string v1, "hide"

    .line 5
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 8
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 10
    const-wide/16 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 15
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 17
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 20
    const/4 v3, 0x3

    .line 21
    new-array v3, v3, [F

    .line 23
    fill-array-data v3, :array_90

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 30
    new-instance v3, Lmiuix/animation/controller/AnimState;

    .line 32
    const-string v5, "show"

    .line 34
    invoke-direct {v3, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 37
    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    .line 39
    invoke-virtual {v3, v1, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 42
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 44
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 47
    const-wide/16 v5, 0x3c

    .line 49
    invoke-virtual {v1, v5, v6}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 52
    const/4 v5, 0x1

    .line 53
    new-array v6, v5, [F

    .line 55
    const/high16 v7, 0x43960000  # 300.0f

    .line 57
    aput v7, v6, v4

    .line 59
    const/16 v7, 0x10

    .line 61
    invoke-virtual {v1, v7, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 64
    if-eqz p0, :cond_67

    .line 66
    new-array v6, v5, [Landroid/view/View;

    .line 68
    aput-object p0, v6, v4

    .line 70
    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 73
    move-result-object v6

    .line 74
    invoke-interface {v6}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 77
    move-result-object v6

    .line 78
    invoke-interface {v6}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 81
    new-array v6, v5, [Landroid/view/View;

    .line 83
    aput-object p0, v6, v4

    .line 85
    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 88
    move-result-object p0

    .line 89
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 92
    move-result-object p0

    .line 93
    invoke-interface {p0, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 96
    move-result-object p0

    .line 97
    new-array v6, v5, [Lmiuix/animation/base/AnimConfig;

    .line 99
    aput-object v2, v6, v4

    .line 101
    invoke-interface {p0, v0, v6}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 104
    :cond_67
    if-eqz p1, :cond_8f

    .line 106
    new-array p0, v5, [Landroid/view/View;

    .line 108
    aput-object p1, p0, v4

    .line 110
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 113
    move-result-object p0

    .line 114
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 117
    move-result-object p0

    .line 118
    invoke-interface {p0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 121
    new-array p0, v5, [Landroid/view/View;

    .line 123
    aput-object p1, p0, v4

    .line 125
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 128
    move-result-object p0

    .line 129
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 132
    move-result-object p0

    .line 133
    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 136
    move-result-object p0

    .line 137
    new-array p1, v5, [Lmiuix/animation/base/AnimConfig;

    .line 139
    aput-object v1, p1, v4

    .line 141
    invoke-interface {p0, v3, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 144
    :cond_8f
    return-void

    .line 145
    :array_90
    .array-data 4
        0x43960000  # 300.0f
        0x3f7d70a4  # 0.99f
        0x3f2b851f  # 0.67f
    .end array-data
.end method

.method public static hide(Landroid/view/View;)V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->hide(Landroid/view/View;J)V

    return-void
.end method

.method public static hide(Landroid/view/View;J)V
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 2
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 3
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [F

    .line 4
    fill-array-data v3, :array_3e

    invoke-virtual {v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 5
    invoke-virtual {v1, p1, p2}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 6
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, v0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object p2, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object p2, p1, v2

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, v0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object p2, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object p2, p1, v2

    const/high16 p2, 0x3f800000  # 1.0f

    .line 7
    invoke-interface {p0, p2, p1}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, p1, v2

    invoke-interface {p0, p1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    return-void

    :array_3e
    .array-data 4
        0x43960000  # 300.0f
        0x3f7d70a4  # 0.99f
        0x3f2b851f  # 0.67f
    .end array-data
.end method

.method public static show(Landroid/view/View;)V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->show(Landroid/view/View;J)V

    return-void
.end method

.method public static show(Landroid/view/View;J)V
    .registers 8

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 2
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 3
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v0, [F

    const/high16 v4, 0x43960000  # 300.0f

    aput v4, v3, v2

    const/16 v4, 0x10

    .line 4
    invoke-virtual {v1, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 5
    invoke-virtual {v1, p1, p2}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 6
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, v0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object p2, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object p2, p1, v2

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, v0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object p2, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object p2, p1, v2

    const/high16 p2, 0x3f800000  # 1.0f

    .line 7
    invoke-interface {p0, p2, p1}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, p1, v2

    invoke-interface {p0, p1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method
