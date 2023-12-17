.class public final Ly/k;
.super Ly/d;
.source "KeyTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/k$a;
    }
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Landroid/view/View;

.field public k:F

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:F

.field public p:F

.field public q:Z

.field public r:I

.field public s:I

.field public t:I

.field public u:Landroid/graphics/RectF;

.field public v:Landroid/graphics/RectF;

.field public w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ly/d;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ly/k;->d:Ljava/lang/String;

    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Ly/k;->e:I

    .line 10
    iput-object v0, p0, Ly/k;->f:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Ly/k;->g:Ljava/lang/String;

    .line 14
    iput v1, p0, Ly/k;->h:I

    .line 16
    iput v1, p0, Ly/k;->i:I

    .line 18
    iput-object v0, p0, Ly/k;->j:Landroid/view/View;

    .line 20
    const v0, 0x3dcccccd  # 0.1f

    .line 23
    iput v0, p0, Ly/k;->k:F

    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Ly/k;->l:Z

    .line 28
    iput-boolean v0, p0, Ly/k;->m:Z

    .line 30
    iput-boolean v0, p0, Ly/k;->n:Z

    .line 32
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 34
    iput v0, p0, Ly/k;->o:F

    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Ly/k;->q:Z

    .line 39
    iput v1, p0, Ly/k;->r:I

    .line 41
    iput v1, p0, Ly/k;->s:I

    .line 43
    iput v1, p0, Ly/k;->t:I

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    .line 47
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 50
    iput-object v0, p0, Ly/k;->u:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    .line 54
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 57
    iput-object v0, p0, Ly/k;->v:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    .line 61
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    iput-object v0, p0, Ly/k;->w:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    .line 68
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    iput-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 73
    return-void
.end method

