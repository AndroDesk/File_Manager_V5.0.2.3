.class public final Landroidx/core/widget/a$b;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/core/widget/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/core/widget/a;)V
    .registers 2

    iput-object p1, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    iget-object v0, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    iget-boolean v1, v0, Landroidx/core/widget/a;->o:Z

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-boolean v1, v0, Landroidx/core/widget/a;->m:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    iput-boolean v2, v0, Landroidx/core/widget/a;->m:Z

    iget-object v0, v0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/core/widget/a$a;->e:J

    const-wide/16 v5, -0x1

    iput-wide v5, v0, Landroidx/core/widget/a$a;->g:J

    iput-wide v3, v0, Landroidx/core/widget/a$a;->f:J

    const/high16 v1, 0x3f000000  # 0.5f

    iput v1, v0, Landroidx/core/widget/a$a;->h:F

    :cond_23
    iget-object v0, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    iget-object v0, v0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    iget-wide v3, v0, Landroidx/core/widget/a$a;->g:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_3f

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget-wide v7, v0, Landroidx/core/widget/a$a;->g:J

    iget v1, v0, Landroidx/core/widget/a$a;->i:I

    int-to-long v9, v1

    add-long/2addr v7, v9

    cmp-long v1, v3, v7

    if-lez v1, :cond_3f

    const/4 v1, 0x1

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    if-nez v1, :cond_a5

    iget-object v1, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    invoke-virtual {v1}, Landroidx/core/widget/a;->e()Z

    move-result v1

    if-nez v1, :cond_4b

    goto :goto_a5

    :cond_4b
    iget-object v1, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    iget-boolean v3, v1, Landroidx/core/widget/a;->n:Z

    if-eqz v3, :cond_68

    iput-boolean v2, v1, Landroidx/core/widget/a;->n:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide v7, v9

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v1, v1, Landroidx/core/widget/a;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_68
    iget-wide v1, v0, Landroidx/core/widget/a$a;->f:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_9d

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/a$a;->a(J)F

    move-result v3

    const/high16 v4, -0x3f800000  # -4.0f

    mul-float/2addr v4, v3

    mul-float/2addr v4, v3

    const/high16 v5, 0x40800000  # 4.0f

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    iget-wide v4, v0, Landroidx/core/widget/a$a;->f:J

    sub-long v4, v1, v4

    iput-wide v1, v0, Landroidx/core/widget/a$a;->f:J

    long-to-float v1, v4

    mul-float/2addr v1, v3

    iget v0, v0, Landroidx/core/widget/a$a;->d:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    check-cast v1, Landroidx/core/widget/f;

    iget-object v1, v1, Landroidx/core/widget/f;->r:Landroid/widget/ListView;

    invoke-static {v1, v0}, Landroidx/core/widget/g;->b(Landroid/widget/ListView;I)V

    iget-object v0, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    iget-object v0, v0, Landroidx/core/widget/a;->c:Landroid/view/View;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, p0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    :cond_9d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a5
    :goto_a5
    iget-object v0, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    iput-boolean v2, v0, Landroidx/core/widget/a;->o:Z

    return-void
.end method
