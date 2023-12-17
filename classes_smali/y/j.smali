.class public final Ly/j;
.super Ly/d;
.source "KeyTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/j$a;
    }
.end annotation


# instance fields
.field public d:I

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:I

.field public r:F

.field public s:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ly/d;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ly/j;->d:I

    .line 7
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 9
    iput v0, p0, Ly/j;->e:F

    .line 11
    iput v0, p0, Ly/j;->f:F

    .line 13
    iput v0, p0, Ly/j;->g:F

    .line 15
    iput v0, p0, Ly/j;->h:F

    .line 17
    iput v0, p0, Ly/j;->i:F

    .line 19
    iput v0, p0, Ly/j;->j:F

    .line 21
    iput v0, p0, Ly/j;->k:F

    .line 23
    iput v0, p0, Ly/j;->l:F

    .line 25
    iput v0, p0, Ly/j;->m:F

    .line 27
    iput v0, p0, Ly/j;->n:F

    .line 29
    iput v0, p0, Ly/j;->o:F

    .line 31
    iput v0, p0, Ly/j;->p:F

    .line 33
    const/4 v1, 0x0

    .line 34
    iput v1, p0, Ly/j;->q:I

    .line 36
    iput v0, p0, Ly/j;->r:F

    .line 38
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Ly/j;->s:F

    .line 41
    new-instance v0, Ljava/util/HashMap;

    .line 43
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    iput-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 48
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 3
    const-string v0, " KeyTimeCycles do not support SplineSet"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public final b()Ly/d;
    .registers 3

    .line 1
    new-instance v0, Ly/j;

    .line 3
    invoke-direct {v0}, Ly/j;-><init>()V

    .line 6
    invoke-super {v0, p0}, Ly/d;->c(Ly/d;)Ly/d;

    .line 9
    iget v1, p0, Ly/j;->d:I

    .line 11
    iput v1, v0, Ly/j;->d:I

    .line 13
    iget v1, p0, Ly/j;->q:I

    .line 15
    iput v1, v0, Ly/j;->q:I

    .line 17
    iget v1, p0, Ly/j;->r:F

    .line 19
    iput v1, v0, Ly/j;->r:F

    .line 21
    iget v1, p0, Ly/j;->s:F

    .line 23
    iput v1, v0, Ly/j;->s:F

    .line 25
    iget v1, p0, Ly/j;->p:F

    .line 27
    iput v1, v0, Ly/j;->p:F

    .line 29
    iget v1, p0, Ly/j;->e:F

    .line 31
    iput v1, v0, Ly/j;->e:F

    .line 33
    iget v1, p0, Ly/j;->f:F

    .line 35
    iput v1, v0, Ly/j;->f:F

    .line 37
    iget v1, p0, Ly/j;->g:F

    .line 39
    iput v1, v0, Ly/j;->g:F

    .line 41
    iget v1, p0, Ly/j;->j:F

    .line 43
    iput v1, v0, Ly/j;->j:F

    .line 45
    iget v1, p0, Ly/j;->h:F

    .line 47
    iput v1, v0, Ly/j;->h:F

    .line 49
    iget v1, p0, Ly/j;->i:F

    .line 51
    iput v1, v0, Ly/j;->i:F

    .line 53
    iget v1, p0, Ly/j;->k:F

    .line 55
    iput v1, v0, Ly/j;->k:F

    .line 57
    iget v1, p0, Ly/j;->l:F

    .line 59
    iput v1, v0, Ly/j;->l:F

    .line 61
    iget v1, p0, Ly/j;->m:F

    .line 63
    iput v1, v0, Ly/j;->m:F

    .line 65
    iget v1, p0, Ly/j;->n:F

    .line 67
    iput v1, v0, Ly/j;->n:F

    .line 69
    iget v1, p0, Ly/j;->o:F

    .line 71
    iput v1, v0, Ly/j;->o:F

    .line 73
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ly/j;->b()Ly/d;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d(Ljava/util/HashSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Ly/j;->e:F

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_d

    .line 9
    const-string v0, "alpha"

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_d
    iget v0, p0, Ly/j;->f:F

    .line 16
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1a

    .line 22
    const-string v0, "elevation"

    .line 24
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_1a
    iget v0, p0, Ly/j;->g:F

    .line 29
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_27

    .line 35
    const-string v0, "rotation"

    .line 37
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_27
    iget v0, p0, Ly/j;->h:F

    .line 42
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_34

    .line 48
    const-string v0, "rotationX"

    .line 50
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_34
    iget v0, p0, Ly/j;->i:F

    .line 55
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_41

    .line 61
    const-string v0, "rotationY"

    .line 63
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_41
    iget v0, p0, Ly/j;->m:F

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4e

    .line 74
    const-string v0, "translationX"

    .line 76
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_4e
    iget v0, p0, Ly/j;->n:F

    .line 81
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_5b

    .line 87
    const-string v0, "translationY"

    .line 89
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_5b
    iget v0, p0, Ly/j;->o:F

    .line 94
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_68

    .line 100
    const-string v0, "translationZ"

    .line 102
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_68
    iget v0, p0, Ly/j;->j:F

    .line 107
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_75

    .line 113
    const-string v0, "transitionPathRotate"

    .line 115
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_75
    iget v0, p0, Ly/j;->k:F

    .line 120
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_82

    .line 126
    const-string v0, "scaleX"

    .line 128
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_82
    iget v0, p0, Ly/j;->l:F

    .line 133
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_8f

    .line 139
    const-string v0, "scaleY"

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_8f
    iget v0, p0, Ly/j;->p:F

    .line 146
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_9c

    .line 152
    const-string v0, "progress"

    .line 154
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_9c
    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 159
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 162
    move-result v0

    .line 163
    if-lez v0, :cond_cf

    .line 165
    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 167
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 170
    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 174
    move-result-object v0

    .line 175
    :goto_ae
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_cf

    .line 181
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Ljava/lang/String;

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    .line 189
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    const-string v3, "CUSTOM,"

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 207
    goto :goto_ae

    .line 208
    :cond_cf
    return-void
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 1
    sget-object v0, Lz/d;->KeyTimeCycle:[I

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    sget-object p2, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_d
    if-ge v0, p2, :cond_125

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 19
    move-result v1

    .line 20
    sget-object v2, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 22
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x3

    .line 27
    packed-switch v2, :pswitch_data_126

    .line 30
    :pswitch_1d  #0x3, 0xb
    const-string v2, "unused attribute 0x"

    .line 32
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v3, "   "

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    sget-object v3, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 50
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 53
    move-result v1

    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    const-string v2, "KeyTimeCycle"

    .line 63
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    goto/16 :goto_121

    .line 68
    :pswitch_43  #0x15
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 71
    move-result-object v2

    .line 72
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 74
    const/4 v3, 0x5

    .line 75
    if-ne v2, v3, :cond_56

    .line 77
    iget v2, p0, Ly/j;->s:F

    .line 79
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 82
    move-result v1

    .line 83
    iput v1, p0, Ly/j;->s:F

    .line 85
    goto/16 :goto_121

    .line 87
    :cond_56
    iget v2, p0, Ly/j;->s:F

    .line 89
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 92
    move-result v1

    .line 93
    iput v1, p0, Ly/j;->s:F

    .line 95
    goto/16 :goto_121

    .line 97
    :pswitch_60  #0x14
    iget v2, p0, Ly/j;->r:F

    .line 99
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 102
    move-result v1

    .line 103
    iput v1, p0, Ly/j;->r:F

    .line 105
    goto/16 :goto_121

    .line 107
    :pswitch_6a  #0x13
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 110
    move-result-object v2

    .line 111
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 113
    if-ne v2, v3, :cond_7a

    .line 115
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 118
    const/4 v1, 0x7

    .line 119
    iput v1, p0, Ly/j;->q:I

    .line 121
    goto/16 :goto_121

    .line 123
    :cond_7a
    iget v2, p0, Ly/j;->q:I

    .line 125
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 128
    move-result v1

    .line 129
    iput v1, p0, Ly/j;->q:I

    .line 131
    goto/16 :goto_121

    .line 133
    :pswitch_84  #0x12
    iget v2, p0, Ly/j;->p:F

    .line 135
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 138
    move-result v1

    .line 139
    iput v1, p0, Ly/j;->p:F

    .line 141
    goto/16 :goto_121

    .line 143
    :pswitch_8e  #0x11
    iget v2, p0, Ly/j;->o:F

    .line 145
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 148
    move-result v1

    .line 149
    iput v1, p0, Ly/j;->o:F

    .line 151
    goto/16 :goto_121

    .line 153
    :pswitch_98  #0x10
    iget v2, p0, Ly/j;->n:F

    .line 155
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 158
    move-result v1

    .line 159
    iput v1, p0, Ly/j;->n:F

    .line 161
    goto/16 :goto_121

    .line 163
    :pswitch_a2  #0xf
    iget v2, p0, Ly/j;->m:F

    .line 165
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 168
    move-result v1

    .line 169
    iput v1, p0, Ly/j;->m:F

    .line 171
    goto/16 :goto_121

    .line 173
    :pswitch_ac  #0xe
    iget v2, p0, Ly/j;->l:F

    .line 175
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 178
    move-result v1

    .line 179
    iput v1, p0, Ly/j;->l:F

    .line 181
    goto/16 :goto_121

    .line 183
    :pswitch_b6  #0xd
    iget v2, p0, Ly/j;->d:I

    .line 185
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 188
    move-result v1

    .line 189
    iput v1, p0, Ly/j;->d:I

    .line 191
    goto :goto_121

    .line 192
    :pswitch_bf  #0xc
    iget v2, p0, Ly/d;->a:I

    .line 194
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 197
    move-result v1

    .line 198
    iput v1, p0, Ly/d;->a:I

    .line 200
    goto :goto_121

    .line 201
    :pswitch_c8  #0xa
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    .line 203
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 206
    move-result-object v2

    .line 207
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 209
    if-ne v2, v3, :cond_d6

    .line 211
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 214
    goto :goto_121

    .line 215
    :cond_d6
    iget v2, p0, Ly/d;->b:I

    .line 217
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 220
    move-result v1

    .line 221
    iput v1, p0, Ly/d;->b:I

    .line 223
    goto :goto_121

    .line 224
    :pswitch_df  #0x9
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 227
    goto :goto_121

    .line 228
    :pswitch_e3  #0x8
    iget v2, p0, Ly/j;->j:F

    .line 230
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 233
    move-result v1

    .line 234
    iput v1, p0, Ly/j;->j:F

    .line 236
    goto :goto_121

    .line 237
    :pswitch_ec  #0x7
    iget v2, p0, Ly/j;->k:F

    .line 239
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 242
    move-result v1

    .line 243
    iput v1, p0, Ly/j;->k:F

    .line 245
    goto :goto_121

    .line 246
    :pswitch_f5  #0x6
    iget v2, p0, Ly/j;->i:F

    .line 248
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 251
    move-result v1

    .line 252
    iput v1, p0, Ly/j;->i:F

    .line 254
    goto :goto_121

    .line 255
    :pswitch_fe  #0x5
    iget v2, p0, Ly/j;->h:F

    .line 257
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 260
    move-result v1

    .line 261
    iput v1, p0, Ly/j;->h:F

    .line 263
    goto :goto_121

    .line 264
    :pswitch_107  #0x4
    iget v2, p0, Ly/j;->g:F

    .line 266
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 269
    move-result v1

    .line 270
    iput v1, p0, Ly/j;->g:F

    .line 272
    goto :goto_121

    .line 273
    :pswitch_110  #0x2
    iget v2, p0, Ly/j;->f:F

    .line 275
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 278
    move-result v1

    .line 279
    iput v1, p0, Ly/j;->f:F

    .line 281
    goto :goto_121

    .line 282
    :pswitch_119  #0x1
    iget v2, p0, Ly/j;->e:F

    .line 284
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 287
    move-result v1

    .line 288
    iput v1, p0, Ly/j;->e:F

    .line 290
    :goto_121
    add-int/lit8 v0, v0, 0x1

    .line 292
    goto/16 :goto_d

    .line 294
    :cond_125
    return-void

    .line 295
    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_119  #00000001
        :pswitch_110  #00000002
        :pswitch_1d  #00000003
        :pswitch_107  #00000004
        :pswitch_fe  #00000005
        :pswitch_f5  #00000006
        :pswitch_ec  #00000007
        :pswitch_e3  #00000008
        :pswitch_df  #00000009
        :pswitch_c8  #0000000a
        :pswitch_1d  #0000000b
        :pswitch_bf  #0000000c
        :pswitch_b6  #0000000d
        :pswitch_ac  #0000000e
        :pswitch_a2  #0000000f
        :pswitch_98  #00000010
        :pswitch_8e  #00000011
        :pswitch_84  #00000012
        :pswitch_6a  #00000013
        :pswitch_60  #00000014
        :pswitch_43  #00000015
    .end packed-switch
.end method

.method public final f(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Ly/j;->d:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    iget v0, p0, Ly/j;->e:F

    .line 9
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_19

    .line 15
    iget v0, p0, Ly/j;->d:I

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "alpha"

    .line 23
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_19
    iget v0, p0, Ly/j;->f:F

    .line 28
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2c

    .line 34
    iget v0, p0, Ly/j;->d:I

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v0

    .line 40
    const-string v1, "elevation"

    .line 42
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_2c
    iget v0, p0, Ly/j;->g:F

    .line 47
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3f

    .line 53
    iget v0, p0, Ly/j;->d:I

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v0

    .line 59
    const-string v1, "rotation"

    .line 61
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_3f
    iget v0, p0, Ly/j;->h:F

    .line 66
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_52

    .line 72
    iget v0, p0, Ly/j;->d:I

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v0

    .line 78
    const-string v1, "rotationX"

    .line 80
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_52
    iget v0, p0, Ly/j;->i:F

    .line 85
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_65

    .line 91
    iget v0, p0, Ly/j;->d:I

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v0

    .line 97
    const-string v1, "rotationY"

    .line 99
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_65
    iget v0, p0, Ly/j;->m:F

    .line 104
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_78

    .line 110
    iget v0, p0, Ly/j;->d:I

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v0

    .line 116
    const-string v1, "translationX"

    .line 118
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_78
    iget v0, p0, Ly/j;->n:F

    .line 123
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_8b

    .line 129
    iget v0, p0, Ly/j;->d:I

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v0

    .line 135
    const-string v1, "translationY"

    .line 137
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_8b
    iget v0, p0, Ly/j;->o:F

    .line 142
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_9e

    .line 148
    iget v0, p0, Ly/j;->d:I

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v0

    .line 154
    const-string v1, "translationZ"

    .line 156
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_9e
    iget v0, p0, Ly/j;->j:F

    .line 161
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_b1

    .line 167
    iget v0, p0, Ly/j;->d:I

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v0

    .line 173
    const-string v1, "transitionPathRotate"

    .line 175
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_b1
    iget v0, p0, Ly/j;->k:F

    .line 180
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_c4

    .line 186
    iget v0, p0, Ly/j;->d:I

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    move-result-object v0

    .line 192
    const-string v1, "scaleX"

    .line 194
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_c4
    iget v0, p0, Ly/j;->k:F

    .line 199
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_d7

    .line 205
    iget v0, p0, Ly/j;->d:I

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    move-result-object v0

    .line 211
    const-string v1, "scaleY"

    .line 213
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_d7
    iget v0, p0, Ly/j;->p:F

    .line 218
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_ea

    .line 224
    iget v0, p0, Ly/j;->d:I

    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    move-result-object v0

    .line 230
    const-string v1, "progress"

    .line 232
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_ea
    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 237
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 240
    move-result v0

    .line 241
    if-lez v0, :cond_118

    .line 243
    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 245
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 248
    move-result-object v0

    .line 249
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 252
    move-result-object v0

    .line 253
    :goto_fc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_118

    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Ljava/lang/String;

    .line 265
    const-string v2, "CUSTOM,"

    .line 267
    invoke-static {v2, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    move-result-object v1

    .line 271
    iget v2, p0, Ly/j;->d:I

    .line 273
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    goto :goto_fc

    .line 281
    :cond_118
    return-void
.end method
