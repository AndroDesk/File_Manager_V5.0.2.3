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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ly/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ly/k;->d:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Ly/k;->e:I

    iput-object v0, p0, Ly/k;->f:Ljava/lang/String;

    iput-object v0, p0, Ly/k;->g:Ljava/lang/String;

    iput v1, p0, Ly/k;->h:I

    iput v1, p0, Ly/k;->i:I

    iput-object v0, p0, Ly/k;->j:Landroid/view/View;

    const v0, 0x3dcccccd  # 0.1f

    iput v0, p0, Ly/k;->k:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly/k;->l:Z

    iput-boolean v0, p0, Ly/k;->m:Z

    iput-boolean v0, p0, Ly/k;->n:Z

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Ly/k;->o:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly/k;->q:Z

    iput v1, p0, Ly/k;->r:I

    iput v1, p0, Ly/k;->s:I

    iput v1, p0, Ly/k;->t:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ly/k;->u:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ly/k;->v:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ly/k;->w:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static i(Landroid/graphics/RectF;Landroid/view/View;Z)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    if-eqz p2, :cond_25

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

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

    new-instance v0, Ly/k;

    invoke-direct {v0}, Ly/k;-><init>()V

    invoke-super {v0, p0}, Ly/d;->c(Ly/d;)Ly/d;

    iget-object v1, p0, Ly/k;->d:Ljava/lang/String;

    iput-object v1, v0, Ly/k;->d:Ljava/lang/String;

    iget v1, p0, Ly/k;->e:I

    iput v1, v0, Ly/k;->e:I

    iget-object v1, p0, Ly/k;->f:Ljava/lang/String;

    iput-object v1, v0, Ly/k;->f:Ljava/lang/String;

    iget-object v1, p0, Ly/k;->g:Ljava/lang/String;

    iput-object v1, v0, Ly/k;->g:Ljava/lang/String;

    iget v1, p0, Ly/k;->h:I

    iput v1, v0, Ly/k;->h:I

    iget v1, p0, Ly/k;->i:I

    iput v1, v0, Ly/k;->i:I

    iget-object v1, p0, Ly/k;->j:Landroid/view/View;

    iput-object v1, v0, Ly/k;->j:Landroid/view/View;

    iget v1, p0, Ly/k;->k:F

    iput v1, v0, Ly/k;->k:F

    iget-boolean v1, p0, Ly/k;->l:Z

    iput-boolean v1, v0, Ly/k;->l:Z

    iget-boolean v1, p0, Ly/k;->m:Z

    iput-boolean v1, v0, Ly/k;->m:Z

    iget-boolean v1, p0, Ly/k;->n:Z

    iput-boolean v1, v0, Ly/k;->n:Z

    iget v1, p0, Ly/k;->o:F

    iput v1, v0, Ly/k;->o:F

    iget v1, p0, Ly/k;->p:F

    iput v1, v0, Ly/k;->p:F

    iget-boolean v1, p0, Ly/k;->q:Z

    iput-boolean v1, v0, Ly/k;->q:Z

    iget-object v1, p0, Ly/k;->u:Landroid/graphics/RectF;

    iput-object v1, v0, Ly/k;->u:Landroid/graphics/RectF;

    iget-object v1, p0, Ly/k;->v:Landroid/graphics/RectF;

    iput-object v1, v0, Ly/k;->v:Landroid/graphics/RectF;

    iget-object v1, p0, Ly/k;->w:Ljava/util/HashMap;

    iput-object v1, v0, Ly/k;->w:Ljava/util/HashMap;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ly/k;->b()Ly/d;

    move-result-object v0

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

    sget-object v0, Lz/d;->KeyTrigger:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget-object p2, Ly/k$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p2, :cond_cf

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget-object v2, Ly/k$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    packed-switch v2, :pswitch_data_d0

    :pswitch_1c  #0x3
    const-string v2, "unused attribute 0x"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ly/k$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyTrigger"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cb

    :pswitch_42  #0xe
    iget v2, p0, Ly/k;->s:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ly/k;->s:I

    goto/16 :goto_cb

    :pswitch_4c  #0xd
    iget v2, p0, Ly/k;->r:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ly/k;->r:I

    goto/16 :goto_cb

    :pswitch_56  #0xc
    iget v2, p0, Ly/k;->t:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ly/k;->t:I

    goto/16 :goto_cb

    :pswitch_60  #0xb
    iget v2, p0, Ly/k;->e:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ly/k;->e:I

    goto :goto_cb

    :pswitch_69  #0xa
    iget-boolean v2, p0, Ly/k;->q:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Ly/k;->q:Z

    goto :goto_cb

    :pswitch_72  #0x9
    iget v2, p0, Ly/k;->i:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ly/k;->i:I

    goto :goto_cb

    :pswitch_7b  #0x8
    iget v2, p0, Ly/d;->a:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Ly/d;->a:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr v1, v2

    iput v1, p0, Ly/k;->o:F

    goto :goto_cb

    :pswitch_8d  #0x7
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9c

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto :goto_cb

    :cond_9c
    iget v2, p0, Ly/d;->b:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ly/d;->b:I

    goto :goto_cb

    :pswitch_a5  #0x6
    iget v2, p0, Ly/k;->h:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ly/k;->h:I

    goto :goto_cb

    :pswitch_ae  #0x5
    iget v2, p0, Ly/k;->k:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/k;->k:F

    goto :goto_cb

    :pswitch_b7  #0x4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ly/k;->d:Ljava/lang/String;

    goto :goto_cb

    :pswitch_be  #0x2
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ly/k;->g:Ljava/lang/String;

    goto :goto_cb

    :pswitch_c5  #0x1
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ly/k;->f:Ljava/lang/String;

    :goto_cb
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    :cond_cf
    return-void

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

    iget v0, p0, Ly/k;->i:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_60

    iget-object v0, p0, Ly/k;->j:Landroid/view/View;

    if-nez v0, :cond_19

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v4, p0, Ly/k;->i:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ly/k;->j:Landroid/view/View;

    :cond_19
    iget-object v0, p0, Ly/k;->u:Landroid/graphics/RectF;

    iget-object v4, p0, Ly/k;->j:Landroid/view/View;

    iget-boolean v5, p0, Ly/k;->q:Z

    invoke-static {v0, v4, v5}, Ly/k;->i(Landroid/graphics/RectF;Landroid/view/View;Z)V

    iget-object v0, p0, Ly/k;->v:Landroid/graphics/RectF;

    iget-boolean v4, p0, Ly/k;->q:Z

    invoke-static {v0, p2, v4}, Ly/k;->i(Landroid/graphics/RectF;Landroid/view/View;Z)V

    iget-object v0, p0, Ly/k;->u:Landroid/graphics/RectF;

    iget-object v4, p0, Ly/k;->v:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Ly/k;->l:Z

    if-eqz v0, :cond_3b

    iput-boolean v2, p0, Ly/k;->l:Z

    move v0, v3

    goto :goto_3c

    :cond_3b
    move v0, v2

    :goto_3c
    iget-boolean v4, p0, Ly/k;->n:Z

    if-eqz v4, :cond_44

    iput-boolean v2, p0, Ly/k;->n:Z

    move v4, v3

    goto :goto_45

    :cond_44
    move v4, v2

    :goto_45
    iput-boolean v3, p0, Ly/k;->m:Z

    move v5, v2

    goto/16 :goto_da

    :cond_4a
    iget-boolean v0, p0, Ly/k;->l:Z

    if-nez v0, :cond_52

    iput-boolean v3, p0, Ly/k;->l:Z

    move v0, v3

    goto :goto_53

    :cond_52
    move v0, v2

    :goto_53
    iget-boolean v4, p0, Ly/k;->m:Z

    if-eqz v4, :cond_5b

    iput-boolean v2, p0, Ly/k;->m:Z

    move v4, v3

    goto :goto_5c

    :cond_5b
    move v4, v2

    :goto_5c
    iput-boolean v3, p0, Ly/k;->n:Z

    goto/16 :goto_d8

    :cond_60
    iget-boolean v0, p0, Ly/k;->l:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_75

    iget v0, p0, Ly/k;->o:F

    sub-float v5, p1, v0

    iget v6, p0, Ly/k;->p:F

    sub-float/2addr v6, v0

    mul-float/2addr v6, v5

    cmpg-float v0, v6, v4

    if-gez v0, :cond_85

    iput-boolean v2, p0, Ly/k;->l:Z

    move v0, v3

    goto :goto_86

    :cond_75
    iget v0, p0, Ly/k;->o:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Ly/k;->k:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_85

    iput-boolean v3, p0, Ly/k;->l:Z

    :cond_85
    move v0, v2

    :goto_86
    iget-boolean v5, p0, Ly/k;->m:Z

    if-eqz v5, :cond_9e

    iget v5, p0, Ly/k;->o:F

    sub-float v6, p1, v5

    iget v7, p0, Ly/k;->p:F

    sub-float/2addr v7, v5

    mul-float/2addr v7, v6

    cmpg-float v5, v7, v4

    if-gez v5, :cond_ae

    cmpg-float v5, v6, v4

    if-gez v5, :cond_ae

    iput-boolean v2, p0, Ly/k;->m:Z

    move v5, v3

    goto :goto_af

    :cond_9e
    iget v5, p0, Ly/k;->o:F

    sub-float v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Ly/k;->k:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_ae

    iput-boolean v3, p0, Ly/k;->m:Z

    :cond_ae
    move v5, v2

    :goto_af
    iget-boolean v6, p0, Ly/k;->n:Z

    if-eqz v6, :cond_c7

    iget v6, p0, Ly/k;->o:F

    sub-float v7, p1, v6

    iget v8, p0, Ly/k;->p:F

    sub-float/2addr v8, v6

    mul-float/2addr v8, v7

    cmpg-float v6, v8, v4

    if-gez v6, :cond_d9

    cmpl-float v4, v7, v4

    if-lez v4, :cond_d9

    iput-boolean v2, p0, Ly/k;->n:Z

    move v4, v3

    goto :goto_da

    :cond_c7
    iget v4, p0, Ly/k;->o:F

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Ly/k;->k:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_d7

    iput-boolean v3, p0, Ly/k;->n:Z

    :cond_d7
    move v4, v5

    :goto_d8
    move v5, v4

    :cond_d9
    move v4, v2

    :goto_da
    iput p1, p0, Ly/k;->p:F

    if-nez v5, :cond_e2

    if-nez v0, :cond_e2

    if-eqz v4, :cond_107

    :cond_e2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v6, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-eqz v6, :cond_ef

    invoke-interface {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c()V

    :cond_ef
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_107

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_107

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    invoke-interface {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c()V

    goto :goto_f7

    :cond_107
    iget p1, p0, Ly/k;->e:I

    if-ne p1, v1, :cond_10d

    move-object p1, p2

    goto :goto_119

    :cond_10d
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v6, p0, Ly/k;->e:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_119
    if-eqz v5, :cond_135

    iget-object v5, p0, Ly/k;->f:Ljava/lang/String;

    if-eqz v5, :cond_122

    invoke-virtual {p0, p1, v5}, Ly/k;->h(Landroid/view/View;Ljava/lang/String;)V

    :cond_122
    iget v5, p0, Ly/k;->r:I

    if-eq v5, v1, :cond_135

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v6, p0, Ly/k;->r:I

    new-array v7, v3, [Landroid/view/View;

    aput-object p1, v7, v2

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->k(I[Landroid/view/View;)V

    :cond_135
    if-eqz v4, :cond_151

    iget-object v4, p0, Ly/k;->g:Ljava/lang/String;

    if-eqz v4, :cond_13e

    invoke-virtual {p0, p1, v4}, Ly/k;->h(Landroid/view/View;Ljava/lang/String;)V

    :cond_13e
    iget v4, p0, Ly/k;->s:I

    if-eq v4, v1, :cond_151

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, p0, Ly/k;->s:I

    new-array v6, v3, [Landroid/view/View;

    aput-object p1, v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->k(I[Landroid/view/View;)V

    :cond_151
    if-eqz v0, :cond_16d

    iget-object v0, p0, Ly/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_15a

    invoke-virtual {p0, p1, v0}, Ly/k;->h(Landroid/view/View;Ljava/lang/String;)V

    :cond_15a
    iget v0, p0, Ly/k;->t:I

    if-eq v0, v1, :cond_16d

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, p0, Ly/k;->t:I

    new-array v1, v3, [Landroid/view/View;

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->k(I[Landroid/view/View;)V

    :cond_16d
    return-void
.end method

.method public final h(Landroid/view/View;Ljava/lang/String;)V
    .registers 16

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_195

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    if-nez v0, :cond_22

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    :cond_22
    iget-object v3, p0, Ly/d;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_194

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_46

    invoke-virtual {v5, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    :cond_46
    iget-object v5, p0, Ly/d;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v4, :cond_2c

    const-string v5, "\" not found on "

    const-string v6, " Custom Attribute \""

    const-string v7, "TransitionLayout"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    iget-object v9, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->b:Ljava/lang/String;

    iget-boolean v10, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->a:Z

    if-nez v10, :cond_67

    const-string v10, "set"

    invoke-static {v10, v9}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_68

    :cond_67
    move-object v10, v9

    :goto_68
    :try_start_68
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintAttribute$a;->a:[I

    iget-object v12, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->c:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_226

    goto :goto_2c

    :pswitch_76  #0x8
    new-array v11, v2, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v1

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v2, [Ljava/lang/Object;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->e:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v12, v1

    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :pswitch_8e  #0x7
    new-array v11, v2, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v1

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v2, [Ljava/lang/Object;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->e:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v12, v1

    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :pswitch_a6  #0x5
    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Landroid/graphics/drawable/Drawable;

    aput-object v12, v11, v1

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->h:I

    invoke-virtual {v12, v4}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v12, v4, v1

    invoke-virtual {v11, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :pswitch_c3  #0x4
    new-array v11, v2, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v1

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v2, [Ljava/lang/Object;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v1

    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :pswitch_dc  #0x3
    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Ljava/lang/CharSequence;

    aput-object v12, v11, v1

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v2, [Ljava/lang/Object;

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->f:Ljava/lang/String;

    aput-object v4, v12, v1

    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :pswitch_f1  #0x2
    new-array v11, v2, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v1

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v2, [Ljava/lang/Object;

    iget-boolean v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->g:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v12, v1

    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :pswitch_10a  #0x1, 0x6
    new-array v11, v2, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v1

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v2, [Ljava/lang/Object;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v1

    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_121
    .catch Ljava/lang/NoSuchMethodException; {:try_start_68 .. :try_end_121} :catch_153
    .catch Ljava/lang/IllegalAccessException; {:try_start_68 .. :try_end_121} :catch_13b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_68 .. :try_end_121} :catch_123

    goto/16 :goto_2c

    :catch_123
    move-exception v4

    invoke-static {v6, v9, v5}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2c

    :catch_13b
    move-exception v4

    invoke-static {v6, v9, v5}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2c

    :catch_153
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must have a method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    :cond_194
    return-void

    :cond_195
    iget-object v0, p0, Ly/k;->w:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1a9

    iget-object v0, p0, Ly/k;->w:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1aa

    return-void

    :cond_1a9
    move-object v0, v2

    :cond_1aa
    const-string v3, " "

    const-string v4, "\"on class "

    const-string v5, "KeyTrigger"

    if-nez v0, :cond_1f4

    :try_start_1b2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v6, p0, Ly/k;->w:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b2 .. :try_end_1c1} :catch_1c2

    goto :goto_1f4

    :catch_1c2
    iget-object v0, p0, Ly/k;->w:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find method \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ly/a;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f4
    :goto_1f4
    :try_start_1f4
    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_1f9} :catch_1fa

    goto :goto_224

    :catch_1fa
    const-string p2, "Exception in call \""

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Ly/k;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ly/a;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_224
    return-void

    nop

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