.method public static i(Landroid/graphics/RectF;Landroid/view/View;Z)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 25
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 29
    if-eqz p2, :cond_25

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 38
    :cond_25
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx/c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final b()Ly/d;
    .registers 3

    .line 1
    new-instance v0, Ly/k;

    .line 3
    invoke-direct {v0}, Ly/k;-><init>()V

    .line 6
    invoke-super {v0, p0}, Ly/d;->c(Ly/d;)Ly/d;

    .line 9
    iget-object v1, p0, Ly/k;->d:Ljava/lang/String;

    .line 11
    iput-object v1, v0, Ly/k;->d:Ljava/lang/String;

    .line 13
    iget v1, p0, Ly/k;->e:I

    .line 15
    iput v1, v0, Ly/k;->e:I

    .line 17
    iget-object v1, p0, Ly/k;->f:Ljava/lang/String;

    .line 19
    iput-object v1, v0, Ly/k;->f:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Ly/k;->g:Ljava/lang/String;

    .line 23
    iput-object v1, v0, Ly/k;->g:Ljava/lang/String;

    .line 25
    iget v1, p0, Ly/k;->h:I

    .line 27
    iput v1, v0, Ly/k;->h:I

    .line 29
    iget v1, p0, Ly/k;->i:I

    .line 31
    iput v1, v0, Ly/k;->i:I

    .line 33
    iget-object v1, p0, Ly/k;->j:Landroid/view/View;

    .line 35
    iput-object v1, v0, Ly/k;->j:Landroid/view/View;

    .line 37
    iget v1, p0, Ly/k;->k:F

    .line 39
    iput v1, v0, Ly/k;->k:F

    .line 41
    iget-boolean v1, p0, Ly/k;->l:Z

    .line 43
    iput-boolean v1, v0, Ly/k;->l:Z

    .line 45
    iget-boolean v1, p0, Ly/k;->m:Z

    .line 47
    iput-boolean v1, v0, Ly/k;->m:Z

    .line 49
    iget-boolean v1, p0, Ly/k;->n:Z

    .line 51
    iput-boolean v1, v0, Ly/k;->n:Z

    .line 53
    iget v1, p0, Ly/k;->o:F

    .line 55
    iput v1, v0, Ly/k;->o:F

    .line 57
    iget v1, p0, Ly/k;->p:F

    .line 59
    iput v1, v0, Ly/k;->p:F

    .line 61
    iget-boolean v1, p0, Ly/k;->q:Z

    .line 63
    iput-boolean v1, v0, Ly/k;->q:Z

    .line 65
    iget-object v1, p0, Ly/k;->u:Landroid/graphics/RectF;

    .line 67
    iput-object v1, v0, Ly/k;->u:Landroid/graphics/RectF;

    .line 69
    iget-object v1, p0, Ly/k;->v:Landroid/graphics/RectF;

    .line 71
    iput-object v1, v0, Ly/k;->v:Landroid/graphics/RectF;

    .line 73
    iget-object v1, p0, Ly/k;->w:Ljava/util/HashMap;

    .line 75
    iput-object v1, v0, Ly/k;->w:Ljava/util/HashMap;

    .line 77
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ly/k;->b()Ly/d;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 1
    sget-object v0, Lz/d;->KeyTrigger:[I

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    sget-object p2, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_d
    if-ge v0, p2, :cond_cf

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 19
    move-result v1

    .line 20
    sget-object v2, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 22
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 25
    move-result v2

    .line 26
    packed-switch v2, :pswitch_data_d0

    .line 29
    :pswitch_1c  #0x3
    const-string v2, "unused attribute 0x"

    .line 31
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "   "

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    sget-object v3, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 49
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 52
    move-result v1

    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    const-string v2, "KeyTrigger"

    .line 62
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    goto/16 :goto_cb

    .line 67
    :pswitch_42  #0xe
    iget v2, p0, Ly/k;->s:I

    .line 69
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 72
    move-result v1

    .line 73
    iput v1, p0, Ly/k;->s:I

    .line 75
    goto/16 :goto_cb

    .line 77
    :pswitch_4c  #0xd
    iget v2, p0, Ly/k;->r:I

    .line 79
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 82
    move-result v1

    .line 83
    iput v1, p0, Ly/k;->r:I

    .line 85
    goto/16 :goto_cb

    .line 87
    :pswitch_56  #0xc
    iget v2, p0, Ly/k;->t:I

    .line 89
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 92
    move-result v1

    .line 93
    iput v1, p0, Ly/k;->t:I

    .line 95
    goto/16 :goto_cb

    .line 97
    :pswitch_60  #0xb
    iget v2, p0, Ly/k;->e:I

    .line 99
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 102
    move-result v1

    .line 103
    iput v1, p0, Ly/k;->e:I

    .line 105
    goto :goto_cb

    .line 106
    :pswitch_69  #0xa
    iget-boolean v2, p0, Ly/k;->q:Z

    .line 108
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 111
    move-result v1

    .line 112
    iput-boolean v1, p0, Ly/k;->q:Z

    .line 114
    goto :goto_cb

    .line 115
    :pswitch_72  #0x9
    iget v2, p0, Ly/k;->i:I

    .line 117
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 120
    move-result v1

    .line 121
    iput v1, p0, Ly/k;->i:I

    .line 123
    goto :goto_cb

    .line 124
    :pswitch_7b  #0x8
    iget v2, p0, Ly/d;->a:I

    .line 126
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 129
    move-result v1

    .line 130
    iput v1, p0, Ly/d;->a:I

    .line 132
    int-to-float v1, v1

    .line 133
    const/high16 v2, 0x3f000000  # 0.5f

    .line 135
    add-float/2addr v1, v2

    .line 136
    const/high16 v2, 0x42c80000  # 100.0f

    .line 138
    div-float/2addr v1, v2

    .line 139
    iput v1, p0, Ly/k;->o:F

    .line 141
    goto :goto_cb

    .line 142
    :pswitch_8d  #0x7
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    .line 144
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 147
    move-result-object v2

    .line 148
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 150
    const/4 v3, 0x3

    .line 151
    if-ne v2, v3, :cond_9c

    .line 153
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 156
    goto :goto_cb

    .line 157
    :cond_9c
    iget v2, p0, Ly/d;->b:I

    .line 159
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 162
    move-result v1

    .line 163
    iput v1, p0, Ly/d;->b:I

    .line 165
    goto :goto_cb

    .line 166
    :pswitch_a5  #0x6
    iget v2, p0, Ly/k;->h:I

    .line 168
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 171
    move-result v1

    .line 172
    iput v1, p0, Ly/k;->h:I

    .line 174
    goto :goto_cb

    .line 175
    :pswitch_ae  #0x5
    iget v2, p0, Ly/k;->k:F

    .line 177
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 180
    move-result v1

    .line 181
    iput v1, p0, Ly/k;->k:F

    .line 183
    goto :goto_cb

    .line 184
    :pswitch_b7  #0x4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 187
    move-result-object v1

    .line 188
    iput-object v1, p0, Ly/k;->d:Ljava/lang/String;

    .line 190
    goto :goto_cb

    .line 191
    :pswitch_be  #0x2
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 194
    move-result-object v1

    .line 195
    iput-object v1, p0, Ly/k;->g:Ljava/lang/String;

    .line 197
    goto :goto_cb

    .line 198
    :pswitch_c5  #0x1
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 201
    move-result-object v1

    .line 202
    iput-object v1, p0, Ly/k;->f:Ljava/lang/String;

    .line 204
    :goto_cb
    add-int/lit8 v0, v0, 0x1

    .line 206
    goto/16 :goto_d

    .line 208
    :cond_cf
    return-void

    .line 209
    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_c5  #00000001
        :pswitch_be  #00000002
        :pswitch_1c  #00000003
        :pswitch_b7  #00000004
        :pswitch_ae  #00000005
        :pswitch_a5  #00000006
        :pswitch_8d  #00000007
        :pswitch_7b  #00000008
        :pswitch_72  #00000009
        :pswitch_69  #0000000a
        :pswitch_60  #0000000b
        :pswitch_56  #0000000c
        :pswitch_4c  #0000000d
        :pswitch_42  #0000000e
    .end packed-switch
.end method

.method public final g(FLandroid/view/View;)V
    .registers 12

    .line 1
    iget v0, p0, Ly/k;->i:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v1, :cond_60

    .line 8
    iget-object v0, p0, Ly/k;->j:Landroid/view/View;

    .line 10
    if-nez v0, :cond_19

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 18
    iget v4, p0, Ly/k;->i:I

    .line 20
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Ly/k;->j:Landroid/view/View;

    .line 26
    :cond_19
    iget-object v0, p0, Ly/k;->u:Landroid/graphics/RectF;

    .line 28
    iget-object v4, p0, Ly/k;->j:Landroid/view/View;

    .line 30
    iget-boolean v5, p0, Ly/k;->q:Z

    .line 32
    invoke-static {v0, v4, v5}, Ly/k;->i(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 35
    iget-object v0, p0, Ly/k;->v:Landroid/graphics/RectF;

    .line 37
    iget-boolean v4, p0, Ly/k;->q:Z

    .line 39
    invoke-static {v0, p2, v4}, Ly/k;->i(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 42
    iget-object v0, p0, Ly/k;->u:Landroid/graphics/RectF;

    .line 44
    iget-object v4, p0, Ly/k;->v:Landroid/graphics/RectF;

    .line 46
    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4a

    .line 52
    iget-boolean v0, p0, Ly/k;->l:Z

    .line 54
    if-eqz v0, :cond_3b

    .line 56
    iput-boolean v2, p0, Ly/k;->l:Z

    .line 58
    move v0, v3

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move v0, v2

    .line 61
    :goto_3c
    iget-boolean v4, p0, Ly/k;->n:Z

    .line 63
    if-eqz v4, :cond_44

    .line 65
    iput-boolean v2, p0, Ly/k;->n:Z

    .line 67
    move v4, v3

    .line 68
    goto :goto_45

    .line 69
    :cond_44
    move v4, v2

    .line 70
    :goto_45
    iput-boolean v3, p0, Ly/k;->m:Z

    .line 72
    move v5, v2

    .line 73
    goto/16 :goto_da

    .line 75
    :cond_4a
    iget-boolean v0, p0, Ly/k;->l:Z

    .line 77
    if-nez v0, :cond_52

    .line 79
    iput-boolean v3, p0, Ly/k;->l:Z

    .line 81
    move v0, v3

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    move v0, v2

    .line 84
    :goto_53
    iget-boolean v4, p0, Ly/k;->m:Z

    .line 86
    if-eqz v4, :cond_5b

    .line 88
    iput-boolean v2, p0, Ly/k;->m:Z

    .line 90
    move v4, v3

    .line 91
    goto :goto_5c

    .line 92
    :cond_5b
    move v4, v2

    .line 93
    :goto_5c
    iput-boolean v3, p0, Ly/k;->n:Z

    .line 95
    goto/16 :goto_d8

    .line 97
    :cond_60
    iget-boolean v0, p0, Ly/k;->l:Z

    .line 99
    const/4 v4, 0x0

    .line 100
    if-eqz v0, :cond_75

    .line 102
    iget v0, p0, Ly/k;->o:F

    .line 104
    sub-float v5, p1, v0

    .line 106
    iget v6, p0, Ly/k;->p:F

    .line 108
    sub-float/2addr v6, v0

    .line 109
    mul-float/2addr v6, v5

    .line 110
    cmpg-float v0, v6, v4

    .line 112
    if-gez v0, :cond_85

    .line 114
    iput-boolean v2, p0, Ly/k;->l:Z

    .line 116
    move v0, v3

    .line 117
    goto :goto_86

    .line 118
    :cond_75
    iget v0, p0, Ly/k;->o:F

    .line 120
    sub-float v0, p1, v0

    .line 122
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 125
    move-result v0

    .line 126
    iget v5, p0, Ly/k;->k:F

    .line 128
    cmpl-float v0, v0, v5

    .line 130
    if-lez v0, :cond_85

    .line 132
    iput-boolean v3, p0, Ly/k;->l:Z

    .line 134
    :cond_85
    move v0, v2

    .line 135
    :goto_86
    iget-boolean v5, p0, Ly/k;->m:Z

    .line 137
    if-eqz v5, :cond_9e

    .line 139
    iget v5, p0, Ly/k;->o:F

    .line 141
    sub-float v6, p1, v5

    .line 143
    iget v7, p0, Ly/k;->p:F

    .line 145
    sub-float/2addr v7, v5

    .line 146
    mul-float/2addr v7, v6

    .line 147
    cmpg-float v5, v7, v4

    .line 149
    if-gez v5, :cond_ae

    .line 151
    cmpg-float v5, v6, v4

    .line 153
    if-gez v5, :cond_ae

    .line 155
    iput-boolean v2, p0, Ly/k;->m:Z

    .line 157
    move v5, v3

    .line 158
    goto :goto_af

    .line 159
    :cond_9e
    iget v5, p0, Ly/k;->o:F

    .line 161
    sub-float v5, p1, v5

    .line 163
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 166
    move-result v5

    .line 167
    iget v6, p0, Ly/k;->k:F

    .line 169
    cmpl-float v5, v5, v6

    .line 171
    if-lez v5, :cond_ae

    .line 173
    iput-boolean v3, p0, Ly/k;->m:Z

    .line 175
    :cond_ae
    move v5, v2

    .line 176
    :goto_af
    iget-boolean v6, p0, Ly/k;->n:Z

    .line 178
    if-eqz v6, :cond_c7

    .line 180
    iget v6, p0, Ly/k;->o:F

    .line 182
    sub-float v7, p1, v6

    .line 184
    iget v8, p0, Ly/k;->p:F

    .line 186
    sub-float/2addr v8, v6

    .line 187
    mul-float/2addr v8, v7

    .line 188
    cmpg-float v6, v8, v4

    .line 190
    if-gez v6, :cond_d9

    .line 192
    cmpl-float v4, v7, v4

    .line 194
    if-lez v4, :cond_d9

    .line 196
    iput-boolean v2, p0, Ly/k;->n:Z

    .line 198
    move v4, v3

    .line 199
    goto :goto_da

    .line 200
    :cond_c7
    iget v4, p0, Ly/k;->o:F

    .line 202
    sub-float v4, p1, v4

    .line 204
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 207
    move-result v4

    .line 208
    iget v6, p0, Ly/k;->k:F

    .line 210
    cmpl-float v4, v4, v6

    .line 212
    if-lez v4, :cond_d7

    .line 214
    iput-boolean v3, p0, Ly/k;->n:Z

    .line 216
    :cond_d7
    move v4, v5

    .line 217
    :goto_d8
    move v5, v4

    .line 218
    :cond_d9
    move v4, v2

    .line 219
    :goto_da
    iput p1, p0, Ly/k;->p:F

    .line 221
    if-nez v5, :cond_e2

    .line 223
    if-nez v0, :cond_e2

    .line 225
    if-eqz v4, :cond_107

    .line 227
    :cond_e2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 230
    move-result-object p1

    .line 231
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 233
    iget-object v6, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 235
    if-eqz v6, :cond_ef

    .line 237
    invoke-interface {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c()V

    .line 240
    :cond_ef
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 242
    if-eqz p1, :cond_107

    .line 244
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 247
    move-result-object p1

    .line 248
    :goto_f7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    move-result v6

    .line 252
    if-eqz v6, :cond_107

    .line 254
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    move-result-object v6

    .line 258
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 260
    invoke-interface {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c()V

    .line 263
    goto :goto_f7

    .line 264
    :cond_107
    iget p1, p0, Ly/k;->e:I

    .line 266
    if-ne p1, v1, :cond_10d

    .line 268
    move-object p1, p2

    .line 269
    goto :goto_119

    .line 270
    :cond_10d
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 273
    move-result-object p1

    .line 274
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 276
    iget v6, p0, Ly/k;->e:I

    .line 278
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 281
    move-result-object p1

    .line 282
    :goto_119
    if-eqz v5, :cond_135

    .line 284
    iget-object v5, p0, Ly/k;->f:Ljava/lang/String;

    .line 286
    if-eqz v5, :cond_122

    .line 288
    invoke-virtual {p0, p1, v5}, Ly/k;->h(Landroid/view/View;Ljava/lang/String;)V

    .line 291
    :cond_122
    iget v5, p0, Ly/k;->r:I

    .line 293
    if-eq v5, v1, :cond_135

    .line 295
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 298
    move-result-object v5

    .line 299
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 301
    iget v6, p0, Ly/k;->r:I

    .line 303
    new-array v7, v3, [Landroid/view/View;

    .line 305
    aput-object p1, v7, v2

    .line 307
    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->k(I[Landroid/view/View;)V

    .line 310
    :cond_135
    if-eqz v4, :cond_151

    .line 312
    iget-object v4, p0, Ly/k;->g:Ljava/lang/String;

    .line 314
    if-eqz v4, :cond_13e

    .line 316
    invoke-virtual {p0, p1, v4}, Ly/k;->h(Landroid/view/View;Ljava/lang/String;)V

    .line 319
    :cond_13e
    iget v4, p0, Ly/k;->s:I

    .line 321
    if-eq v4, v1, :cond_151

    .line 323
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 326
    move-result-object v4

    .line 327
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 329
    iget v5, p0, Ly/k;->s:I

    .line 331
    new-array v6, v3, [Landroid/view/View;

    .line 333
    aput-object p1, v6, v2

    .line 335
    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->k(I[Landroid/view/View;)V

    .line 338
    :cond_151
    if-eqz v0, :cond_16d

    .line 340
    iget-object v0, p0, Ly/k;->d:Ljava/lang/String;

    .line 342
    if-eqz v0, :cond_15a

    .line 344
    invoke-virtual {p0, p1, v0}, Ly/k;->h(Landroid/view/View;Ljava/lang/String;)V

    .line 347
    :cond_15a
    iget v0, p0, Ly/k;->t:I

    .line 349
    if-eq v0, v1, :cond_16d

    .line 351
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 354
    move-result-object p2

    .line 355
    check-cast p2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 357
    iget v0, p0, Ly/k;->t:I

    .line 359
    new-array v1, v3, [Landroid/view/View;

    .line 361
    aput-object p1, v1, v2

    .line 363
    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->k(I[Landroid/view/View;)V

    .line 366
    :cond_16d
    return-void
.end method

.method public final h(Landroid/view/View;Ljava/lang/String;)V
    .registers 16

    .line 1
    if-nez p2, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const-string v0, "."

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_195

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v0, v2, :cond_15

    .line 20
    move v0, v2

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v0, v1

    .line 23
    :goto_16
    if-nez v0, :cond_22

    .line 25
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 31
    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    :cond_22
    iget-object v3, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 37
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v3

    .line 45
    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_194

    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/lang/String;

    .line 57
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 62
    move-result-object v5

    .line 63
    if-nez v0, :cond_46

    .line 65
    invoke-virtual {v5, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_2c

    .line 71
    :cond_46
    iget-object v5, p0, Ly/d;->c:Ljava/util/HashMap;

    .line 73
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 79
    if-eqz v4, :cond_2c

    .line 81
    const-string v5, "\" not found on "

    .line 83
    const-string v6, " Custom Attribute \""

    .line 85
    const-string v7, "TransitionLayout"

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    move-result-object v8

    .line 91
    iget-object v9, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->b:Ljava/lang/String;

    .line 93
    iget-boolean v10, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->a:Z

    .line 95
    if-nez v10, :cond_67

    .line 97
    const-string v10, "set"

    .line 99
    invoke-static {v10, v9}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v10

    .line 103
    goto :goto_68

    .line 104
    :cond_67
    move-object v10, v9

    .line 105
    :goto_68
    :try_start_68
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintAttribute$a;->a:[I

    .line 107
    iget-object v12, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->c:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 109
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 112
    move-result v12

    .line 113
    aget v11, v11, v12

    .line 115
    packed-switch v11, :pswitch_data_226

    .line 118
    goto :goto_2c

    .line 119
    :pswitch_76  #0x8
    new-array v11, v2, [Ljava/lang/Class;

    .line 121
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 123
    aput-object v12, v11, v1

    .line 125
    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 128
    move-result-object v11

    .line 129
    new-array v12, v2, [Ljava/lang/Object;

    .line 131
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->e:F

    .line 133
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 136
    move-result-object v4

    .line 137
    aput-object v4, v12, v1

    .line 139
    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    goto :goto_2c

    .line 143
    :pswitch_8e  #0x7
    new-array v11, v2, [Ljava/lang/Class;

    .line 145
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 147
    aput-object v12, v11, v1

    .line 149
    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 152
    move-result-object v11

    .line 153
    new-array v12, v2, [Ljava/lang/Object;

    .line 155
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->e:F

    .line 157
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 160
    move-result-object v4

    .line 161
    aput-object v4, v12, v1

    .line 163
    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    goto :goto_2c

    .line 167
    :pswitch_a6  #0x5
    new-array v11, v2, [Ljava/lang/Class;

    .line 169
    const-class v12, Landroid/graphics/drawable/Drawable;

    .line 171
    aput-object v12, v11, v1

    .line 173
    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 176
    move-result-object v11

    .line 177
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    .line 179
    invoke-direct {v12}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 182
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->h:I

    .line 184
    invoke-virtual {v12, v4}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 187
    new-array v4, v2, [Ljava/lang/Object;

    .line 189
    aput-object v12, v4, v1

    .line 191
    invoke-virtual {v11, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    goto/16 :goto_2c

    .line 196
    :pswitch_c3  #0x4
    new-array v11, v2, [Ljava/lang/Class;

    .line 198
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 200
    aput-object v12, v11, v1

    .line 202
    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 205
    move-result-object v11

    .line 206
    new-array v12, v2, [Ljava/lang/Object;

    .line 208
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->h:I

    .line 210
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    move-result-object v4

    .line 214
    aput-object v4, v12, v1

    .line 216
    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    goto/16 :goto_2c

    .line 221
    :pswitch_dc  #0x3
    new-array v11, v2, [Ljava/lang/Class;

    .line 223
    const-class v12, Ljava/lang/CharSequence;

    .line 225
    aput-object v12, v11, v1

    .line 227
    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 230
    move-result-object v11

    .line 231
    new-array v12, v2, [Ljava/lang/Object;

    .line 233
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->f:Ljava/lang/String;

    .line 235
    aput-object v4, v12, v1

    .line 237
    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    goto/16 :goto_2c

    .line 242
    :pswitch_f1  #0x2
    new-array v11, v2, [Ljava/lang/Class;

    .line 244
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 246
    aput-object v12, v11, v1

    .line 248
    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 251
    move-result-object v11

    .line 252
    new-array v12, v2, [Ljava/lang/Object;

    .line 254
    iget-boolean v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->g:Z

    .line 256
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 259
    move-result-object v4

    .line 260
    aput-object v4, v12, v1

    .line 262
    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    goto/16 :goto_2c

    .line 267
    :pswitch_10a  #0x1, 0x6
    new-array v11, v2, [Ljava/lang/Class;

    .line 269
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 271
    aput-object v12, v11, v1

    .line 273
    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 276
    move-result-object v11

    .line 277
    new-array v12, v2, [Ljava/lang/Object;

    .line 279
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->d:I

    .line 281
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    move-result-object v4

    .line 285
    aput-object v4, v12, v1

    .line 287
    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_121
    .catch Ljava/lang/NoSuchMethodException; {:try_start_68 .. :try_end_121} :catch_153
    .catch Ljava/lang/IllegalAccessException; {:try_start_68 .. :try_end_121} :catch_13b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_68 .. :try_end_121} :catch_123

    .line 290
    goto/16 :goto_2c

    .line 292
    :catch_123
    move-exception v4

    .line 293
    invoke-static {v6, v9, v5}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 300
    move-result-object v6

    .line 301
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v5

    .line 308
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 314
    goto/16 :goto_2c

    .line 316
    :catch_13b
    move-exception v4

    .line 317
    invoke-static {v6, v9, v5}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    move-result-object v5

    .line 321
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 324
    move-result-object v6

    .line 325
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    move-result-object v5

    .line 332
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 338
    goto/16 :goto_2c

    .line 340
    :catch_153
    move-exception v4

    .line 341
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 344
    move-result-object v4

    .line 345
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    .line 350
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 365
    move-result-object v5

    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    move-result-object v4

    .line 373
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v4, Ljava/lang/StringBuilder;

    .line 378
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 384
    move-result-object v5

    .line 385
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v5, " must have a method "

    .line 390
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    move-result-object v4

    .line 400
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    goto/16 :goto_2c

    .line 405
    :cond_194
    return-void

    .line 406
    :cond_195
    iget-object v0, p0, Ly/k;->w:Ljava/util/HashMap;

    .line 408
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 411
    move-result v0

    .line 412
    const/4 v2, 0x0

    .line 413
    if-eqz v0, :cond_1a9

    .line 415
    iget-object v0, p0, Ly/k;->w:Ljava/util/HashMap;

    .line 417
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    move-result-object v0

    .line 421
    check-cast v0, Ljava/lang/reflect/Method;

    .line 423
    if-nez v0, :cond_1aa

    .line 425
    return-void

    .line 426
    :cond_1a9
    move-object v0, v2

    .line 427
    :cond_1aa
    const-string v3, " "

    .line 429
    const-string v4, "\"on class "

    .line 431
    const-string v5, "KeyTrigger"

    .line 433
    if-nez v0, :cond_1f4

    .line 435
    :try_start_1b2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    move-result-object v0

    .line 439
    new-array v6, v1, [Ljava/lang/Class;

    .line 441
    invoke-virtual {v0, p2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 444
    move-result-object v0

    .line 445
    iget-object v6, p0, Ly/k;->w:Ljava/util/HashMap;

    .line 447
    invoke-virtual {v6, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b2 .. :try_end_1c1} :catch_1c2

    .line 450
    goto :goto_1f4

    .line 451
    :catch_1c2
    iget-object v0, p0, Ly/k;->w:Ljava/util/HashMap;

    .line 453
    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    .line 458
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    const-string v1, "Could not find method \""

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    move-result-object p2

    .line 476
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 479
    move-result-object p2

    .line 480
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-static {p1}, Ly/a;->c(Landroid/view/View;)Ljava/lang/String;

    .line 489
    move-result-object p1

    .line 490
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    move-result-object p1

    .line 497
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void

    .line 501
    :cond_1f4
    :goto_1f4
    :try_start_1f4
    new-array p2, v1, [Ljava/lang/Object;

    .line 503
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_1f9} :catch_1fa

    .line 506
    goto :goto_224

    .line 507
    :catch_1fa
    const-string p2, "Exception in call \""

    .line 509
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    move-result-object p2

    .line 513
    iget-object v0, p0, Ly/k;->d:Ljava/lang/String;

    .line 515
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    move-result-object v0

    .line 525
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 528
    move-result-object v0

    .line 529
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-static {p1}, Ly/a;->c(Landroid/view/View;)Ljava/lang/String;

    .line 538
    move-result-object p1

    .line 539
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    move-result-object p1

    .line 546
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_224
    return-void

    .line 550
    nop

    .line 551
    :pswitch_data_226
    .packed-switch 0x1
        :pswitch_10a  #00000001
        :pswitch_f1  #00000002
        :pswitch_dc  #00000003
        :pswitch_c3  #00000004
        :pswitch_a6  #00000005
        :pswitch_10a  #00000006
        :pswitch_8e  #00000007
        :pswitch_76  #00000008
    .end packed-switch
.end method
