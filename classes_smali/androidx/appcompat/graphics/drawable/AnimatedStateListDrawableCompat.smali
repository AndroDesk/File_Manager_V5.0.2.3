.class public Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.super Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$d;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$a;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;
    }
.end annotation


# instance fields
.field public p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;

.field public q:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;

.field public r:I

.field public s:I

.field public v:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;Landroid/content/res/Resources;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;-><init>(I)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    .line 4
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->s:I

    .line 5
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;

    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->e(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;)V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->jumpToCurrentState()V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;

    .line 3
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V

    .line 9
    return-object v0
.end method

.method public final e(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->e(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;)V

    .line 4
    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    check-cast p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;

    .line 10
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;

    .line 12
    :cond_b
    return-void
.end method

.method public final f()Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;

    .line 3
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V

    .line 9
    return-object v0
.end method

.method public final jumpToCurrentState()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->jumpToCurrentState()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->q:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;

    .line 6
    if-eqz v0, :cond_17

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;->d()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->q:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;

    .line 14
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d(I)Z

    .line 19
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    .line 22
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->s:I

    .line 24
    :cond_17
    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->v:Z

    .line 3
    if-nez v0, :cond_f

    .line 5
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->d()V

    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->v:Z

    .line 16
    :cond_f
    return-object p0
.end method

.method public final onStateChange([I)Z
    .registers 16

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->e([I)I

    .line 6
    move-result v1

    .line 7
    if-ltz v1, :cond_9

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    .line 12
    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->e([I)I

    .line 15
    move-result v1

    .line 16
    :goto_f
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->g:I

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eq v1, v0, :cond_10c

    .line 22
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->q:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;

    .line 24
    if-eqz v4, :cond_39

    .line 26
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    .line 28
    if-ne v1, v0, :cond_1f

    .line 30
    goto/16 :goto_100

    .line 32
    :cond_1f
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->s:I

    .line 34
    if-ne v1, v0, :cond_34

    .line 36
    invoke-virtual {v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;->a()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_34

    .line 42
    invoke-virtual {v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;->b()V

    .line 45
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->s:I

    .line 47
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    .line 49
    iput v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->s:I

    .line 51
    goto/16 :goto_100

    .line 53
    :cond_34
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    .line 55
    invoke-virtual {v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;->d()V

    .line 58
    :cond_39
    const/4 v4, 0x0

    .line 59
    iput-object v4, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->q:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;

    .line 61
    const/4 v4, -0x1

    .line 62
    iput v4, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->s:I

    .line 64
    iput v4, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    .line 66
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->p:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;

    .line 68
    if-gez v0, :cond_4a

    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    move v5, v3

    .line 74
    goto :goto_5a

    .line 75
    :cond_4a
    iget-object v5, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->K:Landroidx/collection/g;

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v5, v0, v6}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Ljava/lang/Integer;

    .line 87
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 90
    move-result v5

    .line 91
    :goto_5a
    if-gez v1, :cond_5e

    .line 93
    move v6, v3

    .line 94
    goto :goto_6e

    .line 95
    :cond_5e
    iget-object v6, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->K:Landroidx/collection/g;

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v6, v1, v7}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Ljava/lang/Integer;

    .line 107
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 110
    move-result v6

    .line 111
    :goto_6e
    if-eqz v6, :cond_102

    .line 113
    if-nez v5, :cond_74

    .line 115
    goto/16 :goto_102

    .line 117
    :cond_74
    int-to-long v7, v5

    .line 118
    const/16 v5, 0x20

    .line 120
    shl-long/2addr v7, v5

    .line 121
    int-to-long v5, v6

    .line 122
    or-long/2addr v5, v7

    .line 123
    iget-object v7, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->J:Landroidx/collection/d;

    .line 125
    const-wide/16 v8, -0x1

    .line 127
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    move-result-object v10

    .line 131
    invoke-virtual {v7, v5, v6, v10}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Ljava/lang/Long;

    .line 137
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 140
    move-result-wide v10

    .line 141
    long-to-int v7, v10

    .line 142
    if-gez v7, :cond_91

    .line 144
    goto/16 :goto_102

    .line 146
    :cond_91
    iget-object v10, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->J:Landroidx/collection/d;

    .line 148
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    move-result-object v11

    .line 152
    invoke-virtual {v10, v5, v6, v11}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 155
    move-result-object v10

    .line 156
    check-cast v10, Ljava/lang/Long;

    .line 158
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 161
    move-result-wide v10

    .line 162
    const-wide v12, 0x200000000L

    .line 167
    and-long/2addr v10, v12

    .line 168
    const-wide/16 v12, 0x0

    .line 170
    cmp-long v10, v10, v12

    .line 172
    if-eqz v10, :cond_af

    .line 174
    move v10, v2

    .line 175
    goto :goto_b0

    .line 176
    :cond_af
    move v10, v3

    .line 177
    :goto_b0
    invoke-virtual {p0, v7}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d(I)Z

    .line 180
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 183
    move-result-object v7

    .line 184
    instance-of v11, v7, Landroid/graphics/drawable/AnimationDrawable;

    .line 186
    if-eqz v11, :cond_e0

    .line 188
    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->J:Landroidx/collection/d;

    .line 190
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 193
    move-result-object v8

    .line 194
    invoke-virtual {v4, v5, v6, v8}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Ljava/lang/Long;

    .line 200
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 203
    move-result-wide v4

    .line 204
    const-wide v8, 0x100000000L

    .line 209
    and-long/2addr v4, v8

    .line 210
    cmp-long v4, v4, v12

    .line 212
    if-eqz v4, :cond_d7

    .line 214
    move v4, v2

    .line 215
    goto :goto_d8

    .line 216
    :cond_d7
    move v4, v3

    .line 217
    :goto_d8
    new-instance v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$d;

    .line 219
    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    .line 221
    invoke-direct {v5, v7, v4, v10}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$d;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    .line 224
    goto :goto_f7

    .line 225
    :cond_e0
    instance-of v4, v7, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 227
    if-eqz v4, :cond_ec

    .line 229
    new-instance v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;

    .line 231
    check-cast v7, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 233
    invoke-direct {v5, v7}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;-><init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    .line 236
    goto :goto_f7

    .line 237
    :cond_ec
    instance-of v4, v7, Landroid/graphics/drawable/Animatable;

    .line 239
    if-eqz v4, :cond_102

    .line 241
    new-instance v5, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$a;

    .line 243
    check-cast v7, Landroid/graphics/drawable/Animatable;

    .line 245
    invoke-direct {v5, v7}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$a;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 248
    :goto_f7
    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;->c()V

    .line 251
    iput-object v5, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->q:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;

    .line 253
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->s:I

    .line 255
    iput v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->r:I

    .line 257
    :goto_100
    move v0, v2

    .line 258
    goto :goto_103

    .line 259
    :cond_102
    :goto_102
    move v0, v3

    .line 260
    :goto_103
    if-nez v0, :cond_10d

    .line 262
    invoke-virtual {p0, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d(I)Z

    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_10c

    .line 268
    goto :goto_10d

    .line 269
    :cond_10c
    move v2, v3

    .line 270
    :cond_10d
    :goto_10d
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 273
    move-result-object v0

    .line 274
    if-eqz v0, :cond_118

    .line 276
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 279
    move-result p1

    .line 280
    or-int/2addr v2, p1

    .line 281
    :cond_118
    return v2
.end method

.method public final setVisible(ZZ)Z
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->setVisible(ZZ)Z

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->q:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;

    .line 7
    if-eqz v1, :cond_15

    .line 9
    if-nez v0, :cond_c

    .line 11
    if-eqz p2, :cond_15

    .line 13
    :cond_c
    if-eqz p1, :cond_12

    .line 15
    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;->c()V

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->jumpToCurrentState()V

    .line 22
    :cond_15
    :goto_15
    return v0
.end method
