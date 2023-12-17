.class public abstract Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableContainerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:Landroid/graphics/ColorFilter;

.field public D:Z

.field public E:Landroid/content/res/ColorStateList;

.field public F:Landroid/graphics/PorterDuff$Mode;

.field public G:Z

.field public H:Z

.field public final a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;

.field public b:Landroid/content/res/Resources;

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field public g:[Landroid/graphics/drawable/Drawable;

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Landroid/graphics/Rect;

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;Landroid/content/res/Resources;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    .line 7
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    .line 12
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    .line 14
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    .line 16
    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;

    .line 18
    const/4 p2, 0x0

    .line 19
    if-eqz p3, :cond_16

    .line 21
    move-object v2, p3

    .line 22
    goto :goto_1c

    .line 23
    :cond_16
    if-eqz p1, :cond_1b

    .line 25
    iget-object v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move-object v2, p2

    .line 29
    :goto_1c
    iput-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    .line 31
    if-eqz p1, :cond_23

    .line 33
    iget v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v2, v0

    .line 37
    :goto_24
    sget v3, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->m:I

    .line 39
    if-nez p3, :cond_29

    .line 41
    goto :goto_2f

    .line 42
    :cond_29
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    move-result-object p3

    .line 46
    iget v2, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 48
    :goto_2f
    if-nez v2, :cond_33

    .line 50
    const/16 v2, 0xa0

    .line 52
    :cond_33
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    .line 54
    if-eqz p1, :cond_f4

    .line 56
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    .line 58
    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    .line 60
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    .line 62
    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    .line 64
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->v:Z

    .line 66
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->w:Z

    .line 68
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    .line 70
    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    .line 72
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    .line 74
    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    .line 76
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    .line 78
    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    .line 80
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->y:I

    .line 82
    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->y:I

    .line 84
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    .line 86
    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    .line 88
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    .line 90
    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    .line 92
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->B:Z

    .line 94
    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->B:Z

    .line 96
    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->C:Landroid/graphics/ColorFilter;

    .line 98
    iput-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->C:Landroid/graphics/ColorFilter;

    .line 100
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->D:Z

    .line 102
    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->D:Z

    .line 104
    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->E:Landroid/content/res/ColorStateList;

    .line 106
    iput-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->E:Landroid/content/res/ColorStateList;

    .line 108
    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->F:Landroid/graphics/PorterDuff$Mode;

    .line 110
    iput-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->F:Landroid/graphics/PorterDuff$Mode;

    .line 112
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->G:Z

    .line 114
    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->G:Z

    .line 116
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->H:Z

    .line 118
    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->H:Z

    .line 120
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    .line 122
    if-ne p3, v2, :cond_a4

    .line 124
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    .line 126
    if-eqz p3, :cond_8e

    .line 128
    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    .line 130
    if-eqz p3, :cond_8a

    .line 132
    new-instance p2, Landroid/graphics/Rect;

    .line 134
    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    .line 136
    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 139
    :cond_8a
    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    .line 141
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    .line 143
    :cond_8e
    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    .line 145
    if-eqz p2, :cond_a4

    .line 147
    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    .line 149
    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    .line 151
    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    .line 153
    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    .line 155
    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    .line 157
    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    .line 159
    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    .line 161
    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    .line 163
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    .line 165
    :cond_a4
    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->r:Z

    .line 167
    if-eqz p2, :cond_ae

    .line 169
    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->s:I

    .line 171
    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->s:I

    .line 173
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->r:Z

    .line 175
    :cond_ae
    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->t:Z

    .line 177
    if-eqz p2, :cond_b8

    .line 179
    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->u:Z

    .line 181
    iput-boolean p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->u:Z

    .line 183
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->t:Z

    .line 185
    :cond_b8
    iget-object p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 187
    array-length p3, p2

    .line 188
    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    .line 190
    iput-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 192
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 194
    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 196
    iget-object p1, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    .line 198
    if-eqz p1, :cond_ce

    .line 200
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 203
    move-result-object p1

    .line 204
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    .line 206
    goto :goto_d7

    .line 207
    :cond_ce
    new-instance p1, Landroid/util/SparseArray;

    .line 209
    iget p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 211
    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    .line 214
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    .line 216
    :goto_d7
    iget p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 218
    :goto_d9
    if-ge v0, p1, :cond_fc

    .line 220
    aget-object p3, p2, v0

    .line 222
    if-eqz p3, :cond_f1

    .line 224
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 227
    move-result-object p3

    .line 228
    if-eqz p3, :cond_eb

    .line 230
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    .line 232
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    goto :goto_f1

    .line 236
    :cond_eb
    iget-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 238
    aget-object v1, p2, v0

    .line 240
    aput-object v1, p3, v0

    .line 242
    :cond_f1
    :goto_f1
    add-int/lit8 v0, v0, 0x1

    .line 244
    goto :goto_d9

    .line 245
    :cond_f4
    const/16 p1, 0xa

    .line 247
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    .line 249
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 251
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 253
    :cond_fc
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b()V

    .line 7
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 9
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 11
    const/4 v2, -0x1

    .line 12
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    .line 14
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    .line 16
    const/4 v2, 0x0

    .line 17
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    .line 19
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    .line 21
    :goto_14
    if-ge v2, v0, :cond_43

    .line 23
    aget-object v3, v1, v2

    .line 25
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 28
    move-result v4

    .line 29
    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    .line 31
    if-le v4, v5, :cond_22

    .line 33
    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    .line 35
    :cond_22
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 38
    move-result v4

    .line 39
    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    .line 41
    if-le v4, v5, :cond_2c

    .line 43
    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    .line 45
    :cond_2c
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 48
    move-result v4

    .line 49
    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    .line 51
    if-le v4, v5, :cond_36

    .line 53
    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    .line 55
    :cond_36
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 58
    move-result v3

    .line 59
    iget v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    .line 61
    if-le v3, v4, :cond_40

    .line 63
    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    .line 65
    :cond_40
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_14

    .line 68
    :cond_43
    return-void
.end method

.method public final b()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    .line 3
    if-eqz v0, :cond_37

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_9
    if-ge v1, v0, :cond_34

    .line 12
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 26
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 28
    iget-object v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    .line 30
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object v3

    .line 34
    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->y:I

    .line 36
    invoke-static {v3, v5}, Lg0/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 39
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object v3

    .line 43
    iget-object v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;

    .line 45
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 48
    aput-object v3, v4, v2

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 52
    goto :goto_9

    .line 53
    :cond_34
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    .line 56
    :cond_37
    return-void
.end method

.method public final c(I)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 3
    aget-object v0, v0, p1

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_42

    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 16
    move-result v0

    .line 17
    if-ltz v0, :cond_42

    .line 19
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 27
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    .line 29
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v2

    .line 33
    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->y:I

    .line 35
    invoke-static {v2, v3}, Lg0/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 38
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;

    .line 44
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 47
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 49
    aput-object v2, v3, p1

    .line 51
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 56
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    .line 58
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_41

    .line 64
    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    .line 66
    :cond_41
    return-object v2

    .line 67
    :cond_42
    return-object v1
.end method

.method public final canApplyTheme()Z
    .registers 7

    .line 1
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 3
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_6
    if-ge v3, v0, :cond_28

    .line 9
    aget-object v4, v1, v3

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v4, :cond_14

    .line 14
    invoke-static {v4}, Lg0/a$b;->b(Landroid/graphics/drawable/Drawable;)Z

    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_25

    .line 20
    return v5

    .line 21
    :cond_14
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 29
    if-eqz v4, :cond_25

    .line 31
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_25

    .line 37
    return v5

    .line 38
    :cond_25
    add-int/lit8 v3, v3, 0x1

    .line 40
    goto :goto_6

    .line 41
    :cond_28
    return v2
.end method

.method public abstract d()V
.end method

.method public final getChangingConfigurations()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    .line 3
    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    .line 5
    or-int/2addr v0, v1

    .line 6
    return v0
.end method
