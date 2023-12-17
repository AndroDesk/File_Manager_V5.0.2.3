.class public Lcom/android/fileexplorer/view/viewlarge/struct/Anim;
.super Ljava/lang/Object;
.source "Anim.java"


# instance fields
.field public duration:J

.field public easing:I

.field public interruptible:Z

.field public sCenterEnd:Landroid/graphics/PointF;

.field public sCenterEndRequested:Landroid/graphics/PointF;

.field public sCenterStart:Landroid/graphics/PointF;

.field public scaleEnd:F

.field public scaleStart:F

.field public time:J

.field public vFocusEnd:Landroid/graphics/PointF;

.field public vFocusStart:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->duration:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->interruptible:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->easing:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->time:J

    return-void
.end method
