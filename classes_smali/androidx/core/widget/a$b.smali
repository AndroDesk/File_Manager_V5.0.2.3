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
.method public constructor <init>(Landroidx/core/widget/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    .line 3
    iget-boolean v1, v0, Landroidx/core/widget/a;->o:Z

    .line 5
    if-nez v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-boolean v1, v0, Landroidx/core/widget/a;->m:Z

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_23

    .line 13
    iput-boolean v2, v0, Landroidx/core/widget/a;->m:Z

    .line 15
    iget-object v0, v0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 23
    move-result-wide v3

    .line 24
    iput-wide v3, v0, Landroidx/core/widget/a$a;->e:J

    .line 26
    const-wide/16 v5, -0x1

    .line 28
    iput-wide v5, v0, Landroidx/core/widget/a$a;->g:J

    .line 30
    iput-wide v3, v0, Landroidx/core/widget/a$a;->f:J

    .line 32
    const/high16 v1, 0x3f000000  # 0.5f

    .line 34
    iput v1, v0, Landroidx/core/widget/a$a;->h:F

    .line 36
    :cond_23
    iget-object v0, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    .line 38
    iget-object v0, v0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    .line 40
    iget-wide v3, v0, Landroidx/core/widget/a$a;->g:J

    .line 42
    const-wide/16 v5, 0x0

    .line 44
    cmp-long v1, v3, v5

    .line 46
    if-lez v1, :cond_3f

    .line 48
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 51
    move-result-wide v3

    .line 52
    iget-wide v7, v0, Landroidx/core/widget/a$a;->g:J

    .line 54
    iget v1, v0, Landroidx/core/widget/a$a;->i:I

    .line 56
    int-to-long v9, v1

    .line 57
    add-long/2addr v7, v9

    .line 58
    cmp-long v1, v3, v7

    .line 60
    if-lez v1, :cond_3f

    .line 62
    const/4 v1, 0x1

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move v1, v2

    .line 65
    :goto_40
    if-nez v1, :cond_a5

    .line 67
    iget-object v1, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    .line 69
    invoke-virtual {v1}, Landroidx/core/widget/a;->e()Z

    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_4b

    .line 75
    goto :goto_a5

    .line 76
    :cond_4b
    iget-object v1, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    .line 78
    iget-boolean v3, v1, Landroidx/core/widget/a;->n:Z

    .line 80
    if-eqz v3, :cond_68

    .line 82
    iput-boolean v2, v1, Landroidx/core/widget/a;->n:Z

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 87
    move-result-wide v9

    .line 88
    const/4 v11, 0x3

    .line 89
    const/4 v12, 0x0

    .line 90
    const/4 v13, 0x0

    .line 91
    const/4 v14, 0x0

    .line 92
    move-wide v7, v9

    .line 93
    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 96
    move-result-object v2

    .line 97
    iget-object v1, v1, Landroidx/core/widget/a;->c:Landroid/view/View;

    .line 99
    invoke-virtual {v1, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 102
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 105
    :cond_68
    iget-wide v1, v0, Landroidx/core/widget/a$a;->f:J

    .line 107
    cmp-long v1, v1, v5

    .line 109
    if-eqz v1, :cond_9d

    .line 111
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 114
    move-result-wide v1

    .line 115
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/a$a;->a(J)F

    .line 118
    move-result v3

    .line 119
    const/high16 v4, -0x3f800000  # -4.0f

    .line 121
    mul-float/2addr v4, v3

    .line 122
    mul-float/2addr v4, v3

    .line 123
    const/high16 v5, 0x40800000  # 4.0f

    .line 125
    mul-float/2addr v3, v5

    .line 126
    add-float/2addr v3, v4

    .line 127
    iget-wide v4, v0, Landroidx/core/widget/a$a;->f:J

    .line 129
    sub-long v4, v1, v4

    .line 131
    iput-wide v1, v0, Landroidx/core/widget/a$a;->f:J

    .line 133
    long-to-float v1, v4

    .line 134
    mul-float/2addr v1, v3

    .line 135
    iget v0, v0, Landroidx/core/widget/a$a;->d:F

    .line 137
    mul-float/2addr v1, v0

    .line 138
    float-to-int v0, v1

    .line 139
    iget-object v1, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    .line 141
    check-cast v1, Landroidx/core/widget/f;

    .line 143
    iget-object v1, v1, Landroidx/core/widget/f;->r:Landroid/widget/ListView;

    .line 145
    invoke-static {v1, v0}, Landroidx/core/widget/g;->b(Landroid/widget/ListView;I)V

    .line 148
    iget-object v0, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    .line 150
    iget-object v0, v0, Landroidx/core/widget/a;->c:Landroid/view/View;

    .line 152
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 154
    invoke-static {v0, p0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 157
    return-void

    .line 158
    :cond_9d
    new-instance v0, Ljava/lang/RuntimeException;

    .line 160
    const-string v1, "Cannot compute scroll delta before calling start()"

    .line 162
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 165
    throw v0

    .line 166
    :cond_a5
    :goto_a5
    iget-object v0, p0, Landroidx/core/widget/a$b;->a:Landroidx/core/widget/a;

    .line 168
    iput-boolean v2, v0, Landroidx/core/widget/a;->o:Z

    .line 170
    return-void
.end method
