.class public final Landroidx/constraintlayout/motion/widget/MotionLayout$d;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:Landroid/graphics/Paint;

.field public c:Landroid/graphics/Paint;

.field public d:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    .line 11
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:Landroid/graphics/Paint;

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:Landroid/graphics/Paint;

    .line 22
    const/16 v2, -0x55cd

    .line 24
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:Landroid/graphics/Paint;

    .line 29
    const/high16 v2, 0x40000000  # 2.0f

    .line 31
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:Landroid/graphics/Paint;

    .line 36
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 38
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    .line 43
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 46
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->b:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->b:Landroid/graphics/Paint;

    .line 53
    const v3, -0x1f8a66

    .line 56
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->b:Landroid/graphics/Paint;

    .line 61
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->b:Landroid/graphics/Paint;

    .line 66
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 68
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    .line 73
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 76
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->c:Landroid/graphics/Paint;

    .line 78
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->c:Landroid/graphics/Paint;

    .line 83
    const v3, -0xcc5600

    .line 86
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->c:Landroid/graphics/Paint;

    .line 91
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->c:Landroid/graphics/Paint;

    .line 96
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 98
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    .line 103
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 106
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Paint;

    .line 108
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Paint;

    .line 113
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Paint;

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 129
    move-result-object p1

    .line 130
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 132
    const/high16 v2, 0x41400000  # 12.0f

    .line 134
    mul-float/2addr p1, v2

    .line 135
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    new-instance p1, Landroid/graphics/Paint;

    .line 140
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 143
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    new-instance p1, Landroid/graphics/DashPathEffect;

    .line 148
    const/4 v0, 0x2

    .line 149
    new-array v0, v0, [F

    .line 151
    fill-array-data v0, :array_a4

    .line 154
    const/4 v1, 0x0

    .line 155
    invoke-direct {p1, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 158
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->c:Landroid/graphics/Paint;

    .line 160
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 163
    return-void

    .line 164
    nop

    .line 165
    :array_a4
    .array-data 4
        0x40800000  # 4.0f
        0x41000000  # 8.0f
    .end array-data
.end method
