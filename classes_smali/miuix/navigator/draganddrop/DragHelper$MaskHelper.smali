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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lmiuix/navigator/draganddrop/DragHelper;)V
    .registers 6

    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/high16 v2, 0x42c80000  # 100.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mConfig:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/navigator/draganddrop/DragHelper;Lmiuix/navigator/draganddrop/DragHelper$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;-><init>(Lmiuix/navigator/draganddrop/DragHelper;)V

    return-void
.end method

.method public static synthetic access$100(Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mSkipSet:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;)Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public getAlpha()F
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43800000  # 256.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(F)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x43800000  # 256.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-static {v0}, Lmiuix/navigator/draganddrop/DragHelper;->access$500(Lmiuix/navigator/draganddrop/DragHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mSkipSet:Ljava/util/Set;

    :cond_1a
    return-void
.end method

.method public setMask(Z)V
    .registers 6

    iget-boolean v0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mMask:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mMask:Z

    if-eqz p1, :cond_15

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-static {v0}, Lmiuix/navigator/draganddrop/DragHelper;->access$1100(Lmiuix/navigator/draganddrop/DragHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mSkipSet:Ljava/util/Set;

    :cond_15
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    invoke-static {}, Lmiuix/navigator/draganddrop/DragHelper;->access$1200()Lmiuix/animation/property/FloatProperty;

    move-result-object v3

    if-eqz p1, :cond_29

    const p1, 0x3f333333  # 0.7f

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    invoke-interface {v1, v3, p1}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->mConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method
