.class public abstract Landroidx/appcompat/widget/h0;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/h0$b;,
        Landroidx/appcompat/widget/h0$a;
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:I

.field public final c:I

.field public final d:Landroid/view/View;

.field public e:Landroidx/appcompat/widget/h0$a;

.field public f:Landroidx/appcompat/widget/h0$b;

.field public g:Z

.field public h:I

.field public final i:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Landroidx/appcompat/widget/h0;->i:[I

    .line 9
    iput-object p1, p0, Landroidx/appcompat/widget/h0;->d:Landroid/view/View;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 29
    move-result p1

    .line 30
    int-to-float p1, p1

    .line 31
    iput p1, p0, Landroidx/appcompat/widget/h0;->a:F

    .line 33
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 36
    move-result p1

    .line 37
    iput p1, p0, Landroidx/appcompat/widget/h0;->b:I

    .line 39
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 42
    move-result v1

    .line 43
    add-int/2addr v1, p1

    .line 44
    div-int/2addr v1, v0

    .line 45
    iput v1, p0, Landroidx/appcompat/widget/h0;->c:I

    .line 47
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->f:Landroidx/appcompat/widget/h0$b;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/h0;->d:Landroid/view/View;

    .line 7
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->e:Landroidx/appcompat/widget/h0$a;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    iget-object v1, p0, Landroidx/appcompat/widget/h0;->d:Landroid/view/View;

    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 19
    :cond_12
    return-void
.end method

.method public abstract b()Landroidx/appcompat/view/menu/q;
.end method

.method public abstract c()Z
.end method

.method public d()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->b()Landroidx/appcompat/view/menu/q;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-interface {v0}, Landroidx/appcompat/view/menu/q;->isShowing()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_f

    .line 13
    invoke-interface {v0}, Landroidx/appcompat/view/menu/q;->dismiss()V

    .line 16
    :cond_f
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    .line 1
    iget-boolean p1, p0, Landroidx/appcompat/widget/h0;->g:Z

    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_6f

    .line 8
    iget-object v3, p0, Landroidx/appcompat/widget/h0;->d:Landroid/view/View;

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->b()Landroidx/appcompat/view/menu/q;

    .line 13
    move-result-object v4

    .line 14
    if-eqz v4, :cond_5f

    .line 16
    invoke-interface {v4}, Landroidx/appcompat/view/menu/q;->isShowing()Z

    .line 19
    move-result v5

    .line 20
    if-nez v5, :cond_16

    .line 22
    goto :goto_5f

    .line 23
    :cond_16
    invoke-interface {v4}, Landroidx/appcompat/view/menu/q;->c()Landroidx/appcompat/widget/f0;

    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_5f

    .line 29
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_23

    .line 35
    goto :goto_5f

    .line 36
    :cond_23
    invoke-static {p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 39
    move-result-object v5

    .line 40
    iget-object v6, p0, Landroidx/appcompat/widget/h0;->i:[I

    .line 42
    invoke-virtual {v3, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 45
    aget v3, v6, v2

    .line 47
    int-to-float v3, v3

    .line 48
    aget v6, v6, v1

    .line 50
    int-to-float v6, v6

    .line 51
    invoke-virtual {v5, v3, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 54
    iget-object v3, p0, Landroidx/appcompat/widget/h0;->i:[I

    .line 56
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 59
    aget v6, v3, v2

    .line 61
    neg-int v6, v6

    .line 62
    int-to-float v6, v6

    .line 63
    aget v3, v3, v1

    .line 65
    neg-int v3, v3

    .line 66
    int-to-float v3, v3

    .line 67
    invoke-virtual {v5, v6, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 70
    iget v3, p0, Landroidx/appcompat/widget/h0;->h:I

    .line 72
    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/widget/f0;->b(Landroid/view/MotionEvent;I)Z

    .line 75
    move-result v3

    .line 76
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 82
    move-result p2

    .line 83
    if-eq p2, v1, :cond_58

    .line 85
    if-eq p2, v0, :cond_58

    .line 87
    move p2, v1

    .line 88
    goto :goto_59

    .line 89
    :cond_58
    move p2, v2

    .line 90
    :goto_59
    if-eqz v3, :cond_5f

    .line 92
    if-eqz p2, :cond_5f

    .line 94
    move p2, v1

    .line 95
    goto :goto_60

    .line 96
    :cond_5f
    :goto_5f
    move p2, v2

    .line 97
    :goto_60
    if-nez p2, :cond_6c

    .line 99
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->d()Z

    .line 102
    move-result p2

    .line 103
    if-nez p2, :cond_69

    .line 105
    goto :goto_6c

    .line 106
    :cond_69
    move p2, v2

    .line 107
    goto/16 :goto_125

    .line 109
    :cond_6c
    :goto_6c
    move p2, v1

    .line 110
    goto/16 :goto_125

    .line 112
    :cond_6f
    iget-object v3, p0, Landroidx/appcompat/widget/h0;->d:Landroid/view/View;

    .line 114
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_79

    .line 120
    goto/16 :goto_102

    .line 122
    :cond_79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_d6

    .line 128
    if-eq v4, v1, :cond_d2

    .line 130
    const/4 v5, 0x2

    .line 131
    if-eq v4, v5, :cond_88

    .line 133
    if-eq v4, v0, :cond_d2

    .line 135
    goto/16 :goto_102

    .line 137
    :cond_88
    iget v0, p0, Landroidx/appcompat/widget/h0;->h:I

    .line 139
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 142
    move-result v0

    .line 143
    if-ltz v0, :cond_102

    .line 145
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 148
    move-result v4

    .line 149
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 152
    move-result p2

    .line 153
    iget v0, p0, Landroidx/appcompat/widget/h0;->a:F

    .line 155
    neg-float v5, v0

    .line 156
    cmpl-float v6, v4, v5

    .line 158
    if-ltz v6, :cond_c3

    .line 160
    cmpl-float v5, p2, v5

    .line 162
    if-ltz v5, :cond_c3

    .line 164
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 167
    move-result v5

    .line 168
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 171
    move-result v6

    .line 172
    sub-int/2addr v5, v6

    .line 173
    int-to-float v5, v5

    .line 174
    add-float/2addr v5, v0

    .line 175
    cmpg-float v4, v4, v5

    .line 177
    if-gez v4, :cond_c3

    .line 179
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 182
    move-result v4

    .line 183
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 186
    move-result v5

    .line 187
    sub-int/2addr v4, v5

    .line 188
    int-to-float v4, v4

    .line 189
    add-float/2addr v4, v0

    .line 190
    cmpg-float p2, p2, v4

    .line 192
    if-gez p2, :cond_c3

    .line 194
    move p2, v1

    .line 195
    goto :goto_c4

    .line 196
    :cond_c3
    move p2, v2

    .line 197
    :goto_c4
    if-nez p2, :cond_102

    .line 199
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->a()V

    .line 202
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 205
    move-result-object p2

    .line 206
    invoke-interface {p2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 209
    move p2, v1

    .line 210
    goto :goto_103

    .line 211
    :cond_d2
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->a()V

    .line 214
    goto :goto_102

    .line 215
    :cond_d6
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 218
    move-result p2

    .line 219
    iput p2, p0, Landroidx/appcompat/widget/h0;->h:I

    .line 221
    iget-object p2, p0, Landroidx/appcompat/widget/h0;->e:Landroidx/appcompat/widget/h0$a;

    .line 223
    if-nez p2, :cond_e7

    .line 225
    new-instance p2, Landroidx/appcompat/widget/h0$a;

    .line 227
    invoke-direct {p2, p0}, Landroidx/appcompat/widget/h0$a;-><init>(Landroidx/appcompat/widget/h0;)V

    .line 230
    iput-object p2, p0, Landroidx/appcompat/widget/h0;->e:Landroidx/appcompat/widget/h0$a;

    .line 232
    :cond_e7
    iget-object p2, p0, Landroidx/appcompat/widget/h0;->e:Landroidx/appcompat/widget/h0$a;

    .line 234
    iget v0, p0, Landroidx/appcompat/widget/h0;->b:I

    .line 236
    int-to-long v4, v0

    .line 237
    invoke-virtual {v3, p2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    iget-object p2, p0, Landroidx/appcompat/widget/h0;->f:Landroidx/appcompat/widget/h0$b;

    .line 242
    if-nez p2, :cond_fa

    .line 244
    new-instance p2, Landroidx/appcompat/widget/h0$b;

    .line 246
    invoke-direct {p2, p0}, Landroidx/appcompat/widget/h0$b;-><init>(Landroidx/appcompat/widget/h0;)V

    .line 249
    iput-object p2, p0, Landroidx/appcompat/widget/h0;->f:Landroidx/appcompat/widget/h0$b;

    .line 251
    :cond_fa
    iget-object p2, p0, Landroidx/appcompat/widget/h0;->f:Landroidx/appcompat/widget/h0$b;

    .line 253
    iget v0, p0, Landroidx/appcompat/widget/h0;->c:I

    .line 255
    int-to-long v4, v0

    .line 256
    invoke-virtual {v3, p2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    :cond_102
    :goto_102
    move p2, v2

    .line 260
    :goto_103
    if-eqz p2, :cond_10d

    .line 262
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->c()Z

    .line 265
    move-result p2

    .line 266
    if-eqz p2, :cond_10d

    .line 268
    move p2, v1

    .line 269
    goto :goto_10e

    .line 270
    :cond_10d
    move p2, v2

    .line 271
    :goto_10e
    if-eqz p2, :cond_125

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 276
    move-result-wide v5

    .line 277
    const/4 v7, 0x3

    .line 278
    const/4 v8, 0x0

    .line 279
    const/4 v9, 0x0

    .line 280
    const/4 v10, 0x0

    .line 281
    move-wide v3, v5

    .line 282
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 285
    move-result-object v0

    .line 286
    iget-object v3, p0, Landroidx/appcompat/widget/h0;->d:Landroid/view/View;

    .line 288
    invoke-virtual {v3, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 291
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 294
    :cond_125
    :goto_125
    iput-boolean p2, p0, Landroidx/appcompat/widget/h0;->g:Z

    .line 296
    if-nez p2, :cond_12d

    .line 298
    if-eqz p1, :cond_12c

    .line 300
    goto :goto_12d

    .line 301
    :cond_12c
    move v1, v2

    .line 302
    :cond_12d
    :goto_12d
    return v1
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/h0;->g:Z

    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroidx/appcompat/widget/h0;->h:I

    .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/h0;->e:Landroidx/appcompat/widget/h0$a;

    .line 9
    if-eqz p1, :cond_f

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->d:Landroid/view/View;

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    :cond_f
    return-void
.end method
