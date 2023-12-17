.class public Lmiuix/springback/trigger/DefaultTrigger;
.super Lmiuix/springback/trigger/CustomTrigger;
.source "DefaultTrigger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultCustomTrigger"

.field private static mIndeterminateTop:I


# instance fields
.field private mContext:Landroid/content/Context;

.field public mIndeterminateActionPoint:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mIndeterminateSimpleActionPoint:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mIndeterminateUpActionPoint:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mOnActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

.field private mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

.field private mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

.field private mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

.field private mOnUpActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

.field private mTrackingIndicator:Landroid/view/View;

.field private mTrackingIndicatorBottom:I

.field private mTrackingIndicatorLabel:Landroid/widget/TextView;

.field private mTrackingIndicatorLabelBottom:I

.field private mTrackingIndicatorLabelTop:I

.field private mUpLoadingIndicator:Landroid/widget/ProgressBar;

.field private mUpTrackingContainer:Landroid/view/ViewGroup;

.field private mUpTrackingIndicator:Landroid/view/View;

.field private mUpTrackingIndicatorLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    iput v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    .line 11
    iput v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelTop:I

    .line 13
    iput v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelBottom:I

    .line 15
    new-instance v2, Lmiuix/springback/trigger/DefaultTrigger$1;

    .line 17
    invoke-direct {v2, p0}, Lmiuix/springback/trigger/DefaultTrigger$1;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    .line 20
    iput-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    .line 22
    new-instance v2, Lmiuix/springback/trigger/DefaultTrigger$2;

    .line 24
    invoke-direct {v2, p0}, Lmiuix/springback/trigger/DefaultTrigger$2;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    .line 27
    iput-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnUpActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    .line 29
    new-instance v2, Lmiuix/springback/trigger/DefaultTrigger$3;

    .line 31
    invoke-direct {v2, p0}, Lmiuix/springback/trigger/DefaultTrigger$3;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    .line 34
    iput-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    .line 36
    new-instance v2, Lmiuix/springback/trigger/DefaultTrigger$4;

    .line 38
    invoke-direct {v2, p0}, Lmiuix/springback/trigger/DefaultTrigger$4;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    .line 41
    iput-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    .line 43
    new-instance v2, Lmiuix/springback/trigger/DefaultTrigger$5;

    .line 45
    invoke-direct {v2, p0}, Lmiuix/springback/trigger/DefaultTrigger$5;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    .line 48
    iput-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    .line 50
    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContext:Landroid/content/Context;

    .line 52
    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    .line 54
    invoke-virtual {p0, v2}, Lmiuix/springback/trigger/CustomTrigger;->setOnActionDataListener(Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;)V

    .line 57
    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnUpActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    .line 59
    invoke-virtual {p0, v2}, Lmiuix/springback/trigger/CustomTrigger;->setOnUpActionDataListener(Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object p1

    .line 66
    sget v2, Lmiuix/springback/R$dimen;->miuix_sbl_tracking_progress_bg_margintop:I

    .line 68
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    move-result p1

    .line 72
    sput p1, Lmiuix/springback/trigger/DefaultTrigger;->mIndeterminateTop:I

    .line 74
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object p1

    .line 80
    sget v2, Lmiuix/springback/R$dimen;->miuix_sbl_action_indeterminate_distance:I

    .line 82
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    move-result p1

    .line 86
    new-instance v2, Landroid/util/Pair;

    .line 88
    add-int/2addr p1, v0

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object p1

    .line 93
    invoke-direct {v2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    iput-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mIndeterminateActionPoint:Landroid/util/Pair;

    .line 98
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    move-result-object p1

    .line 104
    sget v2, Lmiuix/springback/R$dimen;->miuix_sbl_action_upindeterminate_distance:I

    .line 106
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 109
    move-result p1

    .line 110
    new-instance v2, Landroid/util/Pair;

    .line 112
    add-int/2addr p1, v0

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object p1

    .line 117
    invoke-direct {v2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    iput-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mIndeterminateUpActionPoint:Landroid/util/Pair;

    .line 122
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 127
    move-result-object p1

    .line 128
    sget v0, Lmiuix/springback/R$dimen;->miuix_sbl_action_simple_enter:I

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 133
    move-result p1

    .line 134
    new-instance v0, Landroid/util/Pair;

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    move-result-object v1

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object p1

    .line 144
    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mIndeterminateSimpleActionPoint:Landroid/util/Pair;

    .line 149
    return-void
.end method

.method public static synthetic access$000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingIndicatorLabel:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpLoadingIndicator:Landroid/widget/ProgressBar;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingIndicator:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/springback/trigger/DefaultTrigger;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->viewShow(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingContainer:Landroid/view/ViewGroup;

    .line 3
    return-object p0
.end method

.method private initIndeterminateActionView()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lmiuix/springback/R$id;->tracking_progress:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    .line 13
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    .line 16
    move-result-object v0

    .line 17
    sget v1, Lmiuix/springback/R$id;->tracking_progress_label:I

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    .line 27
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    .line 30
    move-result-object v0

    .line 31
    sget v1, Lmiuix/springback/R$id;->loading_progress:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/ProgressBar;

    .line 39
    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 41
    return-void
.end method

.method private initIndeterminateUpActionView()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lmiuix/springback/R$id;->tracking_progress_up_container:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingContainer:Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    sget v1, Lmiuix/springback/R$id;->tracking_progress_up:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingIndicator:Landroid/view/View;

    .line 27
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    sget v1, Lmiuix/springback/R$id;->tracking_progress_up_label:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingIndicatorLabel:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    sget v1, Lmiuix/springback/R$id;->loading_progress_up:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/ProgressBar;

    .line 53
    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpLoadingIndicator:Landroid/widget/ProgressBar;

    .line 55
    return-void
.end method

.method private initSimpleActionView()V
    .registers 1

    return-void
.end method

.method private updateTextIdToString(Landroid/content/Context;[I[Ljava/lang/String;)V
    .registers 7

    .line 1
    if-eqz p2, :cond_15

    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_3
    array-length v1, p2

    .line 5
    if-ge v0, v1, :cond_15

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 11
    aget v2, p2, v0

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    aput-object v1, p3, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_3

    .line 22
    :cond_15
    return-void
.end method

.method private viewShow(Landroid/view/View;)V
    .registers 13

    .line 1
    if-eqz p1, :cond_8a

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 9
    const-string v2, "start"

    .line 11
    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 14
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 16
    const-wide/16 v3, 0x0

    .line 18
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 21
    move-result-object v1

    .line 22
    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 24
    const-wide v6, -0x3f99800000000000L  # -180.0

    .line 29
    invoke-virtual {v1, v5, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 32
    move-result-object v1

    .line 33
    new-instance v6, Lmiuix/animation/controller/AnimState;

    .line 35
    const-string v7, "show"

    .line 37
    invoke-direct {v6, v7}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 40
    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    .line 42
    invoke-virtual {v6, v2, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 45
    move-result-object v6

    .line 46
    const-wide/high16 v9, 0x4039000000000000L  # 25.0

    .line 48
    invoke-virtual {v6, v5, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 51
    move-result-object v6

    .line 52
    new-instance v9, Lmiuix/animation/controller/AnimState;

    .line 54
    const-string v10, "hide"

    .line 56
    invoke-direct {v9, v10}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v9, v2, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2, v5, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 66
    move-result-object v2

    .line 67
    const/4 v3, 0x1

    .line 68
    new-array v4, v3, [Landroid/view/View;

    .line 70
    aput-object p1, v4, v0

    .line 72
    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 79
    move-result-object p1

    .line 80
    const-wide/16 v4, 0x1

    .line 82
    invoke-interface {p1, v4, v5}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    .line 85
    move-result-object p1

    .line 86
    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    .line 88
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 90
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 93
    const/4 v7, 0x3

    .line 94
    new-array v8, v7, [F

    .line 96
    fill-array-data v8, :array_8c

    .line 99
    const/4 v9, 0x4

    .line 100
    invoke-static {v9, v8}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v5, v8}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 107
    move-result-object v5

    .line 108
    aput-object v5, v4, v0

    .line 110
    invoke-interface {p1, v1, v6, v4}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 113
    move-result-object p1

    .line 114
    new-array v1, v3, [Lmiuix/animation/base/AnimConfig;

    .line 116
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    .line 118
    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 121
    new-array v4, v7, [F

    .line 123
    fill-array-data v4, :array_96

    .line 126
    invoke-static {v9, v4}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 133
    move-result-object v3

    .line 134
    aput-object v3, v1, v0

    .line 136
    invoke-interface {p1, v2, v1}, Lmiuix/animation/IStateStyle;->then(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 139
    :cond_8a
    return-void

    .line 140
    nop

    .line 141
    :array_8c
    .array-data 4
        0x42f00000  # 120.0f
        0x3f7d70a4  # 0.99f
        0x3dcccccd  # 0.1f
    .end array-data

    .line 151
    :array_96
    .array-data 4
        0x42200000  # 40.0f
        0x3f7d70a4  # 0.99f
        0x3dcccccd  # 0.1f
    .end array-data
.end method


# virtual methods
.method public addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    .line 4
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    invoke-direct {p0}, Lmiuix/springback/trigger/DefaultTrigger;->initIndeterminateUpActionView()V

    .line 11
    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 13
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    .line 15
    invoke-virtual {p0, v0}, Lmiuix/springback/trigger/CustomTrigger;->setOnIndeterminateUpActionViewListener(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;)V

    .line 18
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContext:Landroid/content/Context;

    .line 20
    iget-object v1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTextIDs:[I

    .line 22
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    .line 24
    invoke-direct {p0, v0, v1, p1}, Lmiuix/springback/trigger/DefaultTrigger;->updateTextIdToString(Landroid/content/Context;[I[Ljava/lang/String;)V

    .line 27
    goto :goto_3f

    .line 28
    :cond_1b
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 30
    if-eqz v0, :cond_33

    .line 32
    invoke-direct {p0}, Lmiuix/springback/trigger/DefaultTrigger;->initIndeterminateActionView()V

    .line 35
    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 37
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    .line 39
    invoke-virtual {p0, v0}, Lmiuix/springback/trigger/CustomTrigger;->setOnIndeterminateActionViewListener(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;)V

    .line 42
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContext:Landroid/content/Context;

    .line 44
    iget-object v1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTextIDs:[I

    .line 46
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    .line 48
    invoke-direct {p0, v0, v1, p1}, Lmiuix/springback/trigger/DefaultTrigger;->updateTextIdToString(Landroid/content/Context;[I[Ljava/lang/String;)V

    .line 51
    goto :goto_3f

    .line 52
    :cond_33
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 54
    if-eqz p1, :cond_3f

    .line 56
    invoke-direct {p0}, Lmiuix/springback/trigger/DefaultTrigger;->initSimpleActionView()V

    .line 59
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    .line 61
    invoke-virtual {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->setOnSimpleActionViewListener(Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;)V

    .line 64
    :cond_3f
    :goto_3f
    return-void
.end method

.method public containAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/springback/trigger/BaseTrigger;->containAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public isActionRunning()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/springback/trigger/CustomTrigger;->isActionRunning()Z

    move-result v0

    return v0
.end method

.method public isActionRunning(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .registers 2

    .line 2
    invoke-super {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->isActionRunning(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    move-result p1

    return p1
.end method

.method public onSpringBackLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->isExitIndeterminateAction()Z

    move-result p1

    if-eqz p1, :cond_c3

    const/4 p1, 0x0

    move p2, p1

    .line 2
    :goto_8
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getActions()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_47

    .line 3
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getActions()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 4
    instance-of p4, p3, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz p4, :cond_44

    .line 5
    check-cast p3, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 6
    sget p4, Lmiuix/springback/trigger/DefaultTrigger;->mIndeterminateTop:I

    iget-object p5, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p5

    if-lt p4, p5, :cond_44

    .line 7
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    iget p5, p3, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    sub-int/2addr p5, p1

    .line 8
    invoke-virtual {p4, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 9
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    iget p5, p3, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    sub-int/2addr p5, p1

    .line 10
    invoke-virtual {p4, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 11
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    iget p3, p3, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    sub-int/2addr p3, p1

    .line 12
    invoke-virtual {p4, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_44
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 13
    :cond_47
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c3

    .line 14
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p1

    if-eqz p1, :cond_c3

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz p1, :cond_c3

    .line 15
    iget p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    if-gtz p1, :cond_69

    .line 16
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    .line 17
    :cond_69
    iget p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelTop:I

    if-lez p1, :cond_71

    iget p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelBottom:I

    if-gtz p1, :cond_81

    .line 18
    :cond_71
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelTop:I

    .line 19
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelBottom:I

    .line 20
    :cond_81
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_94

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_c3

    .line 22
    :cond_94
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentState()Lmiuix/springback/trigger/TriggerState;

    move-result-object p1

    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    if-eq p1, p2, :cond_c3

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p2

    iget p2, p2, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-le p1, p2, :cond_c3

    .line 23
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    iget p2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    .line 24
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p4

    iget p4, p4, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    sub-int/2addr p3, p4

    add-int/2addr p3, p2

    .line 25
    invoke-virtual {p1, p3}, Landroid/view/View;->setBottom(I)V

    .line 26
    :cond_c3
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->isExitSimpleAction()Z

    move-result p1

    if-eqz p1, :cond_ef

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_ef

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-nez p1, :cond_ef

    .line 27
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    move-result-object p1

    iget p2, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_ef
    return-void
.end method

.method public onSpringBackScrolled(Lmiuix/springback/view/SpringBackLayout;III)V
    .registers 11

    .line 1
    const/4 p1, 0x0

    .line 2
    if-gez p4, :cond_30

    .line 4
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->isExitIndeterminateUpAction()Z

    .line 7
    move-result p2

    .line 8
    if-eqz p2, :cond_30

    .line 10
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_30

    .line 16
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 19
    move-result-object p2

    .line 20
    instance-of p2, p2, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 22
    if-eqz p2, :cond_30

    .line 24
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 31
    move-result p2

    .line 32
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 35
    move-result-object p4

    .line 36
    iget p4, p4, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 38
    sub-int/2addr p2, p4

    .line 39
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 42
    move-result p2

    .line 43
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingContainer:Landroid/view/ViewGroup;

    .line 45
    int-to-float p2, p2

    .line 46
    invoke-virtual {p4, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 49
    :cond_30
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->isExitIndeterminateAction()Z

    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_1a1

    .line 55
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 58
    move-result-object p2

    .line 59
    if-eqz p2, :cond_1a1

    .line 61
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 64
    move-result-object p2

    .line 65
    instance-of p2, p2, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 67
    if-eqz p2, :cond_1a1

    .line 69
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 75
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    .line 77
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 80
    move-result p4

    .line 81
    if-nez p4, :cond_1a1

    .line 83
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    .line 85
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    .line 88
    move-result p4

    .line 89
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 94
    move-result v0

    .line 95
    add-int/2addr v0, p4

    .line 96
    iput v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    .line 98
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    .line 100
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    .line 103
    move-result p4

    .line 104
    iput p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelTop:I

    .line 106
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    .line 108
    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    .line 111
    move-result p4

    .line 112
    iput p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelBottom:I

    .line 114
    iget p4, p2, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 116
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 123
    move-result v0

    .line 124
    int-to-float v0, v0

    .line 125
    int-to-float p4, p4

    .line 126
    div-float/2addr v0, p4

    .line 127
    const/high16 v1, 0x3f800000  # 1.0f

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 132
    move-result v0

    .line 133
    const/4 v2, 0x0

    .line 134
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 137
    move-result v0

    .line 138
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 145
    move-result v3

    .line 146
    int-to-float v3, v3

    .line 147
    const/high16 v4, 0x3f000000  # 0.5f

    .line 149
    mul-float/2addr v4, p4

    .line 150
    cmpg-float v3, v3, v4

    .line 152
    if-gez v3, :cond_9b

    .line 154
    move v3, v2

    .line 155
    goto :goto_aa

    .line 156
    :cond_9b
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 163
    move-result v3

    .line 164
    int-to-float v3, v3

    .line 165
    sub-float/2addr v3, v4

    .line 166
    div-float/2addr v3, v4

    .line 167
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    .line 170
    move-result v3

    .line 171
    :goto_aa
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 174
    move-result v3

    .line 175
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 182
    move-result v5

    .line 183
    int-to-float v5, v5

    .line 184
    cmpg-float v4, v5, v4

    .line 186
    if-gez v4, :cond_bd

    .line 188
    move p4, v2

    .line 189
    goto :goto_d4

    .line 190
    :cond_bd
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 197
    move-result v4

    .line 198
    int-to-float v4, v4

    .line 199
    const v5, 0x3f333333  # 0.7f

    .line 202
    mul-float/2addr v5, p4

    .line 203
    sub-float/2addr v4, v5

    .line 204
    const v5, 0x3e99999a  # 0.3f

    .line 207
    mul-float/2addr p4, v5

    .line 208
    div-float/2addr v4, p4

    .line 209
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    .line 212
    move-result p4

    .line 213
    :goto_d4
    invoke-static {v2, p4}, Ljava/lang/Math;->max(FF)F

    .line 216
    move-result p4

    .line 217
    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    .line 219
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 222
    move-result v4

    .line 223
    neg-int v4, v4

    .line 224
    int-to-float v4, v4

    .line 225
    sub-float/2addr v1, v0

    .line 226
    mul-float/2addr v1, v4

    .line 227
    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    .line 229
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 232
    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    .line 234
    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleX(F)V

    .line 237
    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    .line 239
    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleY(F)V

    .line 242
    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    .line 244
    invoke-virtual {v4, p4}, Landroid/view/View;->setAlpha(F)V

    .line 247
    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    .line 249
    iget v5, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelTop:I

    .line 251
    invoke-virtual {v4, v5}, Landroid/view/View;->setTop(I)V

    .line 254
    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    .line 256
    iget v5, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelBottom:I

    .line 258
    invoke-virtual {v4, v5}, Landroid/view/View;->setBottom(I)V

    .line 261
    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 263
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 266
    move-result v4

    .line 267
    if-nez v4, :cond_11b

    .line 269
    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 271
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 274
    iget-object v3, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 276
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleX(F)V

    .line 279
    iget-object v3, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 281
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleY(F)V

    .line 284
    :cond_11b
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 291
    move-result v0

    .line 292
    iget v3, p2, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 294
    if-ge v0, v3, :cond_149

    .line 296
    cmpl-float p4, p4, v2

    .line 298
    if-lez p4, :cond_130

    .line 300
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    .line 302
    invoke-virtual {p4, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 305
    :cond_130
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentState()Lmiuix/springback/trigger/TriggerState;

    .line 308
    move-result-object p4

    .line 309
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    .line 311
    if-ne p4, v0, :cond_141

    .line 313
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    .line 315
    iget-object p2, p2, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    .line 317
    aget-object p2, p2, p1

    .line 319
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :cond_141
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    .line 324
    iget p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    .line 326
    invoke-virtual {p2, p4}, Landroid/view/View;->setBottom(I)V

    .line 329
    goto :goto_1a1

    .line 330
    :cond_149
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    .line 333
    move-result-object p4

    .line 334
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    .line 337
    move-result p4

    .line 338
    iget v0, p2, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 340
    if-lt p4, v0, :cond_1a1

    .line 342
    iget p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    .line 344
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 351
    move-result v0

    .line 352
    iget v1, p2, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 354
    sub-int/2addr v0, v1

    .line 355
    add-int/2addr v0, p4

    .line 356
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 358
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 361
    move-result p4

    .line 362
    if-eqz p4, :cond_18a

    .line 364
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentState()Lmiuix/springback/trigger/TriggerState;

    .line 367
    move-result-object p4

    .line 368
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    .line 370
    if-eq p4, v1, :cond_18a

    .line 372
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    .line 374
    invoke-virtual {p4, v0}, Landroid/view/View;->setBottom(I)V

    .line 377
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    .line 379
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    .line 382
    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 386
    move-result v0

    .line 387
    iget v1, p2, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 389
    sub-int/2addr v0, v1

    .line 390
    int-to-float v0, v0

    .line 391
    invoke-virtual {p4, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 394
    goto :goto_18f

    .line 395
    :cond_18a
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    .line 397
    invoke-virtual {p4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 400
    :goto_18f
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentState()Lmiuix/springback/trigger/TriggerState;

    .line 403
    move-result-object p4

    .line 404
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    .line 406
    if-ne p4, v0, :cond_1a1

    .line 408
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    .line 410
    iget-object p2, p2, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    .line 412
    const/4 v0, 0x1

    .line 413
    aget-object p2, p2, v0

    .line 415
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    :cond_1a1
    :goto_1a1
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->isExitSimpleAction()Z

    .line 421
    move-result p2

    .line 422
    const/16 p4, 0x8

    .line 424
    if-eqz p2, :cond_1cf

    .line 426
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 429
    move-result-object p2

    .line 430
    if-eqz p2, :cond_1cf

    .line 432
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 435
    move-result-object p2

    .line 436
    instance-of p2, p2, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 438
    if-eqz p2, :cond_1cf

    .line 440
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    .line 443
    move-result-object p2

    .line 444
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 447
    move-result p2

    .line 448
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 451
    move-result-object v0

    .line 452
    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 454
    if-ge p2, v0, :cond_1cf

    .line 456
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    .line 459
    move-result-object p1

    .line 460
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 463
    goto :goto_20b

    .line 464
    :cond_1cf
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->isExitSimpleAction()Z

    .line 467
    move-result p2

    .line 468
    if-eqz p2, :cond_20b

    .line 470
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 473
    move-result-object p2

    .line 474
    if-eqz p2, :cond_20b

    .line 476
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 479
    move-result-object p2

    .line 480
    instance-of p2, p2, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 482
    if-eqz p2, :cond_20b

    .line 484
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    .line 487
    move-result-object p2

    .line 488
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 491
    move-result p2

    .line 492
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 495
    move-result-object v0

    .line 496
    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 498
    if-lt p2, v0, :cond_20b

    .line 500
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    .line 503
    move-result-object p2

    .line 504
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 507
    move-result p2

    .line 508
    if-ne p2, p4, :cond_20b

    .line 510
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    .line 513
    move-result-object p2

    .line 514
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 517
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    .line 520
    move-result-object p1

    .line 521
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->viewShow(Landroid/view/View;)V

    .line 524
    :cond_20b
    :goto_20b
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->isExitSimpleAction()Z

    .line 527
    move-result p1

    .line 528
    if-eqz p1, :cond_229

    .line 530
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 533
    move-result-object p1

    .line 534
    if-eqz p1, :cond_229

    .line 536
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    .line 539
    move-result-object p1

    .line 540
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 543
    move-result p1

    .line 544
    if-nez p1, :cond_229

    .line 546
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    .line 549
    move-result-object p1

    .line 550
    neg-int p2, p3

    .line 551
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 554
    :cond_229
    return-void
.end method
