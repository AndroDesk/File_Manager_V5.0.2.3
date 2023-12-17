.class public Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;
.super Ljava/lang/Object;
.source "DragHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/draganddrop/DragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MaskHelper"
.end annotation


# instance fields
.field private final mConfig:Lmiuix/animation/base/AnimConfig;

.field private mMask:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mSkipSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiuix/navigator/adapter/CategoryAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lmiuix/navigator/draganddrop/DragHelper;


# direct methods
.method private constructor <init>(Lmiuix/navigator/draganddrop/DragHelper;)V
    .registers 6

    .line 2
    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mPaint:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/high16 v2, 0x42c80000  # 100.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x4

    .line 5
    invoke-static {v2, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 6
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 v0, -0x1000000

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/navigator/draganddrop/DragHelper;Lmiuix/navigator/draganddrop/DragHelper$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;-><init>(Lmiuix/navigator/draganddrop/DragHelper;)V

    return-void
.end method

.method public static synthetic access$100(Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;)Ljava/util/Set;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mSkipSet:Ljava/util/Set;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;)Landroid/graphics/Paint;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mPaint:Landroid/graphics/Paint;

    .line 3
    return-object p0
.end method


# virtual methods
.method public getAlpha()F
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    const/high16 v1, 0x43800000  # 256.0f

    .line 10
    div-float/2addr v0, v1

    .line 11
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mPaint:Landroid/graphics/Paint;

    .line 3
    const/high16 v1, 0x43800000  # 256.0f

    .line 5
    mul-float/2addr v1, p1

    .line 6
    float-to-int v1, v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    .line 12
    invoke-static {v0}, Lmiuix/navigator/draganddrop/DragHelper;->access$500(Lmiuix/navigator/draganddrop/DragHelper;)Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 19
    const/4 v0, 0x0

    .line 20
    cmpl-float p1, p1, v0

    .line 22
    if-nez p1, :cond_1a

    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mSkipSet:Ljava/util/Set;

    .line 27
    :cond_1a
    return-void
.end method

.method public setMask(Z)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mMask:Z

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-boolean p1, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mMask:Z

    .line 8
    if-eqz p1, :cond_15

    .line 10
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    .line 12
    invoke-static {v0}, Lmiuix/navigator/draganddrop/DragHelper;->access$1100(Lmiuix/navigator/draganddrop/DragHelper;)Ljava/util/Map;

    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mSkipSet:Ljava/util/Set;

    .line 22
    :cond_15
    const/4 v0, 0x1

    .line 23
    new-array v1, v0, [Ljava/lang/Object;

    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object p0, v1, v2

    .line 28
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {}, Lmiuix/navigator/draganddrop/DragHelper;->access$1200()Lmiuix/animation/property/FloatProperty;

    .line 35
    move-result-object v3

    .line 36
    if-eqz p1, :cond_29

    .line 38
    const p1, 0x3f333333  # 0.7f

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    const/4 p1, 0x0

    .line 43
    :goto_2a
    invoke-interface {v1, v3, p1}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 46
    move-result-object p1

    .line 47
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 49
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 51
    aput-object v1, v0, v2

    .line 53
    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 56
    return-void
.end method
