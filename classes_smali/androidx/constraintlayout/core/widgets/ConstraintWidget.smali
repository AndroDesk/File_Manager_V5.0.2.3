.class public Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    }
.end annotation


# instance fields
.field public A:F

.field public B:I

.field public C:F

.field public D:[I

.field public E:F

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:I

.field public J:I

.field public K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public Q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public U:[Z

.field public V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field public W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public X:I

.field public Y:I

.field public Z:F

.field public a:Z

.field public a0:I

.field public b:Lw/c;

.field public b0:I

.field public c:Lw/c;

.field public c0:I

.field public d:Landroidx/constraintlayout/core/widgets/analyzer/c;

.field public d0:I

.field public e:Landroidx/constraintlayout/core/widgets/analyzer/d;

.field public e0:I

.field public f:[Z

.field public f0:I

.field public g:Z

.field public g0:F

.field public h:Z

.field public h0:F

.field public i:I

.field public i0:Ljava/lang/Object;

.field public j:I

.field public j0:I

.field public k:Ljava/lang/String;

.field public k0:Ljava/lang/String;

.field public l:Z

.field public l0:I

.field public m:Z

.field public m0:I

.field public n:Z

.field public n0:[F

.field public o:Z

.field public o0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public p:I

.field public p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public q:I

.field public q0:I

.field public r:I

.field public r0:I

.field public s:I

.field public t:I

.field public u:[I

.field public v:I

.field public w:I

.field public x:F

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .registers 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 10
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 12
    const/4 v2, 0x2

    .line 13
    new-array v3, v2, [Z

    .line 15
    fill-array-data v3, :array_13e

    .line 18
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    .line 20
    const/4 v3, 0x1

    .line 21
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    .line 23
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h:Z

    .line 25
    const/4 v4, -0x1

    .line 26
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:I

    .line 28
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:I

    .line 30
    new-instance v5, Ljava/util/HashMap;

    .line 32
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 35
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 37
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 39
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n:Z

    .line 41
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:Z

    .line 43
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p:I

    .line 45
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 47
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 49
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 51
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 53
    new-array v5, v2, [I

    .line 55
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    .line 57
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    .line 59
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 61
    const/high16 v5, 0x3f800000  # 1.0f

    .line 63
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:F

    .line 65
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    .line 67
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 69
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 71
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 73
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 75
    new-array v5, v2, [I

    .line 77
    fill-array-data v5, :array_144

    .line 80
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    .line 82
    const/4 v5, 0x0

    .line 83
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E:F

    .line 85
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 87
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    .line 89
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:I

    .line 91
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:I

    .line 93
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 95
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 97
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 100
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 102
    new-instance v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 104
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 106
    invoke-direct {v7, p0, v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 109
    iput-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 111
    new-instance v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 113
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 115
    invoke-direct {v8, p0, v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 118
    iput-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 120
    new-instance v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 122
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 124
    invoke-direct {v9, p0, v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 127
    iput-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 129
    new-instance v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 131
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 133
    invoke-direct {v10, p0, v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 136
    iput-object v10, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 138
    new-instance v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 140
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 142
    invoke-direct {v11, p0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 145
    iput-object v11, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 147
    new-instance v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 149
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 151
    invoke-direct {v11, p0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 154
    iput-object v11, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 156
    new-instance v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 158
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 160
    invoke-direct {v11, p0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 163
    iput-object v11, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 165
    const/4 v12, 0x6

    .line 166
    new-array v12, v12, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 168
    aput-object v6, v12, v0

    .line 170
    aput-object v8, v12, v3

    .line 172
    aput-object v7, v12, v2

    .line 174
    const/4 v6, 0x3

    .line 175
    aput-object v9, v12, v6

    .line 177
    const/4 v6, 0x4

    .line 178
    aput-object v10, v12, v6

    .line 180
    const/4 v6, 0x5

    .line 181
    aput-object v11, v12, v6

    .line 183
    iput-object v12, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 185
    new-instance v6, Ljava/util/ArrayList;

    .line 187
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 192
    new-array v7, v2, [Z

    .line 194
    iput-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    .line 196
    new-array v7, v2, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 198
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 200
    aput-object v8, v7, v0

    .line 202
    aput-object v8, v7, v3

    .line 204
    iput-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 206
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 208
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 210
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 212
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 214
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 216
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 218
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 220
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 222
    const/high16 v5, 0x3f000000  # 0.5f

    .line 224
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    .line 226
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    .line 228
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 230
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 232
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0:I

    .line 234
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:I

    .line 236
    new-array v5, v2, [F

    .line 238
    fill-array-data v5, :array_14c

    .line 241
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:[F

    .line 243
    new-array v5, v2, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 245
    aput-object v1, v5, v0

    .line 247
    aput-object v1, v5, v3

    .line 249
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 251
    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 253
    aput-object v1, v2, v0

    .line 255
    aput-object v1, v2, v3

    .line 257
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 259
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q0:I

    .line 261
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r0:I

    .line 263
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 265
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 270
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 272
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 277
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 279
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 284
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 286
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 291
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 293
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 298
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 300
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 305
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 307
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 312
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 314
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    return-void

    .line 318
    nop

    .line 319
    :array_13e
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 324
    nop

    .line 325
    :array_144
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    .line 333
    :array_14c
    .array-data 4
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
    .end array-data
.end method

.method public static D(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .registers 4

    .line 1
    if-ne p1, p2, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string p2, " :   "

    .line 9
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string p1, ",\n"

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    return-void
.end method

.method public static E(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V
    .registers 4

    .line 1
    cmpl-float p3, p2, p3

    .line 3
    if-nez p3, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, " :   "

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, ",\n"

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    return-void
.end method

.method public static m(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIF)V
    .registers 9

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    const-string p1, " :  {\n"

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const/4 p1, 0x0

    .line 10
    const-string v0, "      size"

    .line 12
    invoke-static {p0, p2, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 15
    const-string p2, "      min"

    .line 17
    invoke-static {p0, p3, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 20
    const p2, 0x7fffffff

    .line 23
    const-string p3, "      max"

    .line 25
    invoke-static {p0, p4, p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 28
    const-string p2, "      matchMin"

    .line 30
    invoke-static {p0, p5, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 33
    const-string p2, "      matchDef"

    .line 35
    invoke-static {p0, p6, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 38
    const-string p1, "      matchPercent"

    .line 40
    const/high16 p2, 0x3f800000  # 1.0f

    .line 42
    invoke-static {p0, p1, p7, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 45
    const-string p1, "    },\n"

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    return-void
.end method

.method public static n(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .registers 5

    .line 1
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const-string v0, "    "

    .line 8
    const-string v1, " : [ \'"

    .line 10
    invoke-static {p0, v0, p1, v1}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string p1, "\'"

    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h:I

    .line 25
    const/high16 v0, -0x80000000

    .line 27
    if-ne p1, v0, :cond_20

    .line 29
    iget p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 31
    if-eqz p1, :cond_39

    .line 33
    :cond_20
    const-string p1, ","

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    iget v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h:I

    .line 45
    if-eq v1, v0, :cond_39

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h:I

    .line 52
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_39
    const-string p1, " ] ,\n"

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    return-void
.end method


# virtual methods
.method public A()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g()V

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 8
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g()V

    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g()V

    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 18
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g()V

    .line 21
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g()V

    .line 26
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 28
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g()V

    .line 31
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 33
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g()V

    .line 36
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 38
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g()V

    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 44
    const/4 v1, 0x0

    .line 45
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E:F

    .line 47
    const/4 v2, 0x0

    .line 48
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 50
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 52
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 54
    const/4 v1, -0x1

    .line 55
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 57
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 59
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 61
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 63
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 65
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 67
    const/high16 v3, 0x3f000000  # 0.5f

    .line 69
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    .line 71
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    .line 73
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 75
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 77
    aput-object v4, v3, v2

    .line 79
    const/4 v5, 0x1

    .line 80
    aput-object v4, v3, v5

    .line 82
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:Ljava/lang/Object;

    .line 84
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 86
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0:I

    .line 88
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:I

    .line 90
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:[F

    .line 92
    const/high16 v3, -0x40800000  # -1.0f

    .line 94
    aput v3, v0, v2

    .line 96
    aput v3, v0, v5

    .line 98
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p:I

    .line 100
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    .line 104
    const v3, 0x7fffffff

    .line 107
    aput v3, v0, v2

    .line 109
    aput v3, v0, v5

    .line 111
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 113
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 115
    const/high16 v0, 0x3f800000  # 1.0f

    .line 117
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:F

    .line 119
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 121
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 123
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 125
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    .line 127
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    .line 129
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 131
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 133
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    .line 135
    aput-boolean v5, v0, v2

    .line 137
    aput-boolean v5, v0, v5

    .line 139
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    .line 141
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    .line 143
    aput-boolean v2, v0, v2

    .line 145
    aput-boolean v2, v0, v5

    .line 147
    iput-boolean v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    .line 149
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    .line 151
    aput v2, v0, v2

    .line 153
    aput v2, v0, v5

    .line 155
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:I

    .line 157
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:I

    .line 159
    return-void
.end method

.method public final B()V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 4
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 6
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n:Z

    .line 8
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:Z

    .line 10
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    move v2, v0

    .line 17
    :goto_10
    if-ge v2, v1, :cond_21

    .line 19
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 27
    iput-boolean v0, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 29
    iput v0, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b:I

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_10

    .line 34
    :cond_21
    return-void
.end method

.method public C(Lt/a;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()V

    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 8
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()V

    .line 11
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()V

    .line 16
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 18
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()V

    .line 21
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()V

    .line 26
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 28
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()V

    .line 31
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 33
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()V

    .line 36
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 38
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()V

    .line 41
    return-void
.end method

.method public final F(II)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 8
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    .line 16
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 18
    sub-int/2addr p2, p1

    .line 19
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 24
    return-void
.end method

.method public final G(II)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 8
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    .line 16
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 18
    sub-int/2addr p2, p1

    .line 19
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 21
    iget-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 23
    if-eqz p2, :cond_20

    .line 25
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 27
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 29
    add-int/2addr p1, v0

    .line 30
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    .line 33
    :cond_20
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 36
    return-void
.end method

.method public final H(I)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 3
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 5
    if-ge p1, v0, :cond_8

    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 9
    :cond_8
    return-void
.end method

.method public final I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 3
    const/4 v1, 0x0

    .line 4
    aput-object p1, v0, v1

    .line 6
    return-void
.end method

.method public final J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 3
    const/4 v1, 0x1

    .line 4
    aput-object p1, v0, v1

    .line 6
    return-void
.end method

.method public final K(I)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 3
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 5
    if-ge p1, v0, :cond_8

    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 9
    :cond_8
    return-void
.end method

.method public L(ZZ)V
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 3
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 5
    and-int/2addr p1, v1

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 8
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 10
    and-int/2addr p2, v2

    .line 11
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 13
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 15
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 17
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 19
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 21
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 23
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 25
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 27
    sub-int v4, v0, v2

    .line 29
    sub-int v5, v1, v3

    .line 31
    const/4 v6, 0x0

    .line 32
    if-ltz v4, :cond_38

    .line 34
    if-ltz v5, :cond_38

    .line 36
    const/high16 v4, -0x80000000

    .line 38
    if-eq v2, v4, :cond_38

    .line 40
    const v5, 0x7fffffff

    .line 43
    if-eq v2, v5, :cond_38

    .line 45
    if-eq v3, v4, :cond_38

    .line 47
    if-eq v3, v5, :cond_38

    .line 49
    if-eq v0, v4, :cond_38

    .line 51
    if-eq v0, v5, :cond_38

    .line 53
    if-eq v1, v4, :cond_38

    .line 55
    if-ne v1, v5, :cond_3c

    .line 57
    :cond_38
    move v0, v6

    .line 58
    move v1, v0

    .line 59
    move v2, v1

    .line 60
    move v3, v2

    .line 61
    :cond_3c
    sub-int/2addr v0, v2

    .line 62
    sub-int/2addr v1, v3

    .line 63
    if-eqz p1, :cond_42

    .line 65
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 67
    :cond_42
    if-eqz p2, :cond_46

    .line 69
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 71
    :cond_46
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 73
    const/16 v3, 0x8

    .line 75
    if-ne v2, v3, :cond_51

    .line 77
    iput v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 79
    iput v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 81
    return-void

    .line 82
    :cond_51
    if-eqz p1, :cond_68

    .line 84
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 86
    aget-object p1, p1, v6

    .line 88
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 90
    if-ne p1, v2, :cond_60

    .line 92
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 94
    if-ge v0, p1, :cond_60

    .line 96
    move v0, p1

    .line 97
    :cond_60
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 99
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 101
    if-ge v0, p1, :cond_68

    .line 103
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 105
    :cond_68
    if-eqz p2, :cond_80

    .line 107
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 109
    const/4 p2, 0x1

    .line 110
    aget-object p1, p1, p2

    .line 112
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 114
    if-ne p1, p2, :cond_78

    .line 116
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 118
    if-ge v1, p1, :cond_78

    .line 120
    move v1, p1

    .line 121
    :cond_78
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 123
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 125
    if-ge v1, p1, :cond_80

    .line 127
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 129
    :cond_80
    return-void
.end method

.method public M(Landroidx/constraintlayout/core/c;Z)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {v0}, Landroidx/constraintlayout/core/c;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    invoke-static {v0}, Landroidx/constraintlayout/core/c;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 18
    invoke-static {v1}, Landroidx/constraintlayout/core/c;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 24
    invoke-static {v2}, Landroidx/constraintlayout/core/c;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 27
    move-result v2

    .line 28
    if-eqz p2, :cond_31

    .line 30
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 32
    if-eqz v3, :cond_31

    .line 34
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 36
    iget-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 38
    if-eqz v5, :cond_31

    .line 40
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 42
    iget-boolean v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 44
    if-eqz v5, :cond_31

    .line 46
    iget p1, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 48
    iget v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 50
    :cond_31
    if-eqz p2, :cond_47

    .line 52
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 54
    if-eqz p2, :cond_47

    .line 56
    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 58
    iget-boolean v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 60
    if-eqz v4, :cond_47

    .line 62
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 64
    iget-boolean v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 66
    if-eqz v4, :cond_47

    .line 68
    iget v0, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 70
    iget v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 72
    :cond_47
    sub-int p2, v1, p1

    .line 74
    sub-int v3, v2, v0

    .line 76
    const/4 v4, 0x0

    .line 77
    if-ltz p2, :cond_65

    .line 79
    if-ltz v3, :cond_65

    .line 81
    const/high16 p2, -0x80000000

    .line 83
    if-eq p1, p2, :cond_65

    .line 85
    const v3, 0x7fffffff

    .line 88
    if-eq p1, v3, :cond_65

    .line 90
    if-eq v0, p2, :cond_65

    .line 92
    if-eq v0, v3, :cond_65

    .line 94
    if-eq v1, p2, :cond_65

    .line 96
    if-eq v1, v3, :cond_65

    .line 98
    if-eq v2, p2, :cond_65

    .line 100
    if-ne v2, v3, :cond_69

    .line 102
    :cond_65
    move p1, v4

    .line 103
    move v0, p1

    .line 104
    move v1, v0

    .line 105
    move v2, v1

    .line 106
    :cond_69
    sub-int/2addr v1, p1

    .line 107
    sub-int/2addr v2, v0

    .line 108
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 110
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 112
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 114
    const/16 p2, 0x8

    .line 116
    if-ne p1, p2, :cond_7a

    .line 118
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 120
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 122
    goto :goto_d1

    .line 123
    :cond_7a
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 125
    aget-object p2, p1, v4

    .line 127
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 129
    if-ne p2, v0, :cond_87

    .line 131
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 133
    if-ge v1, v3, :cond_87

    .line 135
    move v1, v3

    .line 136
    :cond_87
    const/4 v3, 0x1

    .line 137
    aget-object p1, p1, v3

    .line 139
    if-ne p1, v0, :cond_91

    .line 141
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 143
    if-ge v2, p1, :cond_91

    .line 145
    move v2, p1

    .line 146
    :cond_91
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 148
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 150
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 152
    if-ge v2, p1, :cond_9b

    .line 154
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 156
    :cond_9b
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 158
    if-ge v1, p1, :cond_a1

    .line 160
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 162
    :cond_a1
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 164
    if-lez p1, :cond_b1

    .line 166
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 168
    if-ne p2, v0, :cond_b1

    .line 170
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 172
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 175
    move-result p1

    .line 176
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 178
    :cond_b1
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 180
    if-lez p1, :cond_c5

    .line 182
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 184
    aget-object p2, p2, v3

    .line 186
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 188
    if-ne p2, v0, :cond_c5

    .line 190
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 192
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 195
    move-result p1

    .line 196
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 198
    :cond_c5
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 200
    if-eq v1, p1, :cond_cb

    .line 202
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:I

    .line 204
    :cond_cb
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 206
    if-eq v2, p1, :cond_d1

    .line 208
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:I

    .line 210
    :cond_d1
    :goto_d1
    return-void
.end method

.method public final a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/HashSet;IZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/d;",
            "Landroidx/constraintlayout/core/c;",
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;IZ)V"
        }
    .end annotation

    .line 1
    if-eqz p5, :cond_18

    .line 3
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p5

    .line 7
    if-nez p5, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-static {p1, p2, p0}, Landroidx/constraintlayout/core/widgets/f;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 13
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 16
    const/16 p5, 0x40

    .line 18
    invoke-virtual {p1, p5}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    .line 21
    move-result p5

    .line 22
    invoke-virtual {p0, p2, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    .line 25
    :cond_18
    if-nez p4, :cond_5c

    .line 27
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 29
    iget-object p5, p5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 31
    if-eqz p5, :cond_3b

    .line 33
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p5

    .line 37
    :goto_24
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3b

    .line 43
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 49
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 51
    const/4 v6, 0x1

    .line 52
    move-object v2, p1

    .line 53
    move-object v3, p2

    .line 54
    move-object v4, p3

    .line 55
    move v5, p4

    .line 56
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/HashSet;IZ)V

    .line 59
    goto :goto_24

    .line 60
    :cond_3b
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 62
    iget-object p5, p5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 64
    if-eqz p5, :cond_bf

    .line 66
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p5

    .line 70
    :goto_45
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_bf

    .line 76
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 82
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 84
    const/4 v6, 0x1

    .line 85
    move-object v2, p1

    .line 86
    move-object v3, p2

    .line 87
    move-object v4, p3

    .line 88
    move v5, p4

    .line 89
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/HashSet;IZ)V

    .line 92
    goto :goto_45

    .line 93
    :cond_5c
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 95
    iget-object p5, p5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 97
    if-eqz p5, :cond_7d

    .line 99
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object p5

    .line 103
    :goto_66
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_7d

    .line 109
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 115
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 117
    const/4 v6, 0x1

    .line 118
    move-object v2, p1

    .line 119
    move-object v3, p2

    .line 120
    move-object v4, p3

    .line 121
    move v5, p4

    .line 122
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/HashSet;IZ)V

    .line 125
    goto :goto_66

    .line 126
    :cond_7d
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 128
    iget-object p5, p5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 130
    if-eqz p5, :cond_9e

    .line 132
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object p5

    .line 136
    :goto_87
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_9e

    .line 142
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 148
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 150
    const/4 v6, 0x1

    .line 151
    move-object v2, p1

    .line 152
    move-object v3, p2

    .line 153
    move-object v4, p3

    .line 154
    move v5, p4

    .line 155
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/HashSet;IZ)V

    .line 158
    goto :goto_87

    .line 159
    :cond_9e
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 161
    iget-object p5, p5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 163
    if-eqz p5, :cond_bf

    .line 165
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 168
    move-result-object p5

    .line 169
    :goto_a8
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_bf

    .line 175
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 181
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 183
    const/4 v6, 0x1

    .line 184
    move-object v2, p1

    .line 185
    move-object v3, p2

    .line 186
    move-object v4, p3

    .line 187
    move v5, p4

    .line 188
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/HashSet;IZ)V

    .line 191
    goto :goto_a8

    .line 192
    :cond_bf
    return-void
.end method

.method public b(Landroidx/constraintlayout/core/c;Z)V
    .registers 59

    .line 1
    move-object/from16 v15, p0

    .line 3
    move-object/from16 v14, p1

    .line 5
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 10
    move-result-object v13

    .line 11
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 16
    move-result-object v12

    .line 17
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 19
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 22
    move-result-object v11

    .line 23
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 25
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 28
    move-result-object v10

    .line 29
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 31
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 34
    move-result-object v9

    .line 35
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 37
    const/4 v8, 0x2

    .line 38
    const/4 v1, 0x3

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v6, 0x1

    .line 41
    if-eqz v0, :cond_53

    .line 43
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 45
    aget-object v2, v0, v7

    .line 47
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 49
    if-ne v2, v3, :cond_34

    .line 51
    move v2, v6

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v2, v7

    .line 54
    :goto_35
    aget-object v0, v0, v6

    .line 56
    if-ne v0, v3, :cond_3b

    .line 58
    move v0, v6

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move v0, v7

    .line 61
    :goto_3c
    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 63
    if-eq v3, v6, :cond_4e

    .line 65
    if-eq v3, v8, :cond_49

    .line 67
    if-eq v3, v1, :cond_53

    .line 69
    move/from16 v28, v0

    .line 71
    move/from16 v29, v2

    .line 73
    goto :goto_57

    .line 74
    :cond_49
    move/from16 v28, v0

    .line 76
    move/from16 v29, v7

    .line 78
    goto :goto_57

    .line 79
    :cond_4e
    move/from16 v29, v2

    .line 81
    move/from16 v28, v7

    .line 83
    goto :goto_57

    .line 84
    :cond_53
    move/from16 v28, v7

    .line 86
    move/from16 v29, v28

    .line 88
    :goto_57
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 90
    const/16 v5, 0x8

    .line 92
    if-ne v0, v5, :cond_91

    .line 94
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 99
    move-result v0

    .line 100
    move v2, v7

    .line 101
    :goto_64
    if-ge v2, v0, :cond_83

    .line 103
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 111
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 113
    if-nez v3, :cond_73

    .line 115
    goto :goto_7b

    .line 116
    :cond_73
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 119
    move-result v3

    .line 120
    if-lez v3, :cond_7b

    .line 122
    move v3, v6

    .line 123
    goto :goto_7c

    .line 124
    :cond_7b
    :goto_7b
    move v3, v7

    .line 125
    :goto_7c
    if-eqz v3, :cond_80

    .line 127
    move v0, v6

    .line 128
    goto :goto_84

    .line 129
    :cond_80
    add-int/lit8 v2, v2, 0x1

    .line 131
    goto :goto_64

    .line 132
    :cond_83
    move v0, v7

    .line 133
    :goto_84
    if-nez v0, :cond_91

    .line 135
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    .line 137
    aget-boolean v2, v0, v7

    .line 139
    if-nez v2, :cond_91

    .line 141
    aget-boolean v0, v0, v6

    .line 143
    if-nez v0, :cond_91

    .line 145
    return-void

    .line 146
    :cond_91
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 148
    const/4 v4, 0x5

    .line 149
    if-nez v0, :cond_9a

    .line 151
    iget-boolean v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 153
    if-eqz v2, :cond_1a1

    .line 155
    :cond_9a
    if-eqz v0, :cond_109

    .line 157
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 159
    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 162
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 164
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 166
    add-int/2addr v0, v2

    .line 167
    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 170
    if-eqz v29, :cond_109

    .line 172
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 174
    if-eqz v0, :cond_109

    .line 176
    iget-boolean v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h:Z

    .line 178
    if-eqz v2, :cond_100

    .line 180
    check-cast v0, Landroidx/constraintlayout/core/widgets/d;

    .line 182
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 184
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/d;->J0:Ljava/lang/ref/WeakReference;

    .line 186
    if-eqz v3, :cond_d3

    .line 188
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 191
    move-result-object v3

    .line 192
    if-eqz v3, :cond_d3

    .line 194
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 197
    move-result v3

    .line 198
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/d;->J0:Ljava/lang/ref/WeakReference;

    .line 200
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 203
    move-result-object v8

    .line 204
    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 206
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 209
    move-result v8

    .line 210
    if-le v3, v8, :cond_da

    .line 212
    :cond_d3
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 214
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 217
    iput-object v3, v0, Landroidx/constraintlayout/core/widgets/d;->J0:Ljava/lang/ref/WeakReference;

    .line 219
    :cond_da
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 221
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/d;->L0:Ljava/lang/ref/WeakReference;

    .line 223
    if-eqz v3, :cond_f8

    .line 225
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 228
    move-result-object v3

    .line 229
    if-eqz v3, :cond_f8

    .line 231
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 234
    move-result v3

    .line 235
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/d;->L0:Ljava/lang/ref/WeakReference;

    .line 237
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 240
    move-result-object v8

    .line 241
    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 243
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 246
    move-result v8

    .line 247
    if-le v3, v8, :cond_109

    .line 249
    :cond_f8
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 251
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 254
    iput-object v3, v0, Landroidx/constraintlayout/core/widgets/d;->L0:Ljava/lang/ref/WeakReference;

    .line 256
    goto :goto_109

    .line 257
    :cond_100
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 259
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v14, v0, v12, v7, v4}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 266
    :cond_109
    :goto_109
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 268
    if-eqz v0, :cond_194

    .line 270
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 272
    invoke-virtual {v14, v11, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 275
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 277
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 279
    add-int/2addr v0, v2

    .line 280
    invoke-virtual {v14, v10, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 283
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 285
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 287
    if-nez v0, :cond_121

    .line 289
    goto :goto_129

    .line 290
    :cond_121
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 293
    move-result v0

    .line 294
    if-lez v0, :cond_129

    .line 296
    move v0, v6

    .line 297
    goto :goto_12a

    .line 298
    :cond_129
    :goto_129
    move v0, v7

    .line 299
    :goto_12a
    if-eqz v0, :cond_134

    .line 301
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 303
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 305
    add-int/2addr v0, v2

    .line 306
    invoke-virtual {v14, v9, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 309
    :cond_134
    if-eqz v28, :cond_194

    .line 311
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 313
    if-eqz v0, :cond_194

    .line 315
    iget-boolean v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h:Z

    .line 317
    if-eqz v2, :cond_18b

    .line 319
    check-cast v0, Landroidx/constraintlayout/core/widgets/d;

    .line 321
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 323
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/d;->I0:Ljava/lang/ref/WeakReference;

    .line 325
    if-eqz v3, :cond_15e

    .line 327
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 330
    move-result-object v3

    .line 331
    if-eqz v3, :cond_15e

    .line 333
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 336
    move-result v3

    .line 337
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/d;->I0:Ljava/lang/ref/WeakReference;

    .line 339
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 342
    move-result-object v8

    .line 343
    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 345
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 348
    move-result v8

    .line 349
    if-le v3, v8, :cond_165

    .line 351
    :cond_15e
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 353
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 356
    iput-object v3, v0, Landroidx/constraintlayout/core/widgets/d;->I0:Ljava/lang/ref/WeakReference;

    .line 358
    :cond_165
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 360
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/d;->K0:Ljava/lang/ref/WeakReference;

    .line 362
    if-eqz v3, :cond_183

    .line 364
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 367
    move-result-object v3

    .line 368
    if-eqz v3, :cond_183

    .line 370
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 373
    move-result v3

    .line 374
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/d;->K0:Ljava/lang/ref/WeakReference;

    .line 376
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 379
    move-result-object v8

    .line 380
    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 382
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 385
    move-result v8

    .line 386
    if-le v3, v8, :cond_194

    .line 388
    :cond_183
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 390
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 393
    iput-object v3, v0, Landroidx/constraintlayout/core/widgets/d;->K0:Ljava/lang/ref/WeakReference;

    .line 395
    goto :goto_194

    .line 396
    :cond_18b
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 398
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {v14, v0, v10, v7, v4}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 405
    :cond_194
    :goto_194
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 407
    if-eqz v0, :cond_1a1

    .line 409
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 411
    if-eqz v0, :cond_1a1

    .line 413
    iput-boolean v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 415
    iput-boolean v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 417
    return-void

    .line 418
    :cond_1a1
    if-eqz p2, :cond_227

    .line 420
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 422
    if-eqz v0, :cond_227

    .line 424
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 426
    if-eqz v2, :cond_227

    .line 428
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 430
    iget-boolean v8, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 432
    if-eqz v8, :cond_227

    .line 434
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 436
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 438
    if-eqz v0, :cond_227

    .line 440
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 442
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 444
    if-eqz v0, :cond_227

    .line 446
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 448
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 450
    if-eqz v0, :cond_227

    .line 452
    iget v0, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 454
    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 457
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 459
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 461
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 463
    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 466
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 468
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 470
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 472
    invoke-virtual {v14, v11, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 475
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 477
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 479
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 481
    invoke-virtual {v14, v10, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 484
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 486
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 488
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 490
    invoke-virtual {v14, v9, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 493
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 495
    if-eqz v0, :cond_222

    .line 497
    if-eqz v29, :cond_209

    .line 499
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    .line 501
    aget-boolean v0, v0, v7

    .line 503
    if-eqz v0, :cond_209

    .line 505
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 508
    move-result v0

    .line 509
    if-nez v0, :cond_209

    .line 511
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 513
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 515
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {v14, v0, v12, v7, v5}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 522
    :cond_209
    if-eqz v28, :cond_222

    .line 524
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    .line 526
    aget-boolean v0, v0, v6

    .line 528
    if-eqz v0, :cond_222

    .line 530
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 533
    move-result v0

    .line 534
    if-nez v0, :cond_222

    .line 536
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 538
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 540
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {v14, v0, v10, v7, v5}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 547
    :cond_222
    iput-boolean v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 549
    iput-boolean v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 551
    return-void

    .line 552
    :cond_227
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 554
    if-eqz v0, :cond_298

    .line 556
    invoke-virtual {v15, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u(I)Z

    .line 559
    move-result v0

    .line 560
    if-eqz v0, :cond_23a

    .line 562
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 564
    check-cast v0, Landroidx/constraintlayout/core/widgets/d;

    .line 566
    invoke-virtual {v0, v7, v15}, Landroidx/constraintlayout/core/widgets/d;->O(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 569
    move v0, v6

    .line 570
    goto :goto_23e

    .line 571
    :cond_23a
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 574
    move-result v0

    .line 575
    :goto_23e
    invoke-virtual {v15, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u(I)Z

    .line 578
    move-result v2

    .line 579
    if-eqz v2, :cond_24d

    .line 581
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 583
    check-cast v2, Landroidx/constraintlayout/core/widgets/d;

    .line 585
    invoke-virtual {v2, v6, v15}, Landroidx/constraintlayout/core/widgets/d;->O(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 588
    move v2, v6

    .line 589
    goto :goto_251

    .line 590
    :cond_24d
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 593
    move-result v2

    .line 594
    :goto_251
    if-nez v0, :cond_270

    .line 596
    if-eqz v29, :cond_270

    .line 598
    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 600
    if-eq v3, v5, :cond_270

    .line 602
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 604
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 606
    if-nez v3, :cond_270

    .line 608
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 610
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 612
    if-nez v3, :cond_270

    .line 614
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 616
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 618
    invoke-virtual {v14, v3}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 621
    move-result-object v3

    .line 622
    invoke-virtual {v14, v3, v12, v7, v6}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 625
    :cond_270
    if-nez v2, :cond_293

    .line 627
    if-eqz v28, :cond_293

    .line 629
    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 631
    if-eq v3, v5, :cond_293

    .line 633
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 635
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 637
    if-nez v3, :cond_293

    .line 639
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 641
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 643
    if-nez v3, :cond_293

    .line 645
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 647
    if-nez v3, :cond_293

    .line 649
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 651
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 653
    invoke-virtual {v14, v3}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 656
    move-result-object v3

    .line 657
    invoke-virtual {v14, v3, v10, v7, v6}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 660
    :cond_293
    move/from16 v31, v0

    .line 662
    move/from16 v30, v2

    .line 664
    goto :goto_29c

    .line 665
    :cond_298
    move/from16 v30, v7

    .line 667
    move/from16 v31, v30

    .line 669
    :goto_29c
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 671
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 673
    if-ge v0, v2, :cond_2a3

    .line 675
    goto :goto_2a4

    .line 676
    :cond_2a3
    move v2, v0

    .line 677
    :goto_2a4
    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 679
    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 681
    if-ge v3, v8, :cond_2ab

    .line 683
    goto :goto_2ac

    .line 684
    :cond_2ab
    move v8, v3

    .line 685
    :goto_2ac
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 687
    aget-object v1, v4, v7

    .line 689
    move/from16 v19, v2

    .line 691
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 693
    if-eq v1, v2, :cond_2b9

    .line 695
    move/from16 v20, v6

    .line 697
    goto :goto_2bb

    .line 698
    :cond_2b9
    move/from16 v20, v7

    .line 700
    :goto_2bb
    aget-object v4, v4, v6

    .line 702
    if-eq v4, v2, :cond_2c2

    .line 704
    move/from16 v21, v6

    .line 706
    goto :goto_2c4

    .line 707
    :cond_2c2
    move/from16 v21, v7

    .line 709
    :goto_2c4
    iget v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 711
    iput v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 713
    iget v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 715
    iput v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 717
    iget v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 719
    move/from16 v24, v8

    .line 721
    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 723
    const/16 v25, 0x0

    .line 725
    cmpl-float v25, v7, v25

    .line 727
    const/16 v26, 0x4

    .line 729
    move-object/from16 v32, v11

    .line 731
    if-lez v25, :cond_3fa

    .line 733
    iget v11, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 735
    move-object/from16 v34, v9

    .line 737
    const/16 v9, 0x8

    .line 739
    if-eq v11, v9, :cond_3c9

    .line 741
    if-ne v1, v2, :cond_2e9

    .line 743
    if-nez v5, :cond_2e9

    .line 745
    const/4 v5, 0x3

    .line 746
    :cond_2e9
    if-ne v4, v2, :cond_2ee

    .line 748
    if-nez v8, :cond_2ee

    .line 750
    const/4 v8, 0x3

    .line 751
    :cond_2ee
    if-ne v1, v2, :cond_3b8

    .line 753
    if-ne v4, v2, :cond_3b8

    .line 755
    const/4 v9, 0x3

    .line 756
    if-ne v5, v9, :cond_3b8

    .line 758
    if-ne v8, v9, :cond_3b8

    .line 760
    const/4 v9, -0x1

    .line 761
    if-ne v6, v9, :cond_311

    .line 763
    if-eqz v20, :cond_302

    .line 765
    if-nez v21, :cond_302

    .line 767
    const/4 v0, 0x0

    .line 768
    iput v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 770
    goto :goto_311

    .line 771
    :cond_302
    if-nez v20, :cond_311

    .line 773
    if-eqz v21, :cond_311

    .line 775
    const/4 v0, 0x1

    .line 776
    iput v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 778
    if-ne v6, v9, :cond_311

    .line 780
    const/high16 v0, 0x3f800000  # 1.0f

    .line 782
    div-float v11, v0, v7

    .line 784
    iput v11, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 786
    :cond_311
    :goto_311
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 788
    if-nez v0, :cond_329

    .line 790
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 792
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    .line 795
    move-result v0

    .line 796
    if-eqz v0, :cond_325

    .line 798
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 800
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    .line 803
    move-result v0

    .line 804
    if-nez v0, :cond_329

    .line 806
    :cond_325
    const/4 v0, 0x1

    .line 807
    iput v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 809
    goto :goto_341

    .line 810
    :cond_329
    const/4 v0, 0x1

    .line 811
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 813
    if-ne v1, v0, :cond_341

    .line 815
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 817
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    .line 820
    move-result v0

    .line 821
    if-eqz v0, :cond_33e

    .line 823
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 825
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    .line 828
    move-result v0

    .line 829
    if-nez v0, :cond_341

    .line 831
    :cond_33e
    const/4 v0, 0x0

    .line 832
    iput v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 834
    :cond_341
    :goto_341
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 836
    const/4 v1, -0x1

    .line 837
    if-ne v0, v1, :cond_395

    .line 839
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 841
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    .line 844
    move-result v0

    .line 845
    if-eqz v0, :cond_366

    .line 847
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 849
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    .line 852
    move-result v0

    .line 853
    if-eqz v0, :cond_366

    .line 855
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 857
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    .line 860
    move-result v0

    .line 861
    if-eqz v0, :cond_366

    .line 863
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 865
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    .line 868
    move-result v0

    .line 869
    if-nez v0, :cond_395

    .line 871
    :cond_366
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 873
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    .line 876
    move-result v0

    .line 877
    if-eqz v0, :cond_37a

    .line 879
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 881
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    .line 884
    move-result v0

    .line 885
    if-eqz v0, :cond_37a

    .line 887
    const/4 v0, 0x0

    .line 888
    iput v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 890
    goto :goto_395

    .line 891
    :cond_37a
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 893
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    .line 896
    move-result v0

    .line 897
    if-eqz v0, :cond_395

    .line 899
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 901
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    .line 904
    move-result v0

    .line 905
    if-eqz v0, :cond_395

    .line 907
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 909
    const/high16 v1, 0x3f800000  # 1.0f

    .line 911
    div-float v11, v1, v0

    .line 913
    iput v11, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 915
    const/4 v0, 0x1

    .line 916
    iput v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 918
    :cond_395
    :goto_395
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 920
    const/4 v1, -0x1

    .line 921
    if-ne v0, v1, :cond_3ee

    .line 923
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    .line 925
    if-lez v0, :cond_3a6

    .line 927
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    .line 929
    if-nez v1, :cond_3a6

    .line 931
    const/4 v1, 0x0

    .line 932
    iput v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 934
    goto :goto_3ee

    .line 935
    :cond_3a6
    if-nez v0, :cond_3ee

    .line 937
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    .line 939
    if-lez v0, :cond_3ee

    .line 941
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 943
    const/high16 v1, 0x3f800000  # 1.0f

    .line 945
    div-float v11, v1, v0

    .line 947
    iput v11, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 949
    const/4 v0, 0x1

    .line 950
    iput v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 952
    goto :goto_3ee

    .line 953
    :cond_3b8
    const/4 v9, 0x3

    .line 954
    if-ne v1, v2, :cond_3cf

    .line 956
    if-ne v5, v9, :cond_3cf

    .line 958
    const/4 v11, 0x0

    .line 959
    iput v11, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 961
    int-to-float v0, v3

    .line 962
    mul-float/2addr v7, v0

    .line 963
    float-to-int v0, v7

    .line 964
    if-eq v4, v2, :cond_3cc

    .line 966
    move/from16 v19, v0

    .line 968
    move/from16 v5, v26

    .line 970
    :cond_3c9
    :goto_3c9
    const/high16 v11, 0x3f800000  # 1.0f

    .line 972
    goto :goto_3fd

    .line 973
    :cond_3cc
    const/high16 v11, 0x3f800000  # 1.0f

    .line 975
    goto :goto_3f1

    .line 976
    :cond_3cf
    if-ne v4, v2, :cond_3ee

    .line 978
    if-ne v8, v9, :cond_3ee

    .line 980
    const/4 v3, 0x1

    .line 981
    iput v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 983
    const/4 v3, -0x1

    .line 984
    const/high16 v11, 0x3f800000  # 1.0f

    .line 986
    if-ne v6, v3, :cond_3df

    .line 988
    div-float v3, v11, v7

    .line 990
    iput v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 992
    :cond_3df
    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 994
    int-to-float v0, v0

    .line 995
    mul-float/2addr v3, v0

    .line 996
    float-to-int v0, v3

    .line 997
    move/from16 v24, v0

    .line 999
    if-eq v1, v2, :cond_3eb

    .line 1001
    move/from16 v8, v26

    .line 1003
    goto :goto_3fd

    .line 1004
    :cond_3eb
    :goto_3eb
    move/from16 v0, v19

    .line 1006
    goto :goto_3f1

    .line 1007
    :cond_3ee
    :goto_3ee
    const/high16 v11, 0x3f800000  # 1.0f

    .line 1009
    goto :goto_3eb

    .line 1010
    :goto_3f1
    move/from16 v36, v5

    .line 1012
    move/from16 v35, v8

    .line 1014
    move/from16 v37, v24

    .line 1016
    const/16 v33, 0x1

    .line 1018
    goto :goto_407

    .line 1019
    :cond_3fa
    move-object/from16 v34, v9

    .line 1021
    goto :goto_3c9

    .line 1022
    :goto_3fd
    move/from16 v36, v5

    .line 1024
    move/from16 v35, v8

    .line 1026
    move/from16 v0, v19

    .line 1028
    move/from16 v37, v24

    .line 1030
    const/16 v33, 0x0

    .line 1032
    :goto_407
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    .line 1034
    const/4 v3, 0x0

    .line 1035
    aput v36, v1, v3

    .line 1037
    const/4 v3, 0x1

    .line 1038
    aput v35, v1, v3

    .line 1040
    if-eqz v33, :cond_41b

    .line 1042
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 1044
    const/4 v3, -0x1

    .line 1045
    if-eqz v1, :cond_418

    .line 1047
    if-ne v1, v3, :cond_41c

    .line 1049
    :cond_418
    const/16 v18, 0x1

    .line 1051
    goto :goto_41e

    .line 1052
    :cond_41b
    const/4 v3, -0x1

    .line 1053
    :cond_41c
    const/16 v18, 0x0

    .line 1055
    :goto_41e
    if-eqz v33, :cond_42a

    .line 1057
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 1059
    const/4 v4, 0x1

    .line 1060
    if-eq v1, v4, :cond_427

    .line 1062
    if-ne v1, v3, :cond_42a

    .line 1064
    :cond_427
    const/16 v38, 0x1

    .line 1066
    goto :goto_42c

    .line 1067
    :cond_42a
    const/16 v38, 0x0

    .line 1069
    :goto_42c
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1071
    const/4 v3, 0x0

    .line 1072
    aget-object v1, v1, v3

    .line 1074
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1076
    if-ne v1, v9, :cond_43c

    .line 1078
    instance-of v1, v15, Landroidx/constraintlayout/core/widgets/d;

    .line 1080
    if-eqz v1, :cond_43c

    .line 1082
    const/16 v19, 0x1

    .line 1084
    goto :goto_43e

    .line 1085
    :cond_43c
    const/16 v19, 0x0

    .line 1087
    :goto_43e
    if-eqz v19, :cond_443

    .line 1089
    const/16 v20, 0x0

    .line 1091
    goto :goto_445

    .line 1092
    :cond_443
    move/from16 v20, v0

    .line 1094
    :goto_445
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1096
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    .line 1099
    move-result v0

    .line 1100
    const/4 v1, 0x1

    .line 1101
    xor-int/lit8 v39, v0, 0x1

    .line 1103
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    .line 1105
    const/4 v3, 0x0

    .line 1106
    aget-boolean v21, v0, v3

    .line 1108
    aget-boolean v40, v0, v1

    .line 1110
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p:I

    .line 1112
    const/16 v41, 0x0

    .line 1114
    const/4 v8, 0x2

    .line 1115
    if-eq v0, v8, :cond_536

    .line 1117
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 1119
    if-nez v0, :cond_536

    .line 1121
    if-eqz p2, :cond_4a5

    .line 1123
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 1125
    if-eqz v0, :cond_4a5

    .line 1127
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1129
    iget-boolean v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 1131
    if-eqz v3, :cond_4a5

    .line 1133
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1135
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 1137
    if-nez v0, :cond_473

    .line 1139
    goto :goto_4a5

    .line 1140
    :cond_473
    if-eqz p2, :cond_536

    .line 1142
    iget v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 1144
    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 1147
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 1149
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1151
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 1153
    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 1156
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1158
    if-eqz v0, :cond_536

    .line 1160
    if-eqz v29, :cond_536

    .line 1162
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    .line 1164
    const/4 v1, 0x0

    .line 1165
    aget-boolean v0, v0, v1

    .line 1167
    if-eqz v0, :cond_536

    .line 1169
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 1172
    move-result v0

    .line 1173
    if-nez v0, :cond_536

    .line 1175
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1177
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1179
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1182
    move-result-object v0

    .line 1183
    const/16 v5, 0x8

    .line 1185
    invoke-virtual {v14, v0, v12, v1, v5}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1188
    goto/16 :goto_536

    .line 1190
    :cond_4a5
    :goto_4a5
    const/16 v5, 0x8

    .line 1192
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1194
    if-eqz v0, :cond_4b3

    .line 1196
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1198
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1201
    move-result-object v0

    .line 1202
    move-object v7, v0

    .line 1203
    goto :goto_4b5

    .line 1204
    :cond_4b3
    move-object/from16 v7, v41

    .line 1206
    :goto_4b5
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1208
    if-eqz v0, :cond_4c1

    .line 1210
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1212
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1215
    move-result-object v0

    .line 1216
    move-object v6, v0

    .line 1217
    goto :goto_4c3

    .line 1218
    :cond_4c1
    move-object/from16 v6, v41

    .line 1220
    :goto_4c3
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    .line 1222
    const/16 v16, 0x0

    .line 1224
    aget-boolean v23, v0, v16

    .line 1226
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1228
    aget-object v27, v0, v16

    .line 1230
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1232
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1234
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 1236
    iget v14, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 1238
    iget-object v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    .line 1240
    aget v43, v5, v16

    .line 1242
    iget v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    .line 1244
    const/16 v22, 0x1

    .line 1246
    aget-object v0, v0, v22

    .line 1248
    if-ne v0, v2, :cond_4e4

    .line 1250
    move/from16 v44, v22

    .line 1252
    goto :goto_4e6

    .line 1253
    :cond_4e4
    move/from16 v44, v16

    .line 1255
    :goto_4e6
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    .line 1257
    move/from16 v24, v0

    .line 1259
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 1261
    move/from16 v25, v0

    .line 1263
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:F

    .line 1265
    move/from16 v26, v0

    .line 1267
    const/4 v0, 0x1

    .line 1268
    move-object/from16 v45, v2

    .line 1270
    move v2, v0

    .line 1271
    move-object/from16 v0, p0

    .line 1273
    move/from16 v46, v1

    .line 1275
    move-object/from16 v1, p1

    .line 1277
    move-object/from16 v47, v3

    .line 1279
    move/from16 v3, v29

    .line 1281
    move-object/from16 v17, v4

    .line 1283
    move/from16 v4, v28

    .line 1285
    move/from16 v42, v5

    .line 1287
    move/from16 v5, v23

    .line 1289
    move-object/from16 v8, v27

    .line 1291
    move-object/from16 v49, v9

    .line 1293
    move-object/from16 v48, v34

    .line 1295
    move/from16 v9, v19

    .line 1297
    move-object/from16 v50, v10

    .line 1299
    move-object/from16 v10, v17

    .line 1301
    move-object/from16 v51, v32

    .line 1303
    move-object/from16 v11, v47

    .line 1305
    move-object/from16 v52, v12

    .line 1307
    move/from16 v12, v46

    .line 1309
    move-object/from16 v53, v13

    .line 1311
    move/from16 v13, v20

    .line 1313
    move/from16 v15, v43

    .line 1315
    move/from16 v16, v42

    .line 1317
    move/from16 v17, v18

    .line 1319
    move/from16 v18, v44

    .line 1321
    move/from16 v19, v31

    .line 1323
    move/from16 v20, v30

    .line 1325
    move/from16 v22, v36

    .line 1327
    move/from16 v23, v35

    .line 1329
    move/from16 v27, v39

    .line 1331
    invoke-virtual/range {v0 .. v27}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d(Landroidx/constraintlayout/core/c;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    .line 1334
    goto :goto_544

    .line 1335
    :cond_536
    :goto_536
    move-object/from16 v45, v2

    .line 1337
    move-object/from16 v49, v9

    .line 1339
    move-object/from16 v50, v10

    .line 1341
    move-object/from16 v52, v12

    .line 1343
    move-object/from16 v53, v13

    .line 1345
    move-object/from16 v51, v32

    .line 1347
    move-object/from16 v48, v34

    .line 1349
    :goto_544
    if-eqz p2, :cond_5aa

    .line 1351
    move-object/from16 v15, p0

    .line 1353
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 1355
    if-eqz v0, :cond_59d

    .line 1357
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1359
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 1361
    if-eqz v2, :cond_59d

    .line 1363
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1365
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 1367
    if-eqz v0, :cond_59d

    .line 1369
    iget v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 1371
    move-object/from16 v14, p1

    .line 1373
    move-object/from16 v13, v51

    .line 1375
    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 1378
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 1380
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1382
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 1384
    move-object/from16 v12, v50

    .line 1386
    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 1389
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 1391
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1393
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 1395
    move-object/from16 v1, v48

    .line 1397
    invoke-virtual {v14, v1, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 1400
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1402
    if-eqz v0, :cond_597

    .line 1404
    if-nez v30, :cond_597

    .line 1406
    if-eqz v28, :cond_597

    .line 1408
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    .line 1410
    const/4 v11, 0x1

    .line 1411
    aget-boolean v2, v2, v11

    .line 1413
    if-eqz v2, :cond_593

    .line 1415
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1417
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1420
    move-result-object v0

    .line 1421
    const/16 v2, 0x8

    .line 1423
    const/4 v10, 0x0

    .line 1424
    invoke-virtual {v14, v0, v12, v10, v2}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1427
    goto :goto_59b

    .line 1428
    :cond_593
    const/16 v2, 0x8

    .line 1430
    const/4 v10, 0x0

    .line 1431
    goto :goto_59b

    .line 1432
    :cond_597
    const/16 v2, 0x8

    .line 1434
    const/4 v10, 0x0

    .line 1435
    const/4 v11, 0x1

    .line 1436
    :goto_59b
    move v7, v10

    .line 1437
    goto :goto_5b9

    .line 1438
    :cond_59d
    move-object/from16 v14, p1

    .line 1440
    move-object/from16 v1, v48

    .line 1442
    move-object/from16 v12, v50

    .line 1444
    move-object/from16 v13, v51

    .line 1446
    const/16 v2, 0x8

    .line 1448
    const/4 v10, 0x0

    .line 1449
    const/4 v11, 0x1

    .line 1450
    goto :goto_5b8

    .line 1451
    :cond_5aa
    const/16 v2, 0x8

    .line 1453
    const/4 v10, 0x0

    .line 1454
    const/4 v11, 0x1

    .line 1455
    move-object/from16 v15, p0

    .line 1457
    move-object/from16 v14, p1

    .line 1459
    move-object/from16 v1, v48

    .line 1461
    move-object/from16 v12, v50

    .line 1463
    move-object/from16 v13, v51

    .line 1465
    :goto_5b8
    move v7, v11

    .line 1466
    :goto_5b9
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 1468
    const/4 v3, 0x2

    .line 1469
    if-ne v0, v3, :cond_5bf

    .line 1471
    move v7, v10

    .line 1472
    :cond_5bf
    if-eqz v7, :cond_698

    .line 1474
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 1476
    if-nez v0, :cond_698

    .line 1478
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1480
    aget-object v0, v0, v11

    .line 1482
    move-object/from16 v3, v49

    .line 1484
    if-ne v0, v3, :cond_5d3

    .line 1486
    instance-of v0, v15, Landroidx/constraintlayout/core/widgets/d;

    .line 1488
    if-eqz v0, :cond_5d3

    .line 1490
    move v9, v11

    .line 1491
    goto :goto_5d4

    .line 1492
    :cond_5d3
    move v9, v10

    .line 1493
    :goto_5d4
    if-eqz v9, :cond_5d8

    .line 1495
    move/from16 v37, v10

    .line 1497
    :cond_5d8
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1499
    if-eqz v0, :cond_5e4

    .line 1501
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1503
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1506
    move-result-object v0

    .line 1507
    move-object v7, v0

    .line 1508
    goto :goto_5e6

    .line 1509
    :cond_5e4
    move-object/from16 v7, v41

    .line 1511
    :goto_5e6
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1513
    if-eqz v0, :cond_5f2

    .line 1515
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1517
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1520
    move-result-object v0

    .line 1521
    move-object v6, v0

    .line 1522
    goto :goto_5f4

    .line 1523
    :cond_5f2
    move-object/from16 v6, v41

    .line 1525
    :goto_5f4
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 1527
    if-gtz v0, :cond_5fc

    .line 1529
    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 1531
    if-ne v3, v2, :cond_634

    .line 1533
    :cond_5fc
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1535
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1537
    if-eqz v4, :cond_625

    .line 1539
    invoke-virtual {v14, v1, v13, v0, v2}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1542
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1544
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1546
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1549
    move-result-object v0

    .line 1550
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1552
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1555
    move-result v3

    .line 1556
    invoke-virtual {v14, v1, v0, v3, v2}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1559
    if-eqz v28, :cond_622

    .line 1561
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1563
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1566
    move-result-object v0

    .line 1567
    const/4 v1, 0x5

    .line 1568
    invoke-virtual {v14, v7, v0, v10, v1}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1571
    :cond_622
    move/from16 v27, v10

    .line 1573
    goto :goto_636

    .line 1574
    :cond_625
    iget v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 1576
    if-ne v4, v2, :cond_631

    .line 1578
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1581
    move-result v0

    .line 1582
    invoke-virtual {v14, v1, v13, v0, v2}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1585
    goto :goto_634

    .line 1586
    :cond_631
    invoke-virtual {v14, v1, v13, v0, v2}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1589
    :cond_634
    :goto_634
    move/from16 v27, v39

    .line 1591
    :goto_636
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    .line 1593
    aget-boolean v5, v0, v11

    .line 1595
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1597
    aget-object v8, v0, v11

    .line 1599
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1601
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1603
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 1605
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 1607
    iget-object v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    .line 1609
    aget v16, v10, v11

    .line 1611
    iget v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    .line 1613
    const/16 v17, 0x0

    .line 1615
    aget-object v0, v0, v17

    .line 1617
    move-object/from16 v11, v45

    .line 1619
    if-ne v0, v11, :cond_657

    .line 1621
    const/16 v18, 0x1

    .line 1623
    goto :goto_659

    .line 1624
    :cond_657
    move/from16 v18, v17

    .line 1626
    :goto_659
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    .line 1628
    move/from16 v24, v0

    .line 1630
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 1632
    move/from16 v25, v0

    .line 1634
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 1636
    move/from16 v26, v0

    .line 1638
    const/4 v0, 0x0

    .line 1639
    move/from16 v19, v2

    .line 1641
    move v2, v0

    .line 1642
    move-object/from16 v0, p0

    .line 1644
    move/from16 v20, v1

    .line 1646
    move-object/from16 v1, p1

    .line 1648
    move-object v11, v3

    .line 1649
    move/from16 v3, v28

    .line 1651
    move-object/from16 v21, v4

    .line 1653
    move/from16 v4, v29

    .line 1655
    move/from16 v17, v10

    .line 1657
    move-object/from16 v10, v21

    .line 1659
    move-object/from16 v54, v12

    .line 1661
    move/from16 v12, v20

    .line 1663
    move-object/from16 v55, v13

    .line 1665
    move/from16 v13, v37

    .line 1667
    move/from16 v14, v19

    .line 1669
    move/from16 v15, v16

    .line 1671
    move/from16 v16, v17

    .line 1673
    move/from16 v17, v38

    .line 1675
    move/from16 v19, v30

    .line 1677
    move/from16 v20, v31

    .line 1679
    move/from16 v21, v40

    .line 1681
    move/from16 v22, v35

    .line 1683
    move/from16 v23, v36

    .line 1685
    invoke-virtual/range {v0 .. v27}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d(Landroidx/constraintlayout/core/c;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    .line 1688
    goto :goto_69c

    .line 1689
    :cond_698
    move-object/from16 v54, v12

    .line 1691
    move-object/from16 v55, v13

    .line 1693
    :goto_69c
    if-eqz v33, :cond_6fd

    .line 1695
    move-object/from16 v0, p0

    .line 1697
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 1699
    const/high16 v2, -0x40800000  # -1.0f

    .line 1701
    const/4 v3, 0x1

    .line 1702
    if-ne v1, v3, :cond_6d2

    .line 1704
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 1706
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    .line 1709
    move-result-object v3

    .line 1710
    iget-object v4, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1712
    move-object/from16 v5, v54

    .line 1714
    invoke-interface {v4, v5, v2}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1717
    iget-object v2, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1719
    move-object/from16 v4, v55

    .line 1721
    const/high16 v6, 0x3f800000  # 1.0f

    .line 1723
    invoke-interface {v2, v4, v6}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1726
    iget-object v2, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1728
    move-object/from16 v7, v52

    .line 1730
    invoke-interface {v2, v7, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1733
    iget-object v2, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1735
    neg-float v1, v1

    .line 1736
    move-object/from16 v8, v53

    .line 1738
    invoke-interface {v2, v8, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1741
    move-object/from16 v1, p1

    .line 1743
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    .line 1746
    goto :goto_701

    .line 1747
    :cond_6d2
    move-object/from16 v1, p1

    .line 1749
    move-object/from16 v7, v52

    .line 1751
    move-object/from16 v8, v53

    .line 1753
    move-object/from16 v5, v54

    .line 1755
    move-object/from16 v4, v55

    .line 1757
    const/high16 v6, 0x3f800000  # 1.0f

    .line 1759
    iget v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 1761
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    .line 1764
    move-result-object v9

    .line 1765
    iget-object v10, v9, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1767
    invoke-interface {v10, v7, v2}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1770
    iget-object v2, v9, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1772
    invoke-interface {v2, v8, v6}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1775
    iget-object v2, v9, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1777
    invoke-interface {v2, v5, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1780
    iget-object v2, v9, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1782
    neg-float v3, v3

    .line 1783
    invoke-interface {v2, v4, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1786
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    .line 1789
    goto :goto_701

    .line 1790
    :cond_6fd
    move-object/from16 v0, p0

    .line 1792
    move-object/from16 v1, p1

    .line 1794
    :goto_701
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1796
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    .line 1799
    move-result v2

    .line 1800
    if-eqz v2, :cond_7bf

    .line 1802
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1804
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1806
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1808
    iget v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E:F

    .line 1810
    const/high16 v4, 0x42b40000  # 90.0f

    .line 1812
    add-float/2addr v3, v4

    .line 1813
    float-to-double v3, v3

    .line 1814
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    .line 1817
    move-result-wide v3

    .line 1818
    double-to-float v3, v3

    .line 1819
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1821
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1824
    move-result v4

    .line 1825
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1827
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1830
    move-result-object v6

    .line 1831
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1834
    move-result-object v6

    .line 1835
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1837
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1840
    move-result-object v8

    .line 1841
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1844
    move-result-object v8

    .line 1845
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1847
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1850
    move-result-object v10

    .line 1851
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1854
    move-result-object v10

    .line 1855
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1857
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1860
    move-result-object v12

    .line 1861
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1864
    move-result-object v12

    .line 1865
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1868
    move-result-object v5

    .line 1869
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1872
    move-result-object v5

    .line 1873
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1876
    move-result-object v7

    .line 1877
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1880
    move-result-object v7

    .line 1881
    invoke-virtual {v2, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1884
    move-result-object v9

    .line 1885
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1888
    move-result-object v9

    .line 1889
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1892
    move-result-object v2

    .line 1893
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1896
    move-result-object v2

    .line 1897
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    .line 1900
    move-result-object v11

    .line 1901
    float-to-double v13, v3

    .line 1902
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 1905
    move-result-wide v15

    .line 1906
    int-to-double v3, v4

    .line 1907
    move-object/from16 v17, v9

    .line 1909
    move-object/from16 p2, v10

    .line 1911
    mul-double v9, v15, v3

    .line 1913
    double-to-float v9, v9

    .line 1914
    iget-object v10, v11, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1916
    const/high16 v15, 0x3f000000  # 0.5f

    .line 1918
    invoke-interface {v10, v7, v15}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1921
    iget-object v7, v11, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1923
    invoke-interface {v7, v2, v15}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1926
    iget-object v2, v11, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1928
    const/high16 v7, -0x41000000  # -0.5f

    .line 1930
    invoke-interface {v2, v8, v7}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1933
    iget-object v2, v11, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1935
    invoke-interface {v2, v12, v7}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1938
    neg-float v2, v9

    .line 1939
    iput v2, v11, Landroidx/constraintlayout/core/b;->b:F

    .line 1941
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    .line 1944
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    .line 1947
    move-result-object v2

    .line 1948
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 1951
    move-result-wide v8

    .line 1952
    mul-double/2addr v8, v3

    .line 1953
    double-to-float v3, v8

    .line 1954
    iget-object v4, v2, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1956
    invoke-interface {v4, v5, v15}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1959
    iget-object v4, v2, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1961
    move-object/from16 v5, v17

    .line 1963
    invoke-interface {v4, v5, v15}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1966
    iget-object v4, v2, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1968
    invoke-interface {v4, v6, v7}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1971
    iget-object v4, v2, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 1973
    move-object/from16 v5, p2

    .line 1975
    invoke-interface {v4, v5, v7}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1978
    neg-float v3, v3

    .line 1979
    iput v3, v2, Landroidx/constraintlayout/core/b;->b:F

    .line 1981
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    .line 1984
    :cond_7bf
    const/4 v1, 0x0

    .line 1985
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 1987
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 1989
    return-void
.end method

.method public c()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 3
    const/16 v1, 0x8

    .line 5
    if-eq v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public final d(Landroidx/constraintlayout/core/c;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V
    .registers 57

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    move/from16 v5, p26

    .line 1
    invoke-virtual {v10, v13}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v9

    .line 2
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    .line 3
    iget-object v6, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 4
    invoke-virtual {v10, v6}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v7

    .line 5
    iget-object v6, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 6
    invoke-virtual {v10, v6}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    .line 7
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    move-result v16

    .line 8
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    move-result v17

    .line 9
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    move-result v12

    if-eqz v17, :cond_3f

    add-int/lit8 v18, v16, 0x1

    goto :goto_41

    :cond_3f
    move/from16 v18, v16

    :goto_41
    if-eqz v12, :cond_45

    add-int/lit8 v18, v18, 0x1

    :cond_45
    move/from16 v2, v18

    if-eqz p17, :cond_4c

    const/16 v19, 0x3

    goto :goto_4e

    :cond_4c
    move/from16 v19, p22

    .line 10
    :goto_4e
    sget-object v18, Landroidx/constraintlayout/core/widgets/ConstraintWidget$a;->b:[I

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aget v14, v18, v20

    const/4 v11, 0x1

    if-eq v14, v11, :cond_6c

    const/4 v11, 0x2

    if-eq v14, v11, :cond_6c

    const/4 v11, 0x3

    if-eq v14, v11, :cond_6c

    const/4 v11, 0x4

    if-eq v14, v11, :cond_65

    move/from16 v14, v19

    goto :goto_6f

    :cond_65
    move/from16 v14, v19

    if-eq v14, v11, :cond_6f

    const/16 v19, 0x1

    goto :goto_71

    :cond_6c
    move/from16 v14, v19

    const/4 v11, 0x4

    :cond_6f
    :goto_6f
    const/16 v19, 0x0

    .line 11
    :goto_71
    iget v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:I

    move-object/from16 v22, v6

    const/4 v6, -0x1

    if-eq v11, v6, :cond_80

    if-eqz p2, :cond_80

    .line 12
    iput v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:I

    move/from16 p13, v11

    const/16 v19, 0x0

    .line 13
    :cond_80
    iget v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:I

    if-eq v11, v6, :cond_8b

    if-nez p2, :cond_8b

    .line 14
    iput v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:I

    const/16 v19, 0x0

    goto :goto_8d

    :cond_8b
    move/from16 v11, p13

    .line 15
    :goto_8d
    iget v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    move/from16 p13, v11

    const/16 v11, 0x8

    if-ne v6, v11, :cond_99

    const/4 v6, 0x0

    const/16 v19, 0x0

    goto :goto_9b

    :cond_99
    move/from16 v6, p13

    :goto_9b
    if-eqz p27, :cond_be

    if-nez v16, :cond_a9

    if-nez v17, :cond_a9

    if-nez v12, :cond_a9

    move/from16 v11, p12

    .line 16
    invoke-virtual {v10, v9, v11}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    goto :goto_b9

    :cond_a9
    if-eqz v16, :cond_b9

    if-nez v17, :cond_b9

    .line 17
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v11

    move/from16 v24, v12

    const/16 v12, 0x8

    invoke-virtual {v10, v9, v7, v11, v12}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_c1

    :cond_b9
    :goto_b9
    move/from16 v24, v12

    const/16 v12, 0x8

    goto :goto_c1

    :cond_be
    move/from16 v24, v12

    move v12, v11

    :goto_c1
    if-nez v19, :cond_df

    if-eqz p9, :cond_d8

    const/4 v5, 0x3

    const/4 v11, 0x0

    .line 18
    invoke-virtual {v10, v8, v9, v11, v5}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    if-lez v15, :cond_cf

    .line 19
    invoke-virtual {v10, v8, v9, v15, v12}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_cf
    const v6, 0x7fffffff

    if-ge v1, v6, :cond_dc

    .line 20
    invoke-virtual {v10, v8, v9, v1, v12}, Landroidx/constraintlayout/core/c;->g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_dc

    :cond_d8
    const/4 v5, 0x3

    .line 21
    invoke-virtual {v10, v8, v9, v6, v12}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_dc
    :goto_dc
    move v1, v5

    goto/16 :goto_149

    :cond_df
    const/4 v1, 0x3

    const/4 v11, 0x2

    if-eq v2, v11, :cond_fc

    if-nez p17, :cond_fc

    const/4 v11, 0x1

    if-eq v14, v11, :cond_ea

    if-nez v14, :cond_fc

    .line 22
    :cond_ea
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lez v4, :cond_f4

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_f4
    const/16 v6, 0x8

    .line 24
    invoke-virtual {v10, v8, v9, v5, v6}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    const/16 v19, 0x0

    goto :goto_149

    :cond_fc
    const/4 v11, -0x2

    if-ne v3, v11, :cond_100

    move v3, v6

    :cond_100
    if-ne v4, v11, :cond_103

    move v4, v6

    :cond_103
    if-lez v6, :cond_109

    const/4 v11, 0x1

    if-eq v14, v11, :cond_109

    const/4 v6, 0x0

    :cond_109
    if-lez v3, :cond_114

    const/16 v11, 0x8

    .line 25
    invoke-virtual {v10, v8, v9, v3, v11}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 26
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_114
    if-lez v4, :cond_12d

    if-eqz p3, :cond_11d

    const/4 v11, 0x1

    if-ne v14, v11, :cond_11d

    const/4 v11, 0x0

    goto :goto_11e

    :cond_11d
    const/4 v11, 0x1

    :goto_11e
    if-eqz v11, :cond_126

    const/16 v11, 0x8

    .line 27
    invoke-virtual {v10, v8, v9, v4, v11}, Landroidx/constraintlayout/core/c;->g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_128

    :cond_126
    const/16 v11, 0x8

    .line 28
    :goto_128
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_12f

    :cond_12d
    const/16 v11, 0x8

    :goto_12f
    const/4 v12, 0x1

    if-ne v14, v12, :cond_14f

    if-eqz p3, :cond_138

    .line 29
    invoke-virtual {v10, v8, v9, v6, v11}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_149

    :cond_138
    if-eqz p19, :cond_142

    const/4 v5, 0x5

    .line 30
    invoke-virtual {v10, v8, v9, v6, v5}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 31
    invoke-virtual {v10, v8, v9, v6, v11}, Landroidx/constraintlayout/core/c;->g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_149

    :cond_142
    const/4 v5, 0x5

    .line 32
    invoke-virtual {v10, v8, v9, v6, v5}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 33
    invoke-virtual {v10, v8, v9, v6, v11}, Landroidx/constraintlayout/core/c;->g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :goto_149
    move/from16 v11, p5

    move/from16 v25, v2

    :goto_14d
    move v12, v3

    goto :goto_1b9

    :cond_14f
    const/4 v6, 0x2

    if-ne v14, v6, :cond_1b5

    .line 34
    iget-object v11, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 35
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v11, v12, :cond_176

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v11, v1, :cond_15d

    goto :goto_176

    .line 36
    :cond_15d
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    .line 37
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v11

    goto :goto_18c

    .line 38
    :cond_176
    :goto_176
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    .line 39
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v11

    .line 40
    :goto_18c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    move-result-object v12

    .line 41
    iget-object v6, v12, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    move/from16 v25, v2

    const/high16 v2, -0x40800000  # -1.0f

    invoke-interface {v6, v8, v2}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 42
    iget-object v2, v12, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-interface {v2, v9, v6}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 43
    iget-object v2, v12, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v2, v11, v5}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 44
    iget-object v2, v12, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    neg-float v5, v5

    invoke-interface {v2, v1, v5}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 45
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    if-eqz p3, :cond_1b2

    const/16 v19, 0x0

    :cond_1b2
    move/from16 v11, p5

    goto :goto_14d

    :cond_1b5
    move/from16 v25, v2

    move v12, v3

    const/4 v11, 0x1

    :goto_1b9
    if-eqz p27, :cond_4cb

    if-eqz p19, :cond_1bf

    goto/16 :goto_4cb

    :cond_1bf
    if-nez v16, :cond_1c8

    if-nez v17, :cond_1c8

    if-nez v24, :cond_1c8

    move-object/from16 v6, v22

    goto :goto_208

    :cond_1c8
    if-eqz v16, :cond_1e6

    if-nez v17, :cond_1e6

    .line 46
    iget-object v1, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz p3, :cond_1d9

    .line 47
    instance-of v1, v1, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v1, :cond_1d9

    const/16 v1, 0x8

    goto :goto_1da

    :cond_1d9
    const/4 v1, 0x5

    :goto_1da
    move/from16 v21, p3

    move-object/from16 v14, p11

    move-object v3, v8

    move/from16 p5, v11

    move v11, v1

    move-object/from16 v1, v22

    goto/16 :goto_4b3

    :cond_1e6
    if-nez v16, :cond_211

    if-eqz v17, :cond_211

    .line 48
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v6, v22

    const/16 v2, 0x8

    invoke-virtual {v10, v8, v6, v1, v2}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    if-eqz p3, :cond_208

    move-object/from16 v5, p6

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v10, v9, v5, v2, v1}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    move-object/from16 v14, p11

    move v2, v1

    move-object v1, v6

    move-object v3, v8

    move/from16 p5, v11

    goto/16 :goto_4b0

    :cond_208
    :goto_208
    move-object/from16 v14, p11

    move-object v1, v6

    move-object v3, v8

    move/from16 p5, v11

    const/4 v2, 0x5

    goto/16 :goto_4b0

    :cond_211
    move-object/from16 v5, p6

    move-object/from16 v6, v22

    const/4 v1, 0x2

    if-eqz v16, :cond_208

    if-eqz v17, :cond_208

    .line 50
    iget-object v2, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v2, p11

    .line 51
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 52
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/16 v16, 0x6

    if-eqz v19, :cond_315

    if-nez v14, :cond_27b

    if-nez v4, :cond_255

    if-nez v12, :cond_255

    .line 53
    iget-boolean v4, v7, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    if-eqz v4, :cond_24a

    iget-boolean v4, v6, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    if-eqz v4, :cond_24a

    .line 54
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v1

    const/16 v3, 0x8

    invoke-virtual {v10, v9, v7, v1, v3}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 55
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v8, v6, v1, v3}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    return-void

    :cond_24a
    const/16 p2, 0x8

    const/16 v17, 0x8

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    goto :goto_25f

    :cond_255
    const/16 p2, 0x5

    const/16 v17, 0x5

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    .line 56
    :goto_25f
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/a;

    if-nez v4, :cond_26b

    instance-of v4, v1, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v4, :cond_268

    goto :goto_26b

    :cond_268
    move/from16 v4, p2

    goto :goto_26c

    :cond_26b
    :goto_26b
    const/4 v4, 0x4

    :goto_26c
    move v15, v4

    move/from16 v4, v17

    move/from16 v24, v22

    move/from16 v17, v14

    move/from16 v22, v21

    move-object/from16 v14, p7

    move/from16 v21, v16

    goto/16 :goto_365

    :cond_27b
    const/4 v15, 0x2

    if-ne v14, v15, :cond_28c

    .line 57
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/a;

    if-nez v4, :cond_289

    instance-of v4, v1, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v4, :cond_287

    goto :goto_289

    :cond_287
    const/4 v4, 0x5

    goto :goto_28a

    :cond_289
    :goto_289
    const/4 v4, 0x4

    :goto_28a
    const/4 v15, 0x5

    goto :goto_292

    :cond_28c
    const/4 v15, 0x1

    if-ne v14, v15, :cond_2a5

    const/4 v4, 0x4

    const/16 v15, 0x8

    :goto_292
    move/from16 v17, v14

    move/from16 v21, v16

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v14, p7

    move/from16 v28, v15

    move v15, v4

    move/from16 v4, v28

    goto/16 :goto_365

    :cond_2a5
    const/4 v15, 0x3

    if-ne v14, v15, :cond_30e

    .line 58
    iget v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    move/from16 v17, v14

    const/4 v14, -0x1

    if-ne v15, v14, :cond_2c8

    if-eqz p20, :cond_2b7

    if-eqz p3, :cond_2b5

    const/4 v4, 0x5

    goto :goto_2b9

    :cond_2b5
    const/4 v4, 0x4

    goto :goto_2b9

    :cond_2b7
    const/16 v4, 0x8

    :goto_2b9
    move-object/from16 v14, p7

    move/from16 v21, v4

    const/16 v4, 0x8

    const/4 v15, 0x5

    :goto_2c0
    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    goto/16 :goto_365

    :cond_2c8
    if-eqz p17, :cond_2ec

    move/from16 v14, p23

    const/4 v15, 0x2

    if-eq v14, v15, :cond_2d5

    const/4 v4, 0x1

    if-ne v14, v4, :cond_2d3

    goto :goto_2d5

    :cond_2d3
    const/4 v4, 0x0

    goto :goto_2d6

    :cond_2d5
    :goto_2d5
    const/4 v4, 0x1

    :goto_2d6
    if-nez v4, :cond_2dc

    const/4 v4, 0x5

    const/16 v14, 0x8

    goto :goto_2de

    :cond_2dc
    const/4 v4, 0x4

    const/4 v14, 0x5

    :goto_2de
    move v15, v4

    move v4, v14

    move/from16 v21, v16

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v14, p7

    goto/16 :goto_365

    :cond_2ec
    if-lez v4, :cond_2f0

    const/4 v4, 0x5

    goto :goto_307

    :cond_2f0
    if-nez v4, :cond_306

    if-nez v12, :cond_306

    if-nez p20, :cond_2f9

    const/16 v4, 0x8

    goto :goto_307

    :cond_2f9
    if-eq v3, v13, :cond_2ff

    if-eq v1, v13, :cond_2ff

    const/4 v4, 0x4

    goto :goto_300

    :cond_2ff
    const/4 v4, 0x5

    :goto_300
    move-object/from16 v14, p7

    move/from16 v21, v16

    const/4 v15, 0x4

    goto :goto_2c0

    :cond_306
    const/4 v4, 0x4

    :goto_307
    move-object/from16 v14, p7

    move v15, v4

    move/from16 v21, v16

    const/4 v4, 0x5

    goto :goto_2c0

    :cond_30e
    move/from16 v17, v14

    move-object/from16 v14, p7

    const/4 v4, 0x0

    const/4 v15, 0x0

    goto :goto_35b

    :cond_315
    move/from16 v17, v14

    .line 59
    iget-boolean v4, v7, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    if-eqz v4, :cond_357

    iget-boolean v4, v6, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    if-eqz v4, :cond_357

    .line 60
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v1

    .line 61
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v3

    const/16 v4, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v7

    move/from16 p20, v1

    move/from16 p21, p16

    move-object/from16 p22, v6

    move-object/from16 p23, v8

    move/from16 p24, v3

    move/from16 p25, v4

    .line 62
    invoke-virtual/range {p17 .. p25}, Landroidx/constraintlayout/core/c;->b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    if-eqz p3, :cond_356

    if-eqz v11, :cond_356

    .line 63
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_34d

    .line 64
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v11

    move-object/from16 v14, p7

    goto :goto_350

    :cond_34d
    move-object/from16 v14, p7

    const/4 v11, 0x0

    :goto_350
    if-eq v6, v14, :cond_356

    const/4 v1, 0x5

    .line 65
    invoke-virtual {v10, v14, v8, v11, v1}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_356
    return-void

    :cond_357
    move-object/from16 v14, p7

    const/4 v4, 0x1

    const/4 v15, 0x1

    :goto_35b
    move/from16 v23, v4

    move/from16 v22, v15

    move/from16 v21, v16

    const/4 v4, 0x5

    const/4 v15, 0x4

    const/16 v24, 0x0

    :goto_365
    if-eqz v23, :cond_370

    if-ne v7, v6, :cond_370

    if-eq v3, v13, :cond_370

    const/16 v23, 0x0

    const/16 v25, 0x0

    goto :goto_374

    :cond_370
    move/from16 v25, v23

    const/16 v23, 0x1

    :goto_374
    if-eqz v22, :cond_3bf

    if-nez v19, :cond_389

    if-nez p18, :cond_389

    if-nez p20, :cond_389

    if-ne v7, v5, :cond_389

    if-ne v6, v14, :cond_389

    const/16 v21, 0x0

    const/16 v22, 0x8

    const/16 v23, 0x8

    const/16 v26, 0x0

    goto :goto_391

    :cond_389
    move/from16 v22, v4

    move/from16 v26, v23

    move/from16 v23, v21

    move/from16 v21, p3

    .line 66
    :goto_391
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v4

    .line 67
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v27

    move/from16 p2, v15

    move-object v15, v1

    move-object/from16 v1, p1

    move-object v14, v2

    move-object v2, v9

    move/from16 p5, v11

    move-object v11, v3

    move-object v3, v7

    move/from16 p8, v12

    move-object v12, v5

    move/from16 v5, p16

    move-object/from16 p9, v6

    move-object v12, v7

    move-object v7, v8

    move-object/from16 p15, v13

    move-object v13, v8

    move/from16 v8, v27

    move-object/from16 v27, v13

    move-object v13, v9

    move/from16 v9, v23

    .line 68
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/c;->b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    move/from16 v4, v22

    move/from16 v23, v26

    goto :goto_3d2

    :cond_3bf
    move-object v14, v2

    move-object/from16 p9, v6

    move-object/from16 v27, v8

    move/from16 p5, v11

    move/from16 p8, v12

    move-object/from16 p15, v13

    move/from16 p2, v15

    move-object v15, v1

    move-object v11, v3

    move-object v12, v7

    move-object v13, v9

    move/from16 v21, p3

    .line 69
    :goto_3d2
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3e9

    .line 70
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-nez v1, :cond_3dd

    goto :goto_3e5

    .line 71
    :cond_3dd
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_3e5

    const/4 v1, 0x1

    goto :goto_3e6

    :cond_3e5
    :goto_3e5
    const/4 v1, 0x0

    :goto_3e6
    if-nez v1, :cond_3e9

    return-void

    :cond_3e9
    if-eqz v25, :cond_40f

    move-object/from16 v1, p9

    if-eqz v21, :cond_3fd

    if-eq v12, v1, :cond_3fd

    if-nez v19, :cond_3fd

    .line 72
    instance-of v2, v11, Landroidx/constraintlayout/core/widgets/a;

    if-nez v2, :cond_3fb

    instance-of v2, v15, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v2, :cond_3fd

    :cond_3fb
    move/from16 v4, v16

    .line 73
    :cond_3fd
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v2

    invoke-virtual {v10, v13, v12, v2, v4}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 74
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v3, v27

    invoke-virtual {v10, v3, v1, v2, v4}, Landroidx/constraintlayout/core/c;->g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_413

    :cond_40f
    move-object/from16 v1, p9

    move-object/from16 v3, v27

    :goto_413
    if-eqz v21, :cond_429

    if-eqz p21, :cond_429

    .line 75
    instance-of v2, v11, Landroidx/constraintlayout/core/widgets/a;

    if-nez v2, :cond_429

    instance-of v2, v15, Landroidx/constraintlayout/core/widgets/a;

    if-nez v2, :cond_429

    move-object/from16 v2, p15

    if-eq v15, v2, :cond_42b

    move/from16 v4, v16

    move v5, v4

    const/16 v20, 0x1

    goto :goto_42f

    :cond_429
    move-object/from16 v2, p15

    :cond_42b
    move/from16 v5, p2

    move/from16 v20, v23

    :goto_42f
    if-eqz v20, :cond_47e

    if-eqz v24, :cond_45c

    if-eqz p20, :cond_437

    if-eqz p4, :cond_45c

    :cond_437
    if-eq v11, v2, :cond_43e

    if-ne v15, v2, :cond_43c

    goto :goto_43e

    :cond_43c
    move/from16 v16, v5

    .line 76
    :cond_43e
    :goto_43e
    instance-of v6, v11, Landroidx/constraintlayout/core/widgets/e;

    if-nez v6, :cond_446

    instance-of v6, v15, Landroidx/constraintlayout/core/widgets/e;

    if-eqz v6, :cond_448

    :cond_446
    const/16 v16, 0x5

    .line 77
    :cond_448
    instance-of v6, v11, Landroidx/constraintlayout/core/widgets/a;

    if-nez v6, :cond_450

    instance-of v6, v15, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v6, :cond_452

    :cond_450
    const/16 v16, 0x5

    :cond_452
    if-eqz p20, :cond_456

    const/4 v6, 0x5

    goto :goto_458

    :cond_456
    move/from16 v6, v16

    .line 78
    :goto_458
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_45c
    if-eqz v21, :cond_46e

    .line 79
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eqz p17, :cond_46c

    if-nez p20, :cond_46c

    if-eq v11, v2, :cond_46a

    if-ne v15, v2, :cond_46c

    :cond_46a
    const/4 v11, 0x4

    goto :goto_46f

    :cond_46c
    move v11, v4

    goto :goto_46f

    :cond_46e
    move v11, v5

    .line 80
    :goto_46f
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v2

    invoke-virtual {v10, v13, v12, v2, v11}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 81
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v3, v1, v2, v11}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_47e
    if-eqz v21, :cond_491

    move-object/from16 v2, p6

    move-object v4, v12

    if-ne v2, v4, :cond_48a

    .line 82
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v5

    goto :goto_48b

    :cond_48a
    const/4 v5, 0x0

    :goto_48b
    if-eq v4, v2, :cond_491

    const/4 v4, 0x5

    .line 83
    invoke-virtual {v10, v13, v2, v5, v4}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_491
    if-eqz v21, :cond_4ae

    if-eqz v19, :cond_4ae

    if-nez p14, :cond_4ae

    if-nez p8, :cond_4ae

    if-eqz v19, :cond_4a8

    move/from16 v2, v17

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4a8

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 84
    invoke-virtual {v10, v3, v13, v4, v2}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    const/4 v11, 0x5

    goto :goto_4b3

    :cond_4a8
    const/4 v4, 0x0

    const/4 v2, 0x5

    .line 85
    invoke-virtual {v10, v3, v13, v4, v2}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_4b2

    :cond_4ae
    const/4 v2, 0x5

    goto :goto_4b2

    :goto_4b0
    move/from16 v21, p3

    :goto_4b2
    move v11, v2

    :goto_4b3
    if-eqz v21, :cond_4ca

    if-eqz p5, :cond_4ca

    .line 86
    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_4c2

    .line 87
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v2

    move-object/from16 v4, p7

    goto :goto_4c5

    :cond_4c2
    move-object/from16 v4, p7

    const/4 v2, 0x0

    :goto_4c5
    if-eq v1, v4, :cond_4ca

    .line 88
    invoke-virtual {v10, v4, v3, v2, v11}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_4ca
    return-void

    :cond_4cb
    :goto_4cb
    move-object/from16 v2, p6

    move-object/from16 v4, p7

    move-object v3, v8

    move-object v13, v9

    move/from16 p5, v11

    move/from16 v1, v25

    const/4 v5, 0x2

    if-ge v1, v5, :cond_518

    if-eqz p3, :cond_518

    if-eqz p5, :cond_518

    const/16 v1, 0x8

    const/4 v5, 0x0

    .line 89
    invoke-virtual {v10, v13, v2, v5, v1}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    if-nez p2, :cond_4ed

    .line 90
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v1, :cond_4eb

    goto :goto_4ed

    :cond_4eb
    const/4 v11, 0x0

    goto :goto_4ee

    :cond_4ed
    :goto_4ed
    const/4 v11, 0x1

    :goto_4ee
    if-nez p2, :cond_510

    .line 91
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_510

    .line 92
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 93
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_50f

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v5, v1, v2

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v2, :cond_50f

    const/4 v5, 0x1

    aget-object v1, v1, v5

    if-ne v1, v2, :cond_50f

    move v11, v5

    goto :goto_510

    :cond_50f
    const/4 v11, 0x0

    :cond_510
    :goto_510
    if-eqz v11, :cond_518

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v10, v4, v3, v2, v1}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_518
    return-void
.end method

.method public final e(Landroidx/constraintlayout/core/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 8
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 18
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 21
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 23
    if-lez v0, :cond_1d

    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 27
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 30
    :cond_1d
    return-void
.end method

.method public final f()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 7
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/c;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 14
    if-nez v0, :cond_16

    .line 16
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 18
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/d;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 21
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 23
    :cond_16
    return-void
.end method

.method public g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .registers 4

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$a;->a:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 9
    packed-switch v0, :pswitch_data_30

    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 21
    throw v0

    .line 22
    :pswitch_15  #0x9
    const/4 p1, 0x0

    .line 23
    return-object p1

    .line 24
    :pswitch_17  #0x8
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 26
    return-object p1

    .line 27
    :pswitch_1a  #0x7
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 29
    return-object p1

    .line 30
    :pswitch_1d  #0x6
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 32
    return-object p1

    .line 33
    :pswitch_20  #0x5
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 35
    return-object p1

    .line 36
    :pswitch_23  #0x4
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 38
    return-object p1

    .line 39
    :pswitch_26  #0x3
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 41
    return-object p1

    .line 42
    :pswitch_29  #0x2
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 44
    return-object p1

    .line 45
    :pswitch_2c  #0x1
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 47
    return-object p1

    .line 48
    nop

    .line 49
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_29  #00000002
        :pswitch_26  #00000003
        :pswitch_23  #00000004
        :pswitch_20  #00000005
        :pswitch_1d  #00000006
        :pswitch_1a  #00000007
        :pswitch_17  #00000008
        :pswitch_15  #00000009
    .end packed-switch
.end method

.method public final h(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .registers 3

    .line 1
    if-nez p1, :cond_8

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 5
    const/4 v0, 0x0

    .line 6
    aget-object p1, p1, v0

    .line 8
    return-object p1

    .line 9
    :cond_8
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_10

    .line 12
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 14
    aget-object p1, p1, v0

    .line 16
    return-object p1

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method public final i()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 3
    const/16 v1, 0x8

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 11
    return v0
.end method

.method public final j(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 4

    .line 1
    if-nez p1, :cond_f

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 5
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    if-eqz v0, :cond_1f

    .line 9
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 11
    if-ne v1, p1, :cond_1f

    .line 13
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 15
    return-object p1

    .line 16
    :cond_f
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_1f

    .line 19
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 21
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    if-eqz v0, :cond_1f

    .line 25
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 27
    if-ne v1, p1, :cond_1f

    .line 29
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 31
    return-object p1

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public final k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 4

    .line 1
    if-nez p1, :cond_f

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 5
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    if-eqz v0, :cond_1f

    .line 9
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 11
    if-ne v1, p1, :cond_1f

    .line 13
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 15
    return-object p1

    .line 16
    :cond_f
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_1f

    .line 19
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 21
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    if-eqz v0, :cond_1f

    .line 25
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 27
    if-ne v1, p1, :cond_1f

    .line 29
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 31
    return-object p1

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public l(Ljava/lang/StringBuilder;)V
    .registers 11

    .line 1
    const-string v0, "  "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ":{\n"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    const-string v1, "    actualWidth:"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v0, "\n"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v2, "    actualHeight:"

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string v2, "    actualLeft:"

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    const-string v2, "    actualTop:"

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 128
    const-string v1, "left"

    .line 130
    invoke-static {p1, v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 133
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 135
    const-string v1, "top"

    .line 137
    invoke-static {p1, v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 140
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 142
    const-string v1, "right"

    .line 144
    invoke-static {p1, v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 147
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 149
    const-string v1, "bottom"

    .line 151
    invoke-static {p1, v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 154
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 156
    const-string v1, "baseline"

    .line 158
    invoke-static {p1, v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 161
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 163
    const-string v1, "centerX"

    .line 165
    invoke-static {p1, v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 168
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 170
    const-string v1, "centerY"

    .line 172
    invoke-static {p1, v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 175
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 177
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 179
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    .line 181
    const/4 v8, 0x0

    .line 182
    aget v4, v0, v8

    .line 184
    iget v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    .line 186
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 188
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:F

    .line 190
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:[F

    .line 192
    aget v0, v0, v8

    .line 194
    const-string v1, "    width"

    .line 196
    move-object v0, p1

    .line 197
    invoke-static/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIF)V

    .line 200
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 202
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 204
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    .line 206
    const/4 v1, 0x1

    .line 207
    aget v4, v0, v1

    .line 209
    iget v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    .line 211
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 213
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 215
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:[F

    .line 217
    aget v0, v0, v1

    .line 219
    const-string v1, "    height"

    .line 221
    move-object v0, p1

    .line 222
    invoke-static/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIF)V

    .line 225
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 227
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 229
    const/4 v2, 0x0

    .line 230
    cmpl-float v2, v0, v2

    .line 232
    if-nez v2, :cond_ea

    .line 234
    goto :goto_109

    .line 235
    :cond_ea
    const-string v2, "    dimensionRatio"

    .line 237
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v2, " :  ["

    .line 242
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 248
    const-string v0, ","

    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    const-string v0, ""

    .line 258
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v0, "],\n"

    .line 263
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :goto_109
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    .line 268
    const/high16 v1, 0x3f000000  # 0.5f

    .line 270
    const-string v2, "    horizontalBias"

    .line 272
    invoke-static {p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 275
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    .line 277
    const-string v2, "    verticalBias"

    .line 279
    invoke-static {p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 282
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0:I

    .line 284
    const-string v1, "    horizontalChainStyle"

    .line 286
    invoke-static {p1, v0, v8, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 289
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:I

    .line 291
    const-string v1, "    verticalChainStyle"

    .line 293
    invoke-static {p1, v0, v8, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 296
    const-string v0, "  }"

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    return-void
.end method

.method public final o()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 3
    const/16 v1, 0x8

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 11
    return v0
.end method

.method public final p()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/d;

    .line 7
    if-eqz v1, :cond_10

    .line 9
    check-cast v0, Landroidx/constraintlayout/core/widgets/d;

    .line 11
    iget v0, v0, Landroidx/constraintlayout/core/widgets/d;->z0:I

    .line 13
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0

    .line 17
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 19
    return v0
.end method

.method public final q()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/d;

    .line 7
    if-eqz v1, :cond_10

    .line 9
    check-cast v0, Landroidx/constraintlayout/core/widgets/d;

    .line 11
    iget v0, v0, Landroidx/constraintlayout/core/widgets/d;->A0:I

    .line 13
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0

    .line 17
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 19
    return v0
.end method

.method public final r(I)Z
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p1, :cond_1d

    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 8
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 10
    if-eqz p1, :cond_d

    .line 12
    move p1, v1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move p1, v2

    .line 15
    :goto_e
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 17
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 19
    if-eqz v3, :cond_16

    .line 21
    move v3, v1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v3, v2

    .line 24
    :goto_17
    add-int/2addr p1, v3

    .line 25
    if-ge p1, v0, :cond_1b

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v1, v2

    .line 29
    :goto_1c
    return v1

    .line 30
    :cond_1d
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 32
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 34
    if-eqz p1, :cond_25

    .line 36
    move p1, v1

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move p1, v2

    .line 39
    :goto_26
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 41
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 43
    if-eqz v3, :cond_2e

    .line 45
    move v3, v1

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move v3, v2

    .line 48
    :goto_2f
    add-int/2addr p1, v3

    .line 49
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 51
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 53
    if-eqz v3, :cond_38

    .line 55
    move v3, v1

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move v3, v2

    .line 58
    :goto_39
    add-int/2addr p1, v3

    .line 59
    if-ge p1, v0, :cond_3d

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move v1, v2

    .line 63
    :goto_3e
    return v1
.end method

.method public final s(II)Z
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_38

    .line 5
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 9
    if-eqz p1, :cond_6c

    .line 11
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 13
    if-eqz p1, :cond_6c

    .line 15
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 17
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 19
    if-eqz p1, :cond_6c

    .line 21
    iget-boolean v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 23
    if-eqz v2, :cond_6c

    .line 25
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 28
    move-result p1

    .line 29
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 31
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 34
    move-result v2

    .line 35
    sub-int/2addr p1, v2

    .line 36
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 38
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 40
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 43
    move-result v2

    .line 44
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 46
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 49
    move-result v3

    .line 50
    add-int/2addr v3, v2

    .line 51
    sub-int/2addr p1, v3

    .line 52
    if-lt p1, p2, :cond_36

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v0, v1

    .line 56
    :goto_37
    return v0

    .line 57
    :cond_38
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 59
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 61
    if-eqz p1, :cond_6c

    .line 63
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 65
    if-eqz p1, :cond_6c

    .line 67
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 69
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 71
    if-eqz p1, :cond_6c

    .line 73
    iget-boolean v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 75
    if-eqz v2, :cond_6c

    .line 77
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 80
    move-result p1

    .line 81
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 83
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 86
    move-result v2

    .line 87
    sub-int/2addr p1, v2

    .line 88
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 90
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 92
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 95
    move-result v2

    .line 96
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 98
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 101
    move-result v3

    .line 102
    add-int/2addr v3, v2

    .line 103
    sub-int/2addr p1, v3

    .line 104
    if-lt p1, p2, :cond_6a

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    move v0, v1

    .line 108
    :goto_6b
    return v0

    .line 109
    :cond_6c
    return v1
.end method

.method public final t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2, p4, p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;II)V

    .line 12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, ""

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 9
    if-eqz v2, :cond_18

    .line 11
    const-string v0, "id: "

    .line 13
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 19
    const-string v3, " "

    .line 21
    invoke-static {v0, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    :cond_18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v0, "("

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v0, ", "

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v0, ") - ("

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v0, " x "

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 65
    const-string v2, ")"

    .line 67
    invoke-static {v1, v0, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    return-object v0
.end method

.method public final u(I)Z
    .registers 6

    .line 1
    mul-int/lit8 p1, p1, 0x2

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 5
    aget-object v1, v0, p1

    .line 7
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1b

    .line 12
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 14
    if-eq v2, v1, :cond_1b

    .line 16
    add-int/2addr p1, v3

    .line 17
    aget-object p1, v0, p1

    .line 19
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 21
    if-eqz v0, :cond_1b

    .line 23
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 25
    if-ne v0, p1, :cond_1b

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 v3, 0x0

    .line 29
    :goto_1c
    return v3
.end method

.method public final v()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 5
    if-eqz v1, :cond_a

    .line 7
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 9
    if-eq v1, v0, :cond_14

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 15
    if-eqz v1, :cond_16

    .line 17
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 19
    if-ne v1, v0, :cond_16

    .line 21
    :cond_14
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public final w()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 5
    if-eqz v1, :cond_a

    .line 7
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 9
    if-eq v1, v0, :cond_14

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 15
    if-eqz v1, :cond_16

    .line 17
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 19
    if-ne v1, v0, :cond_16

    .line 21
    :cond_14
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public final x()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 7
    const/16 v1, 0x8

    .line 9
    if-eq v0, v1, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public y()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 3
    if-nez v0, :cond_13

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 9
    if-eqz v0, :cond_11

    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 21
    :goto_14
    return v0
.end method

.method public z()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 3
    if-nez v0, :cond_13

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 9
    if-eqz v0, :cond_11

    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 21
    :goto_14
    return v0
.end method
