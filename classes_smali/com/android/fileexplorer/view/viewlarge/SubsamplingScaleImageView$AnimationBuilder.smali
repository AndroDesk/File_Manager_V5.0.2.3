.class public final Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
.super Ljava/lang/Object;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AnimationBuilder"
.end annotation


# instance fields
.field private duration:J

.field private easing:I

.field private interruptible:Z

.field private panLimited:Z

.field private final targetSCenter:Landroid/graphics/PointF;

.field private final targetScale:F

.field public final synthetic this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

.field private final vFocus:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;F)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetScale:F

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;)V
    .registers 6

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetScale:F

    iput-object p3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 7

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetScale:F

    iput-object p3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;F)V

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    invoke-static {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)F

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetScale:F

    iput-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;Z)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->withPanLimited(Z)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object p0

    return-object p0
.end method

.method private withPanLimited(Z)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    return-object p0
.end method


# virtual methods
.method public start()V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    iget v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetScale:F

    invoke-static {v0, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2700(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;F)F

    move-result v0

    iget-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    invoke-static {v3, v5, v4, v0, v6}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_5a

    :cond_58
    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    :goto_5a
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    new-instance v5, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    invoke-direct {v5}, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;-><init>()V

    invoke-static {v4, v5}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2902(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Lcom/android/fileexplorer/view/viewlarge/struct/Anim;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    move-result-object v4

    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v5}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)F

    move-result v5

    iput v5, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->scaleStart:F

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    move-result-object v4

    iput v0, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->scaleEnd:F

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->time:J

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    move-result-object v4

    iput-object v3, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterEndRequested:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    move-result-object v4

    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-virtual {v5}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v5

    iput-object v5, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterStart:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    move-result-object v4

    iput-object v3, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterEnd:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    move-result-object v4

    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-virtual {v5, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    iput-object v3, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->vFocusStart:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    move-result-object v3

    new-instance v4, Landroid/graphics/PointF;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {v4, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->vFocusEnd:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    iput-wide v2, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->duration:J

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    iput-boolean v2, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->interruptible:Z

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    move-result-object v1

    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    iput v2, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->easing:I

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->time:J

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    if-eqz v1, :cond_13a

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    move-result-object v2

    iget-object v2, v2, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    move-result-object v3

    iget-object v3, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    new-instance v3, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v3, v0, v4}, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    const/4 v4, 0x1

    invoke-static {v0, v4, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$3000(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;ZLcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    move-result-object v0

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget-object v3, v3, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v1

    add-float/2addr v7, v6

    iget v1, v5, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v2

    add-float/2addr v3, v1

    invoke-direct {v4, v7, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->vFocusEnd:Landroid/graphics/PointF;

    :cond_13a
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public withDuration(J)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 3

    iput-wide p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    return-object p0
.end method

.method public withEasing(I)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2600()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    return-object p0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown easing type: "

    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withInterruptible(Z)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    return-object p0
.end method
