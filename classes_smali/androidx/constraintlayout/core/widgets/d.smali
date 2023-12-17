.class public final Landroidx/constraintlayout/core/widgets/d;
.super Lv/c;
.source "ConstraintWidgetContainer.java"


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:[Landroidx/constraintlayout/core/widgets/c;

.field public E0:[Landroidx/constraintlayout/core/widgets/c;

.field public F0:I

.field public G0:Z

.field public H0:Z

.field public I0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public J0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public K0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public L0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public M0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field public N0:Lw/b$a;

.field public t0:Lw/b;

.field public u0:Lw/e;

.field public v0:I

.field public w0:Lw/b$b;

.field public x0:Z

.field public y0:Landroidx/constraintlayout/core/c;

.field public z0:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lv/c;-><init>()V

    .line 4
    new-instance v0, Lw/b;

    .line 6
    invoke-direct {v0, p0}, Lw/b;-><init>(Landroidx/constraintlayout/core/widgets/d;)V

    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->t0:Lw/b;

    .line 11
    new-instance v0, Lw/e;

    .line 13
    invoke-direct {v0, p0}, Lw/e;-><init>(Landroidx/constraintlayout/core/widgets/d;)V

    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->u0:Lw/e;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->w0:Lw/b$b;

    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/d;->x0:Z

    .line 24
    new-instance v2, Landroidx/constraintlayout/core/c;

    .line 26
    invoke-direct {v2}, Landroidx/constraintlayout/core/c;-><init>()V

    .line 29
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 31
    iput v1, p0, Landroidx/constraintlayout/core/widgets/d;->B0:I

    .line 33
    iput v1, p0, Landroidx/constraintlayout/core/widgets/d;->C0:I

    .line 35
    const/4 v2, 0x4

    .line 36
    new-array v3, v2, [Landroidx/constraintlayout/core/widgets/c;

    .line 38
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->D0:[Landroidx/constraintlayout/core/widgets/c;

    .line 40
    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/c;

    .line 42
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/d;->E0:[Landroidx/constraintlayout/core/widgets/c;

    .line 44
    const/16 v2, 0x101

    .line 46
    iput v2, p0, Landroidx/constraintlayout/core/widgets/d;->F0:I

    .line 48
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/d;->G0:Z

    .line 50
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/d;->H0:Z

    .line 52
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->I0:Ljava/lang/ref/WeakReference;

    .line 54
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->J0:Ljava/lang/ref/WeakReference;

    .line 56
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->K0:Ljava/lang/ref/WeakReference;

    .line 58
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->L0:Ljava/lang/ref/WeakReference;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    .line 62
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 65
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    .line 67
    new-instance v0, Lw/b$a;

    .line 69
    invoke-direct {v0}, Lw/b$a;-><init>()V

    .line 72
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->N0:Lw/b$a;

    .line 74
    return-void
.end method

.method public static R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V
    .registers 10

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 6
    const/16 v1, 0x8

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_12e

    .line 11
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/e;

    .line 13
    if-nez v0, :cond_12e

    .line 15
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/a;

    .line 17
    if-eqz v0, :cond_14

    .line 19
    goto/16 :goto_12e

    .line 21
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 23
    aget-object v1, v0, v2

    .line 25
    iput-object v1, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 27
    const/4 v1, 0x1

    .line 28
    aget-object v0, v0, v1

    .line 30
    iput-object v0, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 32
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 35
    move-result v0

    .line 36
    iput v0, p2, Lw/b$a;->c:I

    .line 38
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 41
    move-result v0

    .line 42
    iput v0, p2, Lw/b$a;->d:I

    .line 44
    iput-boolean v2, p2, Lw/b$a;->i:Z

    .line 46
    iput v2, p2, Lw/b$a;->j:I

    .line 48
    iget-object v0, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 50
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 52
    if-ne v0, v3, :cond_37

    .line 54
    move v0, v1

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move v0, v2

    .line 57
    :goto_38
    iget-object v4, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 59
    if-ne v4, v3, :cond_3e

    .line 61
    move v3, v1

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move v3, v2

    .line 64
    :goto_3f
    const/4 v4, 0x0

    .line 65
    if-eqz v0, :cond_4a

    .line 67
    iget v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 69
    cmpl-float v5, v5, v4

    .line 71
    if-lez v5, :cond_4a

    .line 73
    move v5, v1

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move v5, v2

    .line 76
    :goto_4b
    if-eqz v3, :cond_55

    .line 78
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 80
    cmpl-float v4, v6, v4

    .line 82
    if-lez v4, :cond_55

    .line 84
    move v4, v1

    .line 85
    goto :goto_56

    .line 86
    :cond_55
    move v4, v2

    .line 87
    :goto_56
    if-eqz v0, :cond_73

    .line 89
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r(I)Z

    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_73

    .line 95
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 97
    if-nez v6, :cond_73

    .line 99
    if-nez v5, :cond_73

    .line 101
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 103
    iput-object v0, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 105
    if-eqz v3, :cond_72

    .line 107
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 109
    if-nez v0, :cond_72

    .line 111
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 113
    iput-object v0, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 115
    :cond_72
    move v0, v2

    .line 116
    :cond_73
    if-eqz v3, :cond_90

    .line 118
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r(I)Z

    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_90

    .line 124
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 126
    if-nez v6, :cond_90

    .line 128
    if-nez v4, :cond_90

    .line 130
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 132
    iput-object v3, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 134
    if-eqz v0, :cond_8f

    .line 136
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 138
    if-nez v3, :cond_8f

    .line 140
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 142
    iput-object v3, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 144
    :cond_8f
    move v3, v2

    .line 145
    :cond_90
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()Z

    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_9b

    .line 151
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 153
    iput-object v0, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 155
    move v0, v2

    .line 156
    :cond_9b
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()Z

    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_a6

    .line 162
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 164
    iput-object v3, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 166
    move v3, v2

    .line 167
    :cond_a6
    const/4 v6, 0x4

    .line 168
    if-eqz v5, :cond_d4

    .line 170
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    .line 172
    aget v5, v5, v2

    .line 174
    if-ne v5, v6, :cond_b4

    .line 176
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 178
    iput-object v3, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 180
    goto :goto_d4

    .line 181
    :cond_b4
    if-nez v3, :cond_d4

    .line 183
    iget-object v3, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 185
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 187
    if-ne v3, v5, :cond_bf

    .line 189
    iget v3, p2, Lw/b$a;->d:I

    .line 191
    goto :goto_cb

    .line 192
    :cond_bf
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 194
    iput-object v3, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 196
    move-object v3, p1

    .line 197
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 199
    invoke-virtual {v3, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$a;)V

    .line 202
    iget v3, p2, Lw/b$a;->f:I

    .line 204
    :goto_cb
    iput-object v5, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 206
    iget v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 208
    int-to-float v3, v3

    .line 209
    mul-float/2addr v5, v3

    .line 210
    float-to-int v3, v5

    .line 211
    iput v3, p2, Lw/b$a;->c:I

    .line 213
    :cond_d4
    :goto_d4
    if-eqz v4, :cond_10e

    .line 215
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    .line 217
    aget v3, v3, v1

    .line 219
    if-ne v3, v6, :cond_e1

    .line 221
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 223
    iput-object v0, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 225
    goto :goto_10e

    .line 226
    :cond_e1
    if-nez v0, :cond_10e

    .line 228
    iget-object v0, p2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 230
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 232
    if-ne v0, v3, :cond_ec

    .line 234
    iget v0, p2, Lw/b$a;->c:I

    .line 236
    goto :goto_f8

    .line 237
    :cond_ec
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 239
    iput-object v0, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 241
    move-object v0, p1

    .line 242
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 244
    invoke-virtual {v0, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$a;)V

    .line 247
    iget v0, p2, Lw/b$a;->e:I

    .line 249
    :goto_f8
    iput-object v3, p2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 251
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 253
    const/4 v4, -0x1

    .line 254
    if-ne v3, v4, :cond_107

    .line 256
    int-to-float v0, v0

    .line 257
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 259
    div-float/2addr v0, v3

    .line 260
    float-to-int v0, v0

    .line 261
    iput v0, p2, Lw/b$a;->d:I

    .line 263
    goto :goto_10e

    .line 264
    :cond_107
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 266
    int-to-float v0, v0

    .line 267
    mul-float/2addr v3, v0

    .line 268
    float-to-int v0, v3

    .line 269
    iput v0, p2, Lw/b$a;->d:I

    .line 271
    :cond_10e
    :goto_10e
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 273
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$a;)V

    .line 276
    iget p1, p2, Lw/b$a;->e:I

    .line 278
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 281
    iget p1, p2, Lw/b$a;->f:I

    .line 283
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 286
    iget-boolean p1, p2, Lw/b$a;->h:Z

    .line 288
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 290
    iget p1, p2, Lw/b$a;->g:I

    .line 292
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 294
    if-lez p1, :cond_128

    .line 296
    goto :goto_129

    .line 297
    :cond_128
    move v1, v2

    .line 298
    :goto_129
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 300
    iput v2, p2, Lw/b$a;->j:I

    .line 302
    return-void

    .line 303
    :cond_12e
    :goto_12e
    iput v2, p2, Lw/b$a;->e:I

    .line 305
    iput v2, p2, Lw/b$a;->f:I

    .line 307
    return-void
.end method


# virtual methods
.method public final A()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/c;->s()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/widgets/d;->z0:I

    .line 9
    iput v0, p0, Landroidx/constraintlayout/core/widgets/d;->A0:I

    .line 11
    invoke-super {p0}, Lv/c;->A()V

    .line 14
    return-void
.end method

.method public final L(ZZ)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L(ZZ)V

    .line 4
    iget-object v0, p0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 21
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L(ZZ)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public final N()V
    .registers 27

    .line 1
    move-object/from16 v1, p0

    .line 3
    const/4 v2, 0x0

    .line 4
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 6
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 8
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/d;->G0:Z

    .line 10
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/d;->H0:Z

    .line 12
    iget-object v0, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v3

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 21
    move-result v0

    .line 22
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result v0

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 29
    move-result v4

    .line 30
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 33
    move-result v4

    .line 34
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 36
    const/4 v6, 0x1

    .line 37
    aget-object v7, v5, v6

    .line 39
    aget-object v5, v5, v2

    .line 41
    iget v8, v1, Landroidx/constraintlayout/core/widgets/d;->v0:I

    .line 43
    if-nez v8, :cond_241

    .line 45
    iget v8, v1, Landroidx/constraintlayout/core/widgets/d;->F0:I

    .line 47
    invoke-static {v8, v6}, Landroidx/constraintlayout/core/widgets/f;->b(II)Z

    .line 50
    move-result v8

    .line 51
    if-eqz v8, :cond_241

    .line 53
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/d;->w0:Lw/b$b;

    .line 55
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 57
    aget-object v11, v10, v2

    .line 59
    aget-object v10, v10, v6

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B()V

    .line 64
    iget-object v12, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 69
    move-result v13

    .line 70
    move v14, v2

    .line 71
    :goto_46
    if-ge v14, v13, :cond_54

    .line 73
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v15

    .line 77
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 79
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B()V

    .line 82
    add-int/lit8 v14, v14, 0x1

    .line 84
    goto :goto_46

    .line 85
    :cond_54
    iget-boolean v14, v1, Landroidx/constraintlayout/core/widgets/d;->x0:Z

    .line 87
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 89
    if-ne v11, v15, :cond_62

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 94
    move-result v11

    .line 95
    invoke-virtual {v1, v2, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    .line 98
    goto :goto_69

    .line 99
    :cond_62
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 101
    invoke-virtual {v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    .line 104
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 106
    :goto_69
    move v11, v2

    .line 107
    move v15, v11

    .line 108
    move/from16 v16, v15

    .line 110
    :goto_6d
    const/high16 v17, 0x3f000000  # 0.5f

    .line 112
    if-ge v11, v13, :cond_c9

    .line 114
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object v18

    .line 118
    move-object/from16 v2, v18

    .line 120
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 122
    instance-of v9, v2, Landroidx/constraintlayout/core/widgets/e;

    .line 124
    if-eqz v9, :cond_b7

    .line 126
    check-cast v2, Landroidx/constraintlayout/core/widgets/e;

    .line 128
    iget v9, v2, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 130
    if-ne v9, v6, :cond_c5

    .line 132
    iget v9, v2, Landroidx/constraintlayout/core/widgets/e;->t0:I

    .line 134
    const/4 v15, -0x1

    .line 135
    if-eq v9, v15, :cond_8c

    .line 137
    invoke-virtual {v2, v9}, Landroidx/constraintlayout/core/widgets/e;->N(I)V

    .line 140
    goto :goto_b5

    .line 141
    :cond_8c
    iget v9, v2, Landroidx/constraintlayout/core/widgets/e;->u0:I

    .line 143
    if-eq v9, v15, :cond_a1

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()Z

    .line 148
    move-result v9

    .line 149
    if-eqz v9, :cond_a1

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 154
    move-result v9

    .line 155
    iget v15, v2, Landroidx/constraintlayout/core/widgets/e;->u0:I

    .line 157
    sub-int/2addr v9, v15

    .line 158
    invoke-virtual {v2, v9}, Landroidx/constraintlayout/core/widgets/e;->N(I)V

    .line 161
    goto :goto_b5

    .line 162
    :cond_a1
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()Z

    .line 165
    move-result v9

    .line 166
    if-eqz v9, :cond_b5

    .line 168
    iget v9, v2, Landroidx/constraintlayout/core/widgets/e;->s0:F

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 173
    move-result v15

    .line 174
    int-to-float v15, v15

    .line 175
    mul-float/2addr v9, v15

    .line 176
    add-float v9, v9, v17

    .line 178
    float-to-int v9, v9

    .line 179
    invoke-virtual {v2, v9}, Landroidx/constraintlayout/core/widgets/e;->N(I)V

    .line 182
    :cond_b5
    :goto_b5
    move v15, v6

    .line 183
    goto :goto_c5

    .line 184
    :cond_b7
    instance-of v9, v2, Landroidx/constraintlayout/core/widgets/a;

    .line 186
    if-eqz v9, :cond_c5

    .line 188
    check-cast v2, Landroidx/constraintlayout/core/widgets/a;

    .line 190
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/a;->P()I

    .line 193
    move-result v2

    .line 194
    if-nez v2, :cond_c5

    .line 196
    move/from16 v16, v6

    .line 198
    :cond_c5
    :goto_c5
    add-int/lit8 v11, v11, 0x1

    .line 200
    const/4 v2, 0x0

    .line 201
    goto :goto_6d

    .line 202
    :cond_c9
    if-eqz v15, :cond_e7

    .line 204
    const/4 v2, 0x0

    .line 205
    :goto_cc
    if-ge v2, v13, :cond_e7

    .line 207
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v9

    .line 211
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 213
    instance-of v11, v9, Landroidx/constraintlayout/core/widgets/e;

    .line 215
    if-eqz v11, :cond_e3

    .line 217
    check-cast v9, Landroidx/constraintlayout/core/widgets/e;

    .line 219
    iget v11, v9, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 221
    if-ne v11, v6, :cond_e3

    .line 223
    const/4 v11, 0x0

    .line 224
    invoke-static {v11, v9, v8, v14}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    .line 227
    goto :goto_e4

    .line 228
    :cond_e3
    const/4 v11, 0x0

    .line 229
    :goto_e4
    add-int/lit8 v2, v2, 0x1

    .line 231
    goto :goto_cc

    .line 232
    :cond_e7
    const/4 v11, 0x0

    .line 233
    invoke-static {v11, v1, v8, v14}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    .line 236
    if-eqz v16, :cond_10e

    .line 238
    const/4 v2, 0x0

    .line 239
    :goto_ee
    if-ge v2, v13, :cond_10e

    .line 241
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    move-result-object v9

    .line 245
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 247
    instance-of v11, v9, Landroidx/constraintlayout/core/widgets/a;

    .line 249
    if-eqz v11, :cond_10b

    .line 251
    check-cast v9, Landroidx/constraintlayout/core/widgets/a;

    .line 253
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/a;->P()I

    .line 256
    move-result v11

    .line 257
    if-nez v11, :cond_10b

    .line 259
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/a;->O()Z

    .line 262
    move-result v11

    .line 263
    if-eqz v11, :cond_10b

    .line 265
    invoke-static {v6, v9, v8, v14}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    .line 268
    :cond_10b
    add-int/lit8 v2, v2, 0x1

    .line 270
    goto :goto_ee

    .line 271
    :cond_10e
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 273
    if-ne v10, v2, :cond_11b

    .line 275
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 278
    move-result v2

    .line 279
    const/4 v9, 0x0

    .line 280
    invoke-virtual {v1, v9, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    .line 283
    goto :goto_123

    .line 284
    :cond_11b
    const/4 v9, 0x0

    .line 285
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 287
    invoke-virtual {v2, v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    .line 290
    iput v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 292
    :goto_123
    const/4 v2, 0x0

    .line 293
    const/4 v9, 0x0

    .line 294
    const/4 v10, 0x0

    .line 295
    :goto_126
    if-ge v2, v13, :cond_17c

    .line 297
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 300
    move-result-object v11

    .line 301
    check-cast v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 303
    instance-of v15, v11, Landroidx/constraintlayout/core/widgets/e;

    .line 305
    if-eqz v15, :cond_16c

    .line 307
    check-cast v11, Landroidx/constraintlayout/core/widgets/e;

    .line 309
    iget v15, v11, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 311
    if-nez v15, :cond_179

    .line 313
    iget v9, v11, Landroidx/constraintlayout/core/widgets/e;->t0:I

    .line 315
    const/4 v15, -0x1

    .line 316
    if-eq v9, v15, :cond_141

    .line 318
    invoke-virtual {v11, v9}, Landroidx/constraintlayout/core/widgets/e;->N(I)V

    .line 321
    goto :goto_16a

    .line 322
    :cond_141
    iget v9, v11, Landroidx/constraintlayout/core/widgets/e;->u0:I

    .line 324
    if-eq v9, v15, :cond_156

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()Z

    .line 329
    move-result v9

    .line 330
    if-eqz v9, :cond_156

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 335
    move-result v9

    .line 336
    iget v15, v11, Landroidx/constraintlayout/core/widgets/e;->u0:I

    .line 338
    sub-int/2addr v9, v15

    .line 339
    invoke-virtual {v11, v9}, Landroidx/constraintlayout/core/widgets/e;->N(I)V

    .line 342
    goto :goto_16a

    .line 343
    :cond_156
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()Z

    .line 346
    move-result v9

    .line 347
    if-eqz v9, :cond_16a

    .line 349
    iget v9, v11, Landroidx/constraintlayout/core/widgets/e;->s0:F

    .line 351
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 354
    move-result v15

    .line 355
    int-to-float v15, v15

    .line 356
    mul-float/2addr v9, v15

    .line 357
    add-float v9, v9, v17

    .line 359
    float-to-int v9, v9

    .line 360
    invoke-virtual {v11, v9}, Landroidx/constraintlayout/core/widgets/e;->N(I)V

    .line 363
    :cond_16a
    :goto_16a
    move v9, v6

    .line 364
    goto :goto_179

    .line 365
    :cond_16c
    instance-of v15, v11, Landroidx/constraintlayout/core/widgets/a;

    .line 367
    if-eqz v15, :cond_179

    .line 369
    check-cast v11, Landroidx/constraintlayout/core/widgets/a;

    .line 371
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/a;->P()I

    .line 374
    move-result v11

    .line 375
    if-ne v11, v6, :cond_179

    .line 377
    move v10, v6

    .line 378
    :cond_179
    :goto_179
    add-int/lit8 v2, v2, 0x1

    .line 380
    goto :goto_126

    .line 381
    :cond_17c
    if-eqz v9, :cond_197

    .line 383
    const/4 v2, 0x0

    .line 384
    :goto_17f
    if-ge v2, v13, :cond_197

    .line 386
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 389
    move-result-object v9

    .line 390
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 392
    instance-of v11, v9, Landroidx/constraintlayout/core/widgets/e;

    .line 394
    if-eqz v11, :cond_194

    .line 396
    check-cast v9, Landroidx/constraintlayout/core/widgets/e;

    .line 398
    iget v11, v9, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 400
    if-nez v11, :cond_194

    .line 402
    invoke-static {v6, v9, v8}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    .line 405
    :cond_194
    add-int/lit8 v2, v2, 0x1

    .line 407
    goto :goto_17f

    .line 408
    :cond_197
    const/4 v2, 0x0

    .line 409
    invoke-static {v2, v1, v8}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    .line 412
    if-eqz v10, :cond_1be

    .line 414
    const/4 v2, 0x0

    .line 415
    :goto_19e
    if-ge v2, v13, :cond_1be

    .line 417
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 420
    move-result-object v9

    .line 421
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 423
    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/a;

    .line 425
    if-eqz v10, :cond_1bb

    .line 427
    check-cast v9, Landroidx/constraintlayout/core/widgets/a;

    .line 429
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/a;->P()I

    .line 432
    move-result v10

    .line 433
    if-ne v10, v6, :cond_1bb

    .line 435
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/a;->O()Z

    .line 438
    move-result v10

    .line 439
    if-eqz v10, :cond_1bb

    .line 441
    invoke-static {v6, v9, v8}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    .line 444
    :cond_1bb
    add-int/lit8 v2, v2, 0x1

    .line 446
    goto :goto_19e

    .line 447
    :cond_1be
    const/4 v2, 0x0

    .line 448
    :goto_1bf
    if-ge v2, v13, :cond_1f7

    .line 450
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 453
    move-result-object v9

    .line 454
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 456
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 459
    move-result v10

    .line 460
    if-eqz v10, :cond_1f4

    .line 462
    invoke-static {v9}, Lw/f;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 465
    move-result v10

    .line 466
    if-eqz v10, :cond_1f4

    .line 468
    sget-object v10, Lw/f;->a:Lw/b$a;

    .line 470
    invoke-static {v9, v8, v10}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    .line 473
    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/e;

    .line 475
    if-eqz v10, :cond_1ed

    .line 477
    move-object v10, v9

    .line 478
    check-cast v10, Landroidx/constraintlayout/core/widgets/e;

    .line 480
    iget v10, v10, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 482
    if-nez v10, :cond_1e8

    .line 484
    const/4 v10, 0x0

    .line 485
    invoke-static {v10, v9, v8}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    .line 488
    goto :goto_1f4

    .line 489
    :cond_1e8
    const/4 v10, 0x0

    .line 490
    invoke-static {v10, v9, v8, v14}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    .line 493
    goto :goto_1f4

    .line 494
    :cond_1ed
    const/4 v10, 0x0

    .line 495
    invoke-static {v10, v9, v8, v14}, Lw/f;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Z)V

    .line 498
    invoke-static {v10, v9, v8}, Lw/f;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)V

    .line 501
    :cond_1f4
    :goto_1f4
    add-int/lit8 v2, v2, 0x1

    .line 503
    goto :goto_1bf

    .line 504
    :cond_1f7
    const/4 v2, 0x0

    .line 505
    :goto_1f8
    if-ge v2, v3, :cond_241

    .line 507
    iget-object v8, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 509
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 512
    move-result-object v8

    .line 513
    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 515
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 518
    move-result v9

    .line 519
    if-eqz v9, :cond_23e

    .line 521
    instance-of v9, v8, Landroidx/constraintlayout/core/widgets/e;

    .line 523
    if-nez v9, :cond_23e

    .line 525
    instance-of v9, v8, Landroidx/constraintlayout/core/widgets/a;

    .line 527
    if-nez v9, :cond_23e

    .line 529
    instance-of v9, v8, Landroidx/constraintlayout/core/widgets/g;

    .line 531
    if-nez v9, :cond_23e

    .line 533
    iget-boolean v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    .line 535
    if-nez v9, :cond_23e

    .line 537
    const/4 v9, 0x0

    .line 538
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 541
    move-result-object v10

    .line 542
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 545
    move-result-object v9

    .line 546
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 548
    if-ne v10, v11, :cond_231

    .line 550
    iget v10, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 552
    if-eq v10, v6, :cond_231

    .line 554
    if-ne v9, v11, :cond_231

    .line 556
    iget v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 558
    if-eq v9, v6, :cond_231

    .line 560
    move v9, v6

    .line 561
    goto :goto_232

    .line 562
    :cond_231
    const/4 v9, 0x0

    .line 563
    :goto_232
    if-nez v9, :cond_23e

    .line 565
    new-instance v9, Lw/b$a;

    .line 567
    invoke-direct {v9}, Lw/b$a;-><init>()V

    .line 570
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/d;->w0:Lw/b$b;

    .line 572
    invoke-static {v8, v10, v9}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    .line 575
    :cond_23e
    add-int/lit8 v2, v2, 0x1

    .line 577
    goto :goto_1f8

    .line 578
    :cond_241
    const/4 v2, 0x2

    .line 579
    if-le v3, v2, :cond_639

    .line 581
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 583
    if-eq v5, v9, :cond_24a

    .line 585
    if-ne v7, v9, :cond_639

    .line 587
    :cond_24a
    iget v9, v1, Landroidx/constraintlayout/core/widgets/d;->F0:I

    .line 589
    const/16 v10, 0x400

    .line 591
    invoke-static {v9, v10}, Landroidx/constraintlayout/core/widgets/f;->b(II)Z

    .line 594
    move-result v9

    .line 595
    if-eqz v9, :cond_639

    .line 597
    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/d;->w0:Lw/b$b;

    .line 599
    iget-object v10, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 601
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 604
    move-result v11

    .line 605
    const/4 v12, 0x0

    .line 606
    :goto_25d
    if-ge v12, v11, :cond_288

    .line 608
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 611
    move-result-object v13

    .line 612
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 614
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 616
    const/4 v15, 0x0

    .line 617
    aget-object v2, v14, v15

    .line 619
    aget-object v14, v14, v6

    .line 621
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 623
    aget-object v8, v13, v15

    .line 625
    aget-object v13, v13, v6

    .line 627
    invoke-static {v2, v14, v8, v13}, Lw/g;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    .line 630
    move-result v2

    .line 631
    if-nez v2, :cond_284

    .line 633
    move/from16 v24, v0

    .line 635
    move/from16 v22, v3

    .line 637
    move/from16 v21, v4

    .line 639
    move-object/from16 v25, v5

    .line 641
    move-object/from16 v23, v7

    .line 643
    goto/16 :goto_5ed

    .line 645
    :cond_284
    add-int/lit8 v12, v12, 0x1

    .line 647
    const/4 v2, 0x2

    .line 648
    goto :goto_25d

    .line 649
    :cond_288
    const/4 v2, 0x0

    .line 650
    const/4 v6, 0x0

    .line 651
    const/4 v8, 0x0

    .line 652
    const/4 v12, 0x0

    .line 653
    const/4 v13, 0x0

    .line 654
    const/4 v14, 0x0

    .line 655
    const/4 v15, 0x0

    .line 656
    :goto_28f
    if-ge v6, v11, :cond_374

    .line 658
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 661
    move-result-object v21

    .line 662
    move/from16 v22, v3

    .line 664
    move-object/from16 v3, v21

    .line 666
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 668
    move/from16 v21, v4

    .line 670
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 672
    move-object/from16 v23, v7

    .line 674
    const/16 v19, 0x0

    .line 676
    aget-object v7, v4, v19

    .line 678
    const/16 v20, 0x1

    .line 680
    aget-object v4, v4, v20

    .line 682
    move/from16 v24, v0

    .line 684
    iget-object v0, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 686
    move-object/from16 v25, v5

    .line 688
    aget-object v5, v0, v19

    .line 690
    aget-object v0, v0, v20

    .line 692
    invoke-static {v7, v4, v5, v0}, Lw/g;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    .line 695
    move-result v0

    .line 696
    if-nez v0, :cond_2be

    .line 698
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->N0:Lw/b$a;

    .line 700
    invoke-static {v3, v9, v0}, Landroidx/constraintlayout/core/widgets/d;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;Lw/b$a;)V

    .line 703
    :cond_2be
    instance-of v0, v3, Landroidx/constraintlayout/core/widgets/e;

    .line 705
    if-eqz v0, :cond_2e3

    .line 707
    move-object v4, v3

    .line 708
    check-cast v4, Landroidx/constraintlayout/core/widgets/e;

    .line 710
    iget v5, v4, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 712
    if-nez v5, :cond_2d4

    .line 714
    if-nez v12, :cond_2d1

    .line 716
    new-instance v5, Ljava/util/ArrayList;

    .line 718
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 721
    move-object v12, v5

    .line 722
    :cond_2d1
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_2d4
    iget v5, v4, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 727
    const/4 v7, 0x1

    .line 728
    if-ne v5, v7, :cond_2e3

    .line 730
    if-nez v2, :cond_2e0

    .line 732
    new-instance v2, Ljava/util/ArrayList;

    .line 734
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 737
    :cond_2e0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_2e3
    instance-of v4, v3, Lv/b;

    .line 742
    if-eqz v4, :cond_328

    .line 744
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/a;

    .line 746
    if-eqz v4, :cond_311

    .line 748
    move-object v4, v3

    .line 749
    check-cast v4, Landroidx/constraintlayout/core/widgets/a;

    .line 751
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/a;->P()I

    .line 754
    move-result v5

    .line 755
    if-nez v5, :cond_2ff

    .line 757
    if-nez v8, :cond_2fc

    .line 759
    new-instance v5, Ljava/util/ArrayList;

    .line 761
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 764
    move-object v8, v5

    .line 765
    :cond_2fc
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_2ff
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/a;->P()I

    .line 771
    move-result v5

    .line 772
    const/4 v7, 0x1

    .line 773
    if-ne v5, v7, :cond_328

    .line 775
    if-nez v13, :cond_30d

    .line 777
    new-instance v13, Ljava/util/ArrayList;

    .line 779
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 782
    :cond_30d
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    goto :goto_328

    .line 786
    :cond_311
    move-object v4, v3

    .line 787
    check-cast v4, Lv/b;

    .line 789
    if-nez v8, :cond_31b

    .line 791
    new-instance v8, Ljava/util/ArrayList;

    .line 793
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 796
    :cond_31b
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    if-nez v13, :cond_325

    .line 801
    new-instance v13, Ljava/util/ArrayList;

    .line 803
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 806
    :cond_325
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    :cond_328
    :goto_328
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 811
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 813
    if-nez v4, :cond_344

    .line 815
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 817
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 819
    if-nez v4, :cond_344

    .line 821
    if-nez v0, :cond_344

    .line 823
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/a;

    .line 825
    if-nez v4, :cond_344

    .line 827
    if-nez v14, :cond_341

    .line 829
    new-instance v14, Ljava/util/ArrayList;

    .line 831
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 834
    :cond_341
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_344
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 839
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 841
    if-nez v4, :cond_366

    .line 843
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 845
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 847
    if-nez v4, :cond_366

    .line 849
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 851
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 853
    if-nez v4, :cond_366

    .line 855
    if-nez v0, :cond_366

    .line 857
    instance-of v0, v3, Landroidx/constraintlayout/core/widgets/a;

    .line 859
    if-nez v0, :cond_366

    .line 861
    if-nez v15, :cond_363

    .line 863
    new-instance v15, Ljava/util/ArrayList;

    .line 865
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 868
    :cond_363
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_366
    add-int/lit8 v6, v6, 0x1

    .line 873
    move/from16 v4, v21

    .line 875
    move/from16 v3, v22

    .line 877
    move-object/from16 v7, v23

    .line 879
    move/from16 v0, v24

    .line 881
    move-object/from16 v5, v25

    .line 883
    goto/16 :goto_28f

    .line 885
    :cond_374
    move/from16 v24, v0

    .line 887
    move/from16 v22, v3

    .line 889
    move/from16 v21, v4

    .line 891
    move-object/from16 v25, v5

    .line 893
    move-object/from16 v23, v7

    .line 895
    new-instance v0, Ljava/util/ArrayList;

    .line 897
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 900
    if-eqz v2, :cond_39b

    .line 902
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 905
    move-result-object v2

    .line 906
    :goto_389
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 909
    move-result v3

    .line 910
    if-eqz v3, :cond_39b

    .line 912
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 915
    move-result-object v3

    .line 916
    check-cast v3, Landroidx/constraintlayout/core/widgets/e;

    .line 918
    const/4 v4, 0x0

    .line 919
    const/4 v5, 0x0

    .line 920
    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    .line 923
    goto :goto_389

    .line 924
    :cond_39b
    const/4 v4, 0x0

    .line 925
    const/4 v5, 0x0

    .line 926
    if-eqz v8, :cond_3bc

    .line 928
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 931
    move-result-object v2

    .line 932
    :goto_3a3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 935
    move-result v3

    .line 936
    if-eqz v3, :cond_3bc

    .line 938
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 941
    move-result-object v3

    .line 942
    check-cast v3, Lv/b;

    .line 944
    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    .line 947
    move-result-object v6

    .line 948
    invoke-virtual {v3, v5, v6, v0}, Lv/b;->N(ILw/j;Ljava/util/ArrayList;)V

    .line 951
    invoke-virtual {v6, v0}, Lw/j;->b(Ljava/util/ArrayList;)V

    .line 954
    const/4 v4, 0x0

    .line 955
    const/4 v5, 0x0

    .line 956
    goto :goto_3a3

    .line 957
    :cond_3bc
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 959
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 962
    move-result-object v2

    .line 963
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 965
    if-eqz v2, :cond_3de

    .line 967
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 970
    move-result-object v2

    .line 971
    :goto_3ca
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 974
    move-result v3

    .line 975
    if-eqz v3, :cond_3de

    .line 977
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 980
    move-result-object v3

    .line 981
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 983
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 985
    const/4 v4, 0x0

    .line 986
    const/4 v5, 0x0

    .line 987
    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    .line 990
    goto :goto_3ca

    .line 991
    :cond_3de
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 993
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 996
    move-result-object v2

    .line 997
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 999
    if-eqz v2, :cond_400

    .line 1001
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1004
    move-result-object v2

    .line 1005
    :goto_3ec
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1008
    move-result v3

    .line 1009
    if-eqz v3, :cond_400

    .line 1011
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1014
    move-result-object v3

    .line 1015
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1017
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1019
    const/4 v4, 0x0

    .line 1020
    const/4 v5, 0x0

    .line 1021
    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    .line 1024
    goto :goto_3ec

    .line 1025
    :cond_400
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1027
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1030
    move-result-object v2

    .line 1031
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 1033
    if-eqz v2, :cond_422

    .line 1035
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1038
    move-result-object v2

    .line 1039
    :goto_40e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1042
    move-result v3

    .line 1043
    if-eqz v3, :cond_422

    .line 1045
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1048
    move-result-object v3

    .line 1049
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1051
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1053
    const/4 v4, 0x0

    .line 1054
    const/4 v5, 0x0

    .line 1055
    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    .line 1058
    goto :goto_40e

    .line 1059
    :cond_422
    const/4 v4, 0x0

    .line 1060
    const/4 v5, 0x0

    .line 1061
    if-eqz v14, :cond_43a

    .line 1063
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1066
    move-result-object v2

    .line 1067
    :goto_42a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1070
    move-result v3

    .line 1071
    if-eqz v3, :cond_43a

    .line 1073
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1076
    move-result-object v3

    .line 1077
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1079
    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    .line 1082
    goto :goto_42a

    .line 1083
    :cond_43a
    if-eqz v12, :cond_451

    .line 1085
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1088
    move-result-object v2

    .line 1089
    :goto_440
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1092
    move-result v3

    .line 1093
    if-eqz v3, :cond_451

    .line 1095
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1098
    move-result-object v3

    .line 1099
    check-cast v3, Landroidx/constraintlayout/core/widgets/e;

    .line 1101
    const/4 v5, 0x1

    .line 1102
    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    .line 1105
    goto :goto_440

    .line 1106
    :cond_451
    const/4 v5, 0x1

    .line 1107
    if-eqz v13, :cond_471

    .line 1109
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1112
    move-result-object v2

    .line 1113
    :goto_458
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1116
    move-result v3

    .line 1117
    if-eqz v3, :cond_471

    .line 1119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1122
    move-result-object v3

    .line 1123
    check-cast v3, Lv/b;

    .line 1125
    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    .line 1128
    move-result-object v6

    .line 1129
    invoke-virtual {v3, v5, v6, v0}, Lv/b;->N(ILw/j;Ljava/util/ArrayList;)V

    .line 1132
    invoke-virtual {v6, v0}, Lw/j;->b(Ljava/util/ArrayList;)V

    .line 1135
    const/4 v4, 0x0

    .line 1136
    const/4 v5, 0x1

    .line 1137
    goto :goto_458

    .line 1138
    :cond_471
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1140
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1143
    move-result-object v2

    .line 1144
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 1146
    if-eqz v2, :cond_493

    .line 1148
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1151
    move-result-object v2

    .line 1152
    :goto_47f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1155
    move-result v3

    .line 1156
    if-eqz v3, :cond_493

    .line 1158
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1161
    move-result-object v3

    .line 1162
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1164
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1166
    const/4 v4, 0x0

    .line 1167
    const/4 v5, 0x1

    .line 1168
    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    .line 1171
    goto :goto_47f

    .line 1172
    :cond_493
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1174
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1177
    move-result-object v2

    .line 1178
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 1180
    if-eqz v2, :cond_4b5

    .line 1182
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1185
    move-result-object v2

    .line 1186
    :goto_4a1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1189
    move-result v3

    .line 1190
    if-eqz v3, :cond_4b5

    .line 1192
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1195
    move-result-object v3

    .line 1196
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1198
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1200
    const/4 v4, 0x0

    .line 1201
    const/4 v5, 0x1

    .line 1202
    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    .line 1205
    goto :goto_4a1

    .line 1206
    :cond_4b5
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1208
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1211
    move-result-object v2

    .line 1212
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 1214
    if-eqz v2, :cond_4d7

    .line 1216
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1219
    move-result-object v2

    .line 1220
    :goto_4c3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1223
    move-result v3

    .line 1224
    if-eqz v3, :cond_4d7

    .line 1226
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1229
    move-result-object v3

    .line 1230
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1232
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1234
    const/4 v4, 0x0

    .line 1235
    const/4 v5, 0x1

    .line 1236
    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    .line 1239
    goto :goto_4c3

    .line 1240
    :cond_4d7
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1242
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1245
    move-result-object v2

    .line 1246
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 1248
    if-eqz v2, :cond_4f9

    .line 1250
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1253
    move-result-object v2

    .line 1254
    :goto_4e5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1257
    move-result v3

    .line 1258
    if-eqz v3, :cond_4f9

    .line 1260
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1263
    move-result-object v3

    .line 1264
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1266
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1268
    const/4 v4, 0x0

    .line 1269
    const/4 v5, 0x1

    .line 1270
    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    .line 1273
    goto :goto_4e5

    .line 1274
    :cond_4f9
    const/4 v4, 0x0

    .line 1275
    const/4 v5, 0x1

    .line 1276
    if-eqz v15, :cond_511

    .line 1278
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1281
    move-result-object v2

    .line 1282
    :goto_501
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1285
    move-result v3

    .line 1286
    if-eqz v3, :cond_511

    .line 1288
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1291
    move-result-object v3

    .line 1292
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1294
    invoke-static {v3, v5, v0, v4}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    .line 1297
    goto :goto_501

    .line 1298
    :cond_511
    const/4 v2, 0x0

    .line 1299
    :goto_512
    if-ge v2, v11, :cond_56e

    .line 1301
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1304
    move-result-object v3

    .line 1305
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1307
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1309
    const/4 v5, 0x0

    .line 1310
    aget-object v6, v4, v5

    .line 1312
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1314
    if-ne v6, v5, :cond_52a

    .line 1316
    const/4 v6, 0x1

    .line 1317
    aget-object v4, v4, v6

    .line 1319
    if-ne v4, v5, :cond_52a

    .line 1321
    const/4 v4, 0x1

    .line 1322
    goto :goto_52b

    .line 1323
    :cond_52a
    const/4 v4, 0x0

    .line 1324
    :goto_52b
    if-eqz v4, :cond_56b

    .line 1326
    iget v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q0:I

    .line 1328
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1331
    move-result v5

    .line 1332
    const/4 v6, 0x0

    .line 1333
    :goto_534
    if-ge v6, v5, :cond_544

    .line 1335
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1338
    move-result-object v7

    .line 1339
    check-cast v7, Lw/j;

    .line 1341
    iget v8, v7, Lw/j;->b:I

    .line 1343
    if-ne v4, v8, :cond_541

    .line 1345
    goto :goto_545

    .line 1346
    :cond_541
    add-int/lit8 v6, v6, 0x1

    .line 1348
    goto :goto_534

    .line 1349
    :cond_544
    const/4 v7, 0x0

    .line 1350
    :goto_545
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r0:I

    .line 1352
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1355
    move-result v4

    .line 1356
    const/4 v5, 0x0

    .line 1357
    :goto_54c
    if-ge v5, v4, :cond_55c

    .line 1359
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1362
    move-result-object v6

    .line 1363
    check-cast v6, Lw/j;

    .line 1365
    iget v8, v6, Lw/j;->b:I

    .line 1367
    if-ne v3, v8, :cond_559

    .line 1369
    goto :goto_55d

    .line 1370
    :cond_559
    add-int/lit8 v5, v5, 0x1

    .line 1372
    goto :goto_54c

    .line 1373
    :cond_55c
    const/4 v6, 0x0

    .line 1374
    :goto_55d
    if-eqz v7, :cond_56b

    .line 1376
    if-eqz v6, :cond_56b

    .line 1378
    const/4 v3, 0x0

    .line 1379
    invoke-virtual {v7, v3, v6}, Lw/j;->d(ILw/j;)V

    .line 1382
    const/4 v3, 0x2

    .line 1383
    iput v3, v6, Lw/j;->c:I

    .line 1385
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1388
    :cond_56b
    add-int/lit8 v2, v2, 0x1

    .line 1390
    goto :goto_512

    .line 1391
    :cond_56e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1394
    move-result v2

    .line 1395
    const/4 v3, 0x1

    .line 1396
    if-gt v2, v3, :cond_577

    .line 1398
    goto/16 :goto_5ed

    .line 1400
    :cond_577
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1402
    const/4 v3, 0x0

    .line 1403
    aget-object v2, v2, v3

    .line 1405
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1407
    if-ne v2, v3, :cond_5af

    .line 1409
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1412
    move-result-object v2

    .line 1413
    const/4 v3, 0x0

    .line 1414
    const/4 v4, 0x0

    .line 1415
    :cond_586
    :goto_586
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1418
    move-result v5

    .line 1419
    if-eqz v5, :cond_5a4

    .line 1421
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1424
    move-result-object v5

    .line 1425
    check-cast v5, Lw/j;

    .line 1427
    iget v6, v5, Lw/j;->c:I

    .line 1429
    const/4 v7, 0x1

    .line 1430
    if-ne v6, v7, :cond_598

    .line 1432
    goto :goto_586

    .line 1433
    :cond_598
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1435
    const/4 v7, 0x0

    .line 1436
    invoke-virtual {v5, v6, v7}, Lw/j;->c(Landroidx/constraintlayout/core/c;I)I

    .line 1439
    move-result v6

    .line 1440
    if-le v6, v4, :cond_586

    .line 1442
    move-object v3, v5

    .line 1443
    move v4, v6

    .line 1444
    goto :goto_586

    .line 1445
    :cond_5a4
    if-eqz v3, :cond_5af

    .line 1447
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1449
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1452
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 1455
    goto :goto_5b0

    .line 1456
    :cond_5af
    const/4 v3, 0x0

    .line 1457
    :goto_5b0
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1459
    const/4 v4, 0x1

    .line 1460
    aget-object v2, v2, v4

    .line 1462
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1464
    if-ne v2, v4, :cond_5e7

    .line 1466
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1469
    move-result-object v0

    .line 1470
    const/4 v2, 0x0

    .line 1471
    const/4 v4, 0x0

    .line 1472
    :cond_5bf
    :goto_5bf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1475
    move-result v5

    .line 1476
    if-eqz v5, :cond_5dc

    .line 1478
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1481
    move-result-object v5

    .line 1482
    check-cast v5, Lw/j;

    .line 1484
    iget v6, v5, Lw/j;->c:I

    .line 1486
    if-nez v6, :cond_5d0

    .line 1488
    goto :goto_5bf

    .line 1489
    :cond_5d0
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1491
    const/4 v7, 0x1

    .line 1492
    invoke-virtual {v5, v6, v7}, Lw/j;->c(Landroidx/constraintlayout/core/c;I)I

    .line 1495
    move-result v6

    .line 1496
    if-le v6, v4, :cond_5bf

    .line 1498
    move-object v2, v5

    .line 1499
    move v4, v6

    .line 1500
    goto :goto_5bf

    .line 1501
    :cond_5dc
    if-eqz v2, :cond_5e7

    .line 1503
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1505
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1508
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 1511
    goto :goto_5e8

    .line 1512
    :cond_5e7
    const/4 v2, 0x0

    .line 1513
    :goto_5e8
    if-nez v3, :cond_5ef

    .line 1515
    if-eqz v2, :cond_5ed

    .line 1517
    goto :goto_5ef

    .line 1518
    :cond_5ed
    :goto_5ed
    const/4 v0, 0x0

    .line 1519
    goto :goto_5f0

    .line 1520
    :cond_5ef
    :goto_5ef
    const/4 v0, 0x1

    .line 1521
    :goto_5f0
    if-eqz v0, :cond_630

    .line 1523
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1525
    move-object/from16 v2, v25

    .line 1527
    if-ne v2, v0, :cond_60e

    .line 1529
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 1532
    move-result v3

    .line 1533
    move/from16 v4, v24

    .line 1535
    if-ge v4, v3, :cond_609

    .line 1537
    if-lez v4, :cond_609

    .line 1539
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 1542
    const/4 v3, 0x1

    .line 1543
    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/d;->G0:Z

    .line 1545
    goto :goto_610

    .line 1546
    :cond_609
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 1549
    move-result v3

    .line 1550
    goto :goto_611

    .line 1551
    :cond_60e
    move/from16 v4, v24

    .line 1553
    :goto_610
    move v3, v4

    .line 1554
    :goto_611
    move-object/from16 v5, v23

    .line 1556
    if-ne v5, v0, :cond_62b

    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 1561
    move-result v0

    .line 1562
    move/from16 v6, v21

    .line 1564
    if-ge v6, v0, :cond_626

    .line 1566
    if-lez v6, :cond_626

    .line 1568
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 1571
    const/4 v4, 0x1

    .line 1572
    iput-boolean v4, v1, Landroidx/constraintlayout/core/widgets/d;->H0:Z

    .line 1574
    goto :goto_62d

    .line 1575
    :cond_626
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 1578
    move-result v4

    .line 1579
    goto :goto_62e

    .line 1580
    :cond_62b
    move/from16 v6, v21

    .line 1582
    :goto_62d
    move v4, v6

    .line 1583
    :goto_62e
    const/4 v0, 0x1

    .line 1584
    goto :goto_642

    .line 1585
    :cond_630
    move/from16 v6, v21

    .line 1587
    move-object/from16 v5, v23

    .line 1589
    move/from16 v4, v24

    .line 1591
    move-object/from16 v2, v25

    .line 1593
    goto :goto_63f

    .line 1594
    :cond_639
    move/from16 v22, v3

    .line 1596
    move v6, v4

    .line 1597
    move-object v2, v5

    .line 1598
    move-object v5, v7

    .line 1599
    move v4, v0

    .line 1600
    :goto_63f
    move v3, v4

    .line 1601
    move v4, v6

    .line 1602
    const/4 v0, 0x0

    .line 1603
    :goto_642
    const/16 v6, 0x40

    .line 1605
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    .line 1608
    move-result v7

    .line 1609
    if-nez v7, :cond_655

    .line 1611
    const/16 v7, 0x80

    .line 1613
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    .line 1616
    move-result v7

    .line 1617
    if-eqz v7, :cond_653

    .line 1619
    goto :goto_655

    .line 1620
    :cond_653
    const/4 v7, 0x0

    .line 1621
    goto :goto_656

    .line 1622
    :cond_655
    :goto_655
    const/4 v7, 0x1

    .line 1623
    :goto_656
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1625
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1628
    const/4 v9, 0x0

    .line 1629
    iput-boolean v9, v8, Landroidx/constraintlayout/core/c;->g:Z

    .line 1631
    iget v10, v1, Landroidx/constraintlayout/core/widgets/d;->F0:I

    .line 1633
    if-eqz v10, :cond_668

    .line 1635
    if-eqz v7, :cond_668

    .line 1637
    const/4 v7, 0x1

    .line 1638
    iput-boolean v7, v8, Landroidx/constraintlayout/core/c;->g:Z

    .line 1640
    goto :goto_669

    .line 1641
    :cond_668
    const/4 v7, 0x1

    .line 1642
    :goto_669
    iget-object v8, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 1644
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1646
    aget-object v11, v10, v9

    .line 1648
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1650
    if-eq v11, v12, :cond_67a

    .line 1652
    aget-object v10, v10, v7

    .line 1654
    if-ne v10, v12, :cond_678

    .line 1656
    goto :goto_67a

    .line 1657
    :cond_678
    move v11, v9

    .line 1658
    goto :goto_67b

    .line 1659
    :cond_67a
    :goto_67a
    const/4 v11, 0x1

    .line 1660
    :goto_67b
    iput v9, v1, Landroidx/constraintlayout/core/widgets/d;->B0:I

    .line 1662
    iput v9, v1, Landroidx/constraintlayout/core/widgets/d;->C0:I

    .line 1664
    move/from16 v9, v22

    .line 1666
    const/4 v7, 0x0

    .line 1667
    :goto_682
    if-ge v7, v9, :cond_698

    .line 1669
    iget-object v10, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 1671
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1674
    move-result-object v10

    .line 1675
    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1677
    instance-of v12, v10, Lv/c;

    .line 1679
    if-eqz v12, :cond_695

    .line 1681
    check-cast v10, Lv/c;

    .line 1683
    invoke-virtual {v10}, Lv/c;->N()V

    .line 1686
    :cond_695
    add-int/lit8 v7, v7, 0x1

    .line 1688
    goto :goto_682

    .line 1689
    :cond_698
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    .line 1692
    move-result v7

    .line 1693
    move v10, v0

    .line 1694
    const/4 v0, 0x0

    .line 1695
    const/4 v12, 0x1

    .line 1696
    :goto_69f
    if-eqz v12, :cond_8f7

    .line 1698
    const/4 v13, 0x1

    .line 1699
    add-int/lit8 v14, v0, 0x1

    .line 1701
    :try_start_6a4
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1703
    invoke-virtual {v0}, Landroidx/constraintlayout/core/c;->s()V

    .line 1706
    const/4 v13, 0x0

    .line 1707
    iput v13, v1, Landroidx/constraintlayout/core/widgets/d;->B0:I

    .line 1709
    iput v13, v1, Landroidx/constraintlayout/core/widgets/d;->C0:I

    .line 1711
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1713
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/core/c;)V

    .line 1716
    const/4 v0, 0x0

    .line 1717
    :goto_6b4
    if-ge v0, v9, :cond_6c6

    .line 1719
    iget-object v13, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 1721
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1724
    move-result-object v13

    .line 1725
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1727
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1729
    invoke-virtual {v13, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/core/c;)V

    .line 1732
    add-int/lit8 v0, v0, 0x1

    .line 1734
    goto :goto_6b4

    .line 1735
    :cond_6c6
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1737
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/d;->P(Landroidx/constraintlayout/core/c;)V
    :try_end_6cb
    .catch Ljava/lang/Exception; {:try_start_6a4 .. :try_end_6cb} :catch_784

    .line 1740
    :try_start_6cb
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->I0:Ljava/lang/ref/WeakReference;
    :try_end_6cd
    .catch Ljava/lang/Exception; {:try_start_6cb .. :try_end_6cd} :catch_777

    .line 1742
    const/4 v12, 0x5

    .line 1743
    if-eqz v0, :cond_6f8

    .line 1745
    :try_start_6d0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1748
    move-result-object v0

    .line 1749
    if-eqz v0, :cond_6f8

    .line 1751
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->I0:Ljava/lang/ref/WeakReference;

    .line 1753
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1756
    move-result-object v0

    .line 1757
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1759
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1761
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1763
    invoke-virtual {v13, v15}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1766
    move-result-object v13

    .line 1767
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1769
    invoke-virtual {v15, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1772
    move-result-object v0

    .line 1773
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1775
    const/4 v6, 0x0

    .line 1776
    invoke-virtual {v15, v0, v13, v6, v12}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_6f2
    .catch Ljava/lang/Exception; {:try_start_6d0 .. :try_end_6f2} :catch_6f6

    .line 1779
    const/4 v6, 0x0

    .line 1780
    :try_start_6f3
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->I0:Ljava/lang/ref/WeakReference;

    .line 1782
    goto :goto_6f8

    .line 1783
    :catch_6f6
    move-exception v0

    .line 1784
    goto :goto_74b

    .line 1785
    :cond_6f8
    :goto_6f8
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->K0:Ljava/lang/ref/WeakReference;
    :try_end_6fa
    .catch Ljava/lang/Exception; {:try_start_6f3 .. :try_end_6fa} :catch_777

    .line 1787
    if-eqz v0, :cond_721

    .line 1789
    :try_start_6fc
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1792
    move-result-object v0

    .line 1793
    if-eqz v0, :cond_721

    .line 1795
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->K0:Ljava/lang/ref/WeakReference;

    .line 1797
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1800
    move-result-object v0

    .line 1801
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1803
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1805
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1807
    invoke-virtual {v6, v13}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1810
    move-result-object v6

    .line 1811
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1813
    invoke-virtual {v13, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1816
    move-result-object v0

    .line 1817
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1819
    const/4 v15, 0x0

    .line 1820
    invoke-virtual {v13, v6, v0, v15, v12}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_71e
    .catch Ljava/lang/Exception; {:try_start_6fc .. :try_end_71e} :catch_6f6

    .line 1823
    const/4 v6, 0x0

    .line 1824
    :try_start_71f
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->K0:Ljava/lang/ref/WeakReference;

    .line 1826
    :cond_721
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->J0:Ljava/lang/ref/WeakReference;
    :try_end_723
    .catch Ljava/lang/Exception; {:try_start_71f .. :try_end_723} :catch_777

    .line 1828
    if-eqz v0, :cond_74d

    .line 1830
    :try_start_725
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1833
    move-result-object v0

    .line 1834
    if-eqz v0, :cond_74d

    .line 1836
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->J0:Ljava/lang/ref/WeakReference;

    .line 1838
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1841
    move-result-object v0

    .line 1842
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1844
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1846
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1848
    invoke-virtual {v6, v13}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1851
    move-result-object v6

    .line 1852
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1854
    invoke-virtual {v13, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1857
    move-result-object v0

    .line 1858
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1860
    const/4 v15, 0x0

    .line 1861
    invoke-virtual {v13, v0, v6, v15, v12}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_747
    .catch Ljava/lang/Exception; {:try_start_725 .. :try_end_747} :catch_6f6

    .line 1864
    const/4 v6, 0x0

    .line 1865
    :try_start_748
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->J0:Ljava/lang/ref/WeakReference;

    .line 1867
    goto :goto_74d

    .line 1868
    :goto_74b
    const/4 v6, 0x0

    .line 1869
    goto :goto_782

    .line 1870
    :cond_74d
    :goto_74d
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->L0:Ljava/lang/ref/WeakReference;

    .line 1872
    if-eqz v0, :cond_779

    .line 1874
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1877
    move-result-object v0

    .line 1878
    if-eqz v0, :cond_779

    .line 1880
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->L0:Ljava/lang/ref/WeakReference;

    .line 1882
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1885
    move-result-object v0

    .line 1886
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1888
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1890
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1892
    invoke-virtual {v6, v13}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1895
    move-result-object v6

    .line 1896
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1898
    invoke-virtual {v13, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1901
    move-result-object v0

    .line 1902
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1904
    const/4 v15, 0x0

    .line 1905
    invoke-virtual {v13, v6, v0, v15, v12}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_773
    .catch Ljava/lang/Exception; {:try_start_748 .. :try_end_773} :catch_777

    .line 1908
    const/4 v6, 0x0

    .line 1909
    :try_start_774
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->L0:Ljava/lang/ref/WeakReference;

    .line 1911
    goto :goto_77a

    .line 1912
    :catch_777
    move-exception v0

    .line 1913
    goto :goto_74b

    .line 1914
    :cond_779
    const/4 v6, 0x0

    .line 1915
    :goto_77a
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1917
    invoke-virtual {v0}, Landroidx/constraintlayout/core/c;->p()V
    :try_end_77f
    .catch Ljava/lang/Exception; {:try_start_774 .. :try_end_77f} :catch_781

    .line 1920
    const/4 v12, 0x1

    .line 1921
    goto :goto_79f

    .line 1922
    :catch_781
    move-exception v0

    .line 1923
    :goto_782
    const/4 v12, 0x1

    .line 1924
    goto :goto_786

    .line 1925
    :catch_784
    move-exception v0

    .line 1926
    const/4 v6, 0x0

    .line 1927
    :goto_786
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1930
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1932
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1934
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1937
    const-string v6, "EXCEPTION : "

    .line 1939
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1945
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1948
    move-result-object v0

    .line 1949
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1952
    :goto_79f
    if-eqz v12, :cond_7e8

    .line 1954
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 1956
    sget-object v6, Landroidx/constraintlayout/core/widgets/f;->a:[Z

    .line 1958
    const/4 v12, 0x2

    .line 1959
    const/4 v13, 0x0

    .line 1960
    aput-boolean v13, v6, v12

    .line 1962
    const/16 v6, 0x40

    .line 1964
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    .line 1967
    move-result v12

    .line 1968
    invoke-virtual {v1, v0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M(Landroidx/constraintlayout/core/c;Z)V

    .line 1971
    iget-object v13, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 1973
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 1976
    move-result v13

    .line 1977
    const/4 v15, 0x0

    .line 1978
    const/16 v21, 0x0

    .line 1980
    :goto_7bb
    if-ge v15, v13, :cond_7e6

    .line 1982
    iget-object v6, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 1984
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1987
    move-result-object v6

    .line 1988
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1990
    invoke-virtual {v6, v0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M(Landroidx/constraintlayout/core/c;Z)V

    .line 1993
    move-object/from16 v23, v0

    .line 1995
    iget v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:I

    .line 1997
    move/from16 v24, v12

    .line 1999
    const/4 v12, -0x1

    .line 2000
    if-ne v0, v12, :cond_7d8

    .line 2002
    iget v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:I

    .line 2004
    if-eq v0, v12, :cond_7d6

    .line 2006
    goto :goto_7d8

    .line 2007
    :cond_7d6
    const/4 v0, 0x0

    .line 2008
    goto :goto_7d9

    .line 2009
    :cond_7d8
    :goto_7d8
    const/4 v0, 0x1

    .line 2010
    :goto_7d9
    if-eqz v0, :cond_7dd

    .line 2012
    const/16 v21, 0x1

    .line 2014
    :cond_7dd
    add-int/lit8 v15, v15, 0x1

    .line 2016
    move-object/from16 v0, v23

    .line 2018
    move/from16 v12, v24

    .line 2020
    const/16 v6, 0x40

    .line 2022
    goto :goto_7bb

    .line 2023
    :cond_7e6
    const/4 v12, -0x1

    .line 2024
    goto :goto_803

    .line 2025
    :cond_7e8
    const/4 v12, -0x1

    .line 2026
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 2028
    invoke-virtual {v1, v0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M(Landroidx/constraintlayout/core/c;Z)V

    .line 2031
    const/4 v0, 0x0

    .line 2032
    :goto_7ef
    if-ge v0, v9, :cond_801

    .line 2034
    iget-object v6, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 2036
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2039
    move-result-object v6

    .line 2040
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2042
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 2044
    invoke-virtual {v6, v13, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M(Landroidx/constraintlayout/core/c;Z)V

    .line 2047
    add-int/lit8 v0, v0, 0x1

    .line 2049
    goto :goto_7ef

    .line 2050
    :cond_801
    const/16 v21, 0x0

    .line 2052
    :goto_803
    const/16 v0, 0x8

    .line 2054
    if-eqz v11, :cond_86e

    .line 2056
    if-ge v14, v0, :cond_86e

    .line 2058
    sget-object v6, Landroidx/constraintlayout/core/widgets/f;->a:[Z

    .line 2060
    const/4 v13, 0x2

    .line 2061
    aget-boolean v6, v6, v13

    .line 2063
    if-eqz v6, :cond_86e

    .line 2065
    const/4 v6, 0x0

    .line 2066
    const/4 v12, 0x0

    .line 2067
    const/4 v15, 0x0

    .line 2068
    :goto_813
    if-ge v6, v9, :cond_83a

    .line 2070
    iget-object v13, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 2072
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2075
    move-result-object v13

    .line 2076
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2078
    iget v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 2080
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 2083
    move-result v24

    .line 2084
    add-int v0, v24, v0

    .line 2086
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    .line 2089
    move-result v15

    .line 2090
    iget v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 2092
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 2095
    move-result v13

    .line 2096
    add-int/2addr v13, v0

    .line 2097
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 2100
    move-result v12

    .line 2101
    add-int/lit8 v6, v6, 0x1

    .line 2103
    const/16 v0, 0x8

    .line 2105
    const/4 v13, 0x2

    .line 2106
    goto :goto_813

    .line 2107
    :cond_83a
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 2109
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    .line 2112
    move-result v0

    .line 2113
    iget v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 2115
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    .line 2118
    move-result v6

    .line 2119
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2121
    if-ne v2, v12, :cond_85b

    .line 2123
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 2126
    move-result v13

    .line 2127
    if-ge v13, v0, :cond_85b

    .line 2129
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 2132
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2134
    const/4 v10, 0x0

    .line 2135
    aput-object v12, v0, v10

    .line 2137
    const/4 v10, 0x1

    .line 2138
    const/16 v21, 0x1

    .line 2140
    :cond_85b
    if-ne v5, v12, :cond_86e

    .line 2142
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 2145
    move-result v0

    .line 2146
    if-ge v0, v6, :cond_86e

    .line 2148
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 2151
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2153
    const/4 v6, 0x1

    .line 2154
    aput-object v12, v0, v6

    .line 2156
    const/4 v10, 0x1

    .line 2157
    const/16 v21, 0x1

    .line 2159
    :cond_86e
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 2161
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 2164
    move-result v6

    .line 2165
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 2168
    move-result v0

    .line 2169
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 2172
    move-result v6

    .line 2173
    if-le v0, v6, :cond_88b

    .line 2175
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 2178
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2180
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2182
    const/4 v10, 0x0

    .line 2183
    aput-object v6, v0, v10

    .line 2185
    const/4 v10, 0x1

    .line 2186
    const/16 v21, 0x1

    .line 2188
    :cond_88b
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 2190
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 2193
    move-result v6

    .line 2194
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 2197
    move-result v0

    .line 2198
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 2201
    move-result v6

    .line 2202
    if-le v0, v6, :cond_8a9

    .line 2204
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 2207
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2209
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2211
    const/4 v12, 0x1

    .line 2212
    aput-object v6, v0, v12

    .line 2214
    move v10, v12

    .line 2215
    move/from16 v21, v10

    .line 2217
    goto :goto_8aa

    .line 2218
    :cond_8a9
    const/4 v12, 0x1

    .line 2219
    :goto_8aa
    if-nez v10, :cond_8ea

    .line 2221
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2223
    const/4 v6, 0x0

    .line 2224
    aget-object v0, v0, v6

    .line 2226
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2228
    if-ne v0, v13, :cond_8cb

    .line 2230
    if-lez v3, :cond_8cb

    .line 2232
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 2235
    move-result v0

    .line 2236
    if-le v0, v3, :cond_8cb

    .line 2238
    iput-boolean v12, v1, Landroidx/constraintlayout/core/widgets/d;->G0:Z

    .line 2240
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2242
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2244
    aput-object v10, v0, v6

    .line 2246
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 2249
    move v10, v12

    .line 2250
    move/from16 v21, v10

    .line 2252
    :cond_8cb
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2254
    aget-object v0, v0, v12

    .line 2256
    if-ne v0, v13, :cond_8ea

    .line 2258
    if-lez v4, :cond_8ea

    .line 2260
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 2263
    move-result v0

    .line 2264
    if-le v0, v4, :cond_8ea

    .line 2266
    iput-boolean v12, v1, Landroidx/constraintlayout/core/widgets/d;->H0:Z

    .line 2268
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2270
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2272
    aput-object v6, v0, v12

    .line 2274
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 2277
    const/16 v0, 0x8

    .line 2279
    const/4 v10, 0x1

    .line 2280
    const/16 v21, 0x1

    .line 2282
    goto :goto_8ec

    .line 2283
    :cond_8ea
    const/16 v0, 0x8

    .line 2285
    :goto_8ec
    if-le v14, v0, :cond_8f0

    .line 2287
    const/4 v12, 0x0

    .line 2288
    goto :goto_8f2

    .line 2289
    :cond_8f0
    move/from16 v12, v21

    .line 2291
    :goto_8f2
    move v0, v14

    .line 2292
    const/16 v6, 0x40

    .line 2294
    goto/16 :goto_69f

    .line 2296
    :cond_8f7
    iput-object v8, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 2298
    if-eqz v10, :cond_903

    .line 2300
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2302
    const/4 v3, 0x0

    .line 2303
    aput-object v2, v0, v3

    .line 2305
    const/4 v2, 0x1

    .line 2306
    aput-object v5, v0, v2

    .line 2308
    :cond_903
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 2310
    iget-object v0, v0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 2312
    invoke-virtual {v1, v0}, Lv/c;->C(Lt/a;)V

    .line 2315
    return-void
.end method

.method public final O(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_28

    .line 4
    iget p1, p0, Landroidx/constraintlayout/core/widgets/d;->B0:I

    .line 6
    add-int/2addr p1, v0

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/d;->E0:[Landroidx/constraintlayout/core/widgets/c;

    .line 9
    array-length v2, v1

    .line 10
    if-lt p1, v2, :cond_16

    .line 12
    array-length p1, v1

    .line 13
    mul-int/lit8 p1, p1, 0x2

    .line 15
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, [Landroidx/constraintlayout/core/widgets/c;

    .line 21
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/d;->E0:[Landroidx/constraintlayout/core/widgets/c;

    .line 23
    :cond_16
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/d;->E0:[Landroidx/constraintlayout/core/widgets/c;

    .line 25
    iget v1, p0, Landroidx/constraintlayout/core/widgets/d;->B0:I

    .line 27
    new-instance v2, Landroidx/constraintlayout/core/widgets/c;

    .line 29
    const/4 v3, 0x0

    .line 30
    iget-boolean v4, p0, Landroidx/constraintlayout/core/widgets/d;->x0:Z

    .line 32
    invoke-direct {v2, p2, v3, v4}, Landroidx/constraintlayout/core/widgets/c;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    .line 35
    aput-object v2, p1, v1

    .line 37
    add-int/2addr v1, v0

    .line 38
    iput v1, p0, Landroidx/constraintlayout/core/widgets/d;->B0:I

    .line 40
    goto :goto_4d

    .line 41
    :cond_28
    if-ne p1, v0, :cond_4d

    .line 43
    iget p1, p0, Landroidx/constraintlayout/core/widgets/d;->C0:I

    .line 45
    add-int/2addr p1, v0

    .line 46
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/d;->D0:[Landroidx/constraintlayout/core/widgets/c;

    .line 48
    array-length v2, v1

    .line 49
    if-lt p1, v2, :cond_3d

    .line 51
    array-length p1, v1

    .line 52
    mul-int/lit8 p1, p1, 0x2

    .line 54
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    check-cast p1, [Landroidx/constraintlayout/core/widgets/c;

    .line 60
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/d;->D0:[Landroidx/constraintlayout/core/widgets/c;

    .line 62
    :cond_3d
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/d;->D0:[Landroidx/constraintlayout/core/widgets/c;

    .line 64
    iget v1, p0, Landroidx/constraintlayout/core/widgets/d;->C0:I

    .line 66
    new-instance v2, Landroidx/constraintlayout/core/widgets/c;

    .line 68
    iget-boolean v3, p0, Landroidx/constraintlayout/core/widgets/d;->x0:Z

    .line 70
    invoke-direct {v2, p2, v0, v3}, Landroidx/constraintlayout/core/widgets/c;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    .line 73
    aput-object v2, p1, v1

    .line 75
    add-int/2addr v1, v0

    .line 76
    iput v1, p0, Landroidx/constraintlayout/core/widgets/d;->C0:I

    .line 78
    :cond_4d
    :goto_4d
    return-void
.end method

.method public final P(Landroidx/constraintlayout/core/c;)V
    .registers 14

    .line 1
    const/16 v0, 0x40

    .line 3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    .line 10
    iget-object v1, p0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    move v4, v3

    .line 19
    :goto_12
    const/4 v5, 0x1

    .line 20
    if-ge v3, v1, :cond_2b

    .line 22
    iget-object v6, p0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 30
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    .line 32
    aput-boolean v2, v7, v2

    .line 34
    aput-boolean v2, v7, v5

    .line 36
    instance-of v6, v6, Landroidx/constraintlayout/core/widgets/a;

    .line 38
    if-eqz v6, :cond_28

    .line 40
    move v4, v5

    .line 41
    :cond_28
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_12

    .line 44
    :cond_2b
    if-eqz v4, :cond_6e

    .line 46
    move v3, v2

    .line 47
    :goto_2e
    if-ge v3, v1, :cond_6e

    .line 49
    iget-object v4, p0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 57
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/a;

    .line 59
    if-eqz v6, :cond_6b

    .line 61
    check-cast v4, Landroidx/constraintlayout/core/widgets/a;

    .line 63
    move v6, v2

    .line 64
    :goto_3f
    iget v7, v4, Lv/b;->t0:I

    .line 66
    if-ge v6, v7, :cond_6b

    .line 68
    iget-object v7, v4, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 70
    aget-object v7, v7, v6

    .line 72
    iget-boolean v8, v4, Landroidx/constraintlayout/core/widgets/a;->v0:Z

    .line 74
    if-nez v8, :cond_52

    .line 76
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c()Z

    .line 79
    move-result v8

    .line 80
    if-nez v8, :cond_52

    .line 82
    goto :goto_68

    .line 83
    :cond_52
    iget v8, v4, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 85
    if-eqz v8, :cond_64

    .line 87
    if-ne v8, v5, :cond_59

    .line 89
    goto :goto_64

    .line 90
    :cond_59
    const/4 v9, 0x2

    .line 91
    if-eq v8, v9, :cond_5f

    .line 93
    const/4 v9, 0x3

    .line 94
    if-ne v8, v9, :cond_68

    .line 96
    :cond_5f
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    .line 98
    aput-boolean v5, v7, v5

    .line 100
    goto :goto_68

    .line 101
    :cond_64
    :goto_64
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    .line 103
    aput-boolean v5, v7, v2

    .line 105
    :cond_68
    :goto_68
    add-int/lit8 v6, v6, 0x1

    .line 107
    goto :goto_3f

    .line 108
    :cond_6b
    add-int/lit8 v3, v3, 0x1

    .line 110
    goto :goto_2e

    .line 111
    :cond_6e
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    .line 113
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 116
    move v3, v2

    .line 117
    :goto_74
    if-ge v3, v1, :cond_9f

    .line 119
    iget-object v4, p0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    move-result-object v4

    .line 125
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 127
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/g;

    .line 132
    if-nez v6, :cond_8c

    .line 134
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/e;

    .line 136
    if-eqz v6, :cond_8a

    .line 138
    goto :goto_8c

    .line 139
    :cond_8a
    move v6, v2

    .line 140
    goto :goto_8d

    .line 141
    :cond_8c
    :goto_8c
    move v6, v5

    .line 142
    :goto_8d
    if-eqz v6, :cond_9c

    .line 144
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/g;

    .line 146
    if-eqz v6, :cond_99

    .line 148
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    .line 150
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    goto :goto_9c

    .line 154
    :cond_99
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    .line 157
    :cond_9c
    :goto_9c
    add-int/lit8 v3, v3, 0x1

    .line 159
    goto :goto_74

    .line 160
    :cond_9f
    :goto_9f
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    .line 162
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 165
    move-result v3

    .line 166
    if-lez v3, :cond_106

    .line 168
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    .line 170
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 173
    move-result v3

    .line 174
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    .line 176
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 179
    move-result-object v4

    .line 180
    :cond_b3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_e2

    .line 186
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    move-result-object v6

    .line 190
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 192
    check-cast v6, Landroidx/constraintlayout/core/widgets/g;

    .line 194
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    .line 196
    move v8, v2

    .line 197
    :goto_c4
    iget v9, v6, Lv/b;->t0:I

    .line 199
    if-ge v8, v9, :cond_d7

    .line 201
    iget-object v9, v6, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 203
    aget-object v9, v9, v8

    .line 205
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 208
    move-result v9

    .line 209
    if-eqz v9, :cond_d4

    .line 211
    move v7, v5

    .line 212
    goto :goto_d8

    .line 213
    :cond_d4
    add-int/lit8 v8, v8, 0x1

    .line 215
    goto :goto_c4

    .line 216
    :cond_d7
    move v7, v2

    .line 217
    :goto_d8
    if-eqz v7, :cond_b3

    .line 219
    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    .line 222
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    .line 224
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 227
    :cond_e2
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    .line 229
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 232
    move-result v4

    .line 233
    if-ne v3, v4, :cond_9f

    .line 235
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    .line 237
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 240
    move-result-object v3

    .line 241
    :goto_f0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_100

    .line 247
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    move-result-object v4

    .line 251
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 253
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    .line 256
    goto :goto_f0

    .line 257
    :cond_100
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->M0:Ljava/util/HashSet;

    .line 259
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 262
    goto :goto_9f

    .line 263
    :cond_106
    sget-boolean v3, Landroidx/constraintlayout/core/c;->p:Z

    .line 265
    if-eqz v3, :cond_15b

    .line 267
    new-instance v3, Ljava/util/HashSet;

    .line 269
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 272
    move v4, v2

    .line 273
    :goto_110
    if-ge v4, v1, :cond_131

    .line 275
    iget-object v6, p0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 277
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 280
    move-result-object v6

    .line 281
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 283
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/g;

    .line 288
    if-nez v7, :cond_128

    .line 290
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/e;

    .line 292
    if-eqz v7, :cond_126

    .line 294
    goto :goto_128

    .line 295
    :cond_126
    move v7, v2

    .line 296
    goto :goto_129

    .line 297
    :cond_128
    :goto_128
    move v7, v5

    .line 298
    :goto_129
    if-nez v7, :cond_12e

    .line 300
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_12e
    add-int/lit8 v4, v4, 0x1

    .line 305
    goto :goto_110

    .line 306
    :cond_131
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 308
    aget-object v1, v1, v2

    .line 310
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 312
    if-ne v1, v4, :cond_13b

    .line 314
    move v10, v2

    .line 315
    goto :goto_13c

    .line 316
    :cond_13b
    move v10, v5

    .line 317
    :goto_13c
    const/4 v11, 0x0

    .line 318
    move-object v6, p0

    .line 319
    move-object v7, p0

    .line 320
    move-object v8, p1

    .line 321
    move-object v9, v3

    .line 322
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/HashSet;IZ)V

    .line 325
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 328
    move-result-object v1

    .line 329
    :goto_148
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 332
    move-result v3

    .line 333
    if-eqz v3, :cond_1a5

    .line 335
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 338
    move-result-object v3

    .line 339
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 341
    invoke-static {p0, p1, v3}, Landroidx/constraintlayout/core/widgets/f;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 344
    invoke-virtual {v3, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    .line 347
    goto :goto_148

    .line 348
    :cond_15b
    move v3, v2

    .line 349
    :goto_15c
    if-ge v3, v1, :cond_1a5

    .line 351
    iget-object v4, p0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 353
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 356
    move-result-object v4

    .line 357
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 359
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/d;

    .line 361
    if-eqz v6, :cond_18e

    .line 363
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 365
    aget-object v7, v6, v2

    .line 367
    aget-object v6, v6, v5

    .line 369
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 371
    if-ne v7, v8, :cond_179

    .line 373
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 375
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 378
    :cond_179
    if-ne v6, v8, :cond_180

    .line 380
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 382
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 385
    :cond_180
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    .line 388
    if-ne v7, v8, :cond_188

    .line 390
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 393
    :cond_188
    if-ne v6, v8, :cond_1a2

    .line 395
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 398
    goto :goto_1a2

    .line 399
    :cond_18e
    invoke-static {p0, p1, v4}, Landroidx/constraintlayout/core/widgets/f;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 402
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/g;

    .line 404
    if-nez v6, :cond_19c

    .line 406
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/e;

    .line 408
    if-eqz v6, :cond_19a

    .line 410
    goto :goto_19c

    .line 411
    :cond_19a
    move v6, v2

    .line 412
    goto :goto_19d

    .line 413
    :cond_19c
    :goto_19c
    move v6, v5

    .line 414
    :goto_19d
    if-nez v6, :cond_1a2

    .line 416
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    .line 419
    :cond_1a2
    :goto_1a2
    add-int/lit8 v3, v3, 0x1

    .line 421
    goto :goto_15c

    .line 422
    :cond_1a5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/d;->B0:I

    .line 424
    const/4 v1, 0x0

    .line 425
    if-lez v0, :cond_1ad

    .line 427
    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/core/widgets/b;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/ArrayList;I)V

    .line 430
    :cond_1ad
    iget v0, p0, Landroidx/constraintlayout/core/widgets/d;->C0:I

    .line 432
    if-lez v0, :cond_1b4

    .line 434
    invoke-static {p0, p1, v1, v5}, Landroidx/constraintlayout/core/widgets/b;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/ArrayList;I)V

    .line 437
    :cond_1b4
    return-void
.end method

.method public final Q(IZ)Z
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->u0:Lw/e;

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr p2, v1

    .line 5
    iget-object v2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 11
    move-result-object v2

    .line 12
    iget-object v4, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 14
    invoke-virtual {v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 17
    move-result-object v4

    .line 18
    iget-object v5, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 20
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 23
    move-result v5

    .line 24
    iget-object v6, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 26
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 29
    move-result v6

    .line 30
    if-eqz p2, :cond_8b

    .line 32
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 34
    if-eq v2, v7, :cond_25

    .line 36
    if-ne v4, v7, :cond_8b

    .line 38
    :cond_25
    iget-object v7, v0, Lw/e;->e:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v7

    .line 44
    :cond_2b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_42

    .line 50
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v8

    .line 54
    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 56
    iget v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 58
    if-ne v9, p1, :cond_2b

    .line 60
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->k()Z

    .line 63
    move-result v8

    .line 64
    if-nez v8, :cond_2b

    .line 66
    move p2, v3

    .line 67
    :cond_42
    if-nez p1, :cond_68

    .line 69
    if-eqz p2, :cond_8b

    .line 71
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 73
    if-ne v2, p2, :cond_8b

    .line 75
    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 77
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 79
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 82
    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 84
    invoke-virtual {v0, p2, v3}, Lw/e;->d(Landroidx/constraintlayout/core/widgets/d;I)I

    .line 87
    move-result v7

    .line 88
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 91
    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 93
    iget-object v7, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 95
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 97
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 100
    move-result p2

    .line 101
    invoke-virtual {v7, p2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 104
    goto :goto_8b

    .line 105
    :cond_68
    if-eqz p2, :cond_8b

    .line 107
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 109
    if-ne v4, p2, :cond_8b

    .line 111
    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 113
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 115
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 118
    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 120
    invoke-virtual {v0, p2, v1}, Lw/e;->d(Landroidx/constraintlayout/core/widgets/d;I)I

    .line 123
    move-result v7

    .line 124
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 127
    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 129
    iget-object v7, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 131
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 133
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 136
    move-result p2

    .line 137
    invoke-virtual {v7, p2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 140
    :cond_8b
    :goto_8b
    if-nez p1, :cond_b4

    .line 142
    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 144
    iget-object v6, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 146
    aget-object v6, v6, v3

    .line 148
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 150
    if-eq v6, v7, :cond_9b

    .line 152
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 154
    if-ne v6, v7, :cond_c3

    .line 156
    :cond_9b
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 159
    move-result p2

    .line 160
    add-int/2addr p2, v5

    .line 161
    iget-object v6, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 163
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 165
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 167
    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 170
    iget-object v6, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 172
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 174
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 176
    sub-int/2addr p2, v5

    .line 177
    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 180
    goto :goto_dd

    .line 181
    :cond_b4
    iget-object p2, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 183
    iget-object v5, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 185
    aget-object v5, v5, v1

    .line 187
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 189
    if-eq v5, v7, :cond_c5

    .line 191
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 193
    if-ne v5, v7, :cond_c3

    .line 195
    goto :goto_c5

    .line 196
    :cond_c3
    move p2, v3

    .line 197
    goto :goto_de

    .line 198
    :cond_c5
    :goto_c5
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 201
    move-result p2

    .line 202
    add-int/2addr p2, v6

    .line 203
    iget-object v5, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 205
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 207
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 209
    invoke-virtual {v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 212
    iget-object v5, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 214
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 216
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 218
    sub-int/2addr p2, v6

    .line 219
    invoke-virtual {v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 222
    :goto_dd
    move p2, v1

    .line 223
    :goto_de
    invoke-virtual {v0}, Lw/e;->g()V

    .line 226
    iget-object v5, v0, Lw/e;->e:Ljava/util/ArrayList;

    .line 228
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 231
    move-result-object v5

    .line 232
    :goto_e7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    move-result v6

    .line 236
    if-eqz v6, :cond_107

    .line 238
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    move-result-object v6

    .line 242
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 244
    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 246
    if-eq v7, p1, :cond_f8

    .line 248
    goto :goto_e7

    .line 249
    :cond_f8
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 251
    iget-object v8, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 253
    if-ne v7, v8, :cond_103

    .line 255
    iget-boolean v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 257
    if-nez v7, :cond_103

    .line 259
    goto :goto_e7

    .line 260
    :cond_103
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e()V

    .line 263
    goto :goto_e7

    .line 264
    :cond_107
    iget-object v5, v0, Lw/e;->e:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 269
    move-result-object v5

    .line 270
    :cond_10d
    :goto_10d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    move-result v6

    .line 274
    if-eqz v6, :cond_140

    .line 276
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    move-result-object v6

    .line 280
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 282
    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 284
    if-eq v7, p1, :cond_11e

    .line 286
    goto :goto_10d

    .line 287
    :cond_11e
    if-nez p2, :cond_127

    .line 289
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 291
    iget-object v8, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 293
    if-ne v7, v8, :cond_127

    .line 295
    goto :goto_10d

    .line 296
    :cond_127
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 298
    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 300
    if-nez v7, :cond_12e

    .line 302
    goto :goto_13f

    .line 303
    :cond_12e
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 305
    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 307
    if-nez v7, :cond_135

    .line 309
    goto :goto_13f

    .line 310
    :cond_135
    instance-of v7, v6, Lw/c;

    .line 312
    if-nez v7, :cond_10d

    .line 314
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 316
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 318
    if-nez v6, :cond_10d

    .line 320
    :goto_13f
    move v1, v3

    .line 321
    :cond_140
    iget-object p1, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 323
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 326
    iget-object p1, v0, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 328
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 331
    return v1
.end method

.method public final S(I)Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/d;->F0:I

    .line 3
    and-int/2addr v0, p1

    .line 4
    if-ne v0, p1, :cond_7

    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    :goto_8
    return p1
.end method

.method public final l(Ljava/lang/StringBuilder;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ":{\n"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v1, "  actualWidth:"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v0, "\n"

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    const-string v2, "  actualHeight:"

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v0, p0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object v0

    .line 81
    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_65

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 93
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l(Ljava/lang/StringBuilder;)V

    .line 96
    const-string v1, ",\n"

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    goto :goto_50

    .line 102
    :cond_65
    const-string v0, "}"

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    return-void
.end method
