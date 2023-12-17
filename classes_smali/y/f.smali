.class public final Ly/f;
.super Ly/d;
.source "KeyCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/f$a;
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ly/d;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ly/f;->d:I

    const/4 v0, -0x1

    iput v0, p0, Ly/f;->e:I

    const/4 v1, 0x0

    iput-object v1, p0, Ly/f;->f:Ljava/lang/String;

    const/high16 v1, 0x7fc00000  # Float.NaN

    iput v1, p0, Ly/f;->g:F

    const/4 v2, 0x0

    iput v2, p0, Ly/f;->h:F

    iput v2, p0, Ly/f;->i:F

    iput v1, p0, Ly/f;->j:F

    iput v0, p0, Ly/f;->k:I

    iput v1, p0, Ly/f;->l:F

    iput v1, p0, Ly/f;->m:F

    iput v1, p0, Ly/f;->n:F

    iput v1, p0, Ly/f;->o:F

    iput v1, p0, Ly/f;->p:F

    iput v1, p0, Ly/f;->q:F

    iput v1, p0, Ly/f;->r:F

    iput v1, p0, Ly/f;->s:F

    iput v1, p0, Ly/f;->t:F

    iput v1, p0, Ly/f;->u:F

    iput v1, p0, Ly/f;->v:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "add "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const-string v4, " "

    move-object v5, v4

    :goto_2a
    if-gt v3, v2, :cond_7e

    aget-object v6, v1, v3

    const-string v6, ".("

    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KeyCycle"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_7e
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_86
    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/j;

    if-nez v2, :cond_9b

    goto :goto_86

    :cond_9b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1f8

    goto/16 :goto_156

    :sswitch_ab
    const-string v4, "wavePhase"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b5

    goto/16 :goto_156

    :cond_b5
    const/16 v3, 0xd

    goto/16 :goto_156

    :sswitch_b9
    const-string v4, "waveOffset"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c3

    goto/16 :goto_156

    :cond_c3
    const/16 v3, 0xc

    goto/16 :goto_156

    :sswitch_c7
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d1

    goto/16 :goto_156

    :cond_d1
    const/16 v3, 0xb

    goto/16 :goto_156

    :sswitch_d5
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_df

    goto/16 :goto_156

    :cond_df
    const/16 v3, 0xa

    goto/16 :goto_156

    :sswitch_e3
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ed

    goto/16 :goto_156

    :cond_ed
    const/16 v3, 0x9

    goto/16 :goto_156

    :sswitch_f1
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fb

    goto/16 :goto_156

    :cond_fb
    const/16 v3, 0x8

    goto/16 :goto_156

    :sswitch_ff
    const-string v4, "scaleY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_108

    goto :goto_156

    :cond_108
    const/4 v3, 0x7

    goto :goto_156

    :sswitch_10a
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_113

    goto :goto_156

    :cond_113
    const/4 v3, 0x6

    goto :goto_156

    :sswitch_115
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11e

    goto :goto_156

    :cond_11e
    const/4 v3, 0x5

    goto :goto_156

    :sswitch_120
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_129

    goto :goto_156

    :cond_129
    const/4 v3, 0x4

    goto :goto_156

    :sswitch_12b
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_134

    goto :goto_156

    :cond_134
    const/4 v3, 0x3

    goto :goto_156

    :sswitch_136
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13f

    goto :goto_156

    :cond_13f
    const/4 v3, 0x2

    goto :goto_156

    :sswitch_141
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14a

    goto :goto_156

    :cond_14a
    const/4 v3, 0x1

    goto :goto_156

    :sswitch_14c
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_155

    goto :goto_156

    :cond_155
    const/4 v3, 0x0

    :goto_156
    packed-switch v3, :pswitch_data_232

    const-string v2, "CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_86

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  UNKNOWN  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WARNING KeyCycle"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_86

    :pswitch_179  #0xd
    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/f;->i:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_86

    :pswitch_182  #0xc
    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/f;->h:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_86

    :pswitch_18b  #0xb
    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/f;->l:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_86

    :pswitch_194  #0xa
    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/f;->o:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_86

    :pswitch_19d  #0x9
    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/f;->m:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_86

    :pswitch_1a6  #0x8
    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/f;->n:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_86

    :pswitch_1af  #0x7
    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/f;->s:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_86

    :pswitch_1b8  #0x6
    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/f;->r:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_86

    :pswitch_1c1  #0x5
    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/f;->j:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_86

    :pswitch_1ca  #0x4
    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/f;->v:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_86

    :pswitch_1d3  #0x3
    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/f;->u:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_86

    :pswitch_1dc  #0x2
    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/f;->t:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_86

    :pswitch_1e5  #0x1
    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/f;->q:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_86

    :pswitch_1ee  #0x0
    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/f;->p:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_86

    :cond_1f7
    return-void

    :sswitch_data_1f8
    .sparse-switch
        -0x4a771f66 -> :sswitch_14c
        -0x4a771f65 -> :sswitch_141
        -0x490b9c39 -> :sswitch_136
        -0x490b9c38 -> :sswitch_12b
        -0x490b9c37 -> :sswitch_120
        -0x3bab3dd3 -> :sswitch_115
        -0x3621dfb2 -> :sswitch_10a
        -0x3621dfb1 -> :sswitch_ff
        -0x266f082 -> :sswitch_f1
        -0x42d1a3 -> :sswitch_e3
        0x2382115 -> :sswitch_d5
        0x589b15e -> :sswitch_c7
        0x94e04ec -> :sswitch_b9
        0x5b327a02 -> :sswitch_ab
    .end sparse-switch

    :pswitch_data_232
    .packed-switch 0x0
        :pswitch_1ee  #00000000
        :pswitch_1e5  #00000001
        :pswitch_1dc  #00000002
        :pswitch_1d3  #00000003
        :pswitch_1ca  #00000004
        :pswitch_1c1  #00000005
        :pswitch_1b8  #00000006
        :pswitch_1af  #00000007
        :pswitch_1a6  #00000008
        :pswitch_19d  #00000009
        :pswitch_194  #0000000a
        :pswitch_18b  #0000000b
        :pswitch_182  #0000000c
        :pswitch_179  #0000000d
    .end packed-switch
.end method

.method public final b()Ly/d;
    .registers 3

    new-instance v0, Ly/f;

    invoke-direct {v0}, Ly/f;-><init>()V

    invoke-super {v0, p0}, Ly/d;->c(Ly/d;)Ly/d;

    iget v1, p0, Ly/f;->d:I

    iput v1, v0, Ly/f;->d:I

    iget v1, p0, Ly/f;->e:I

    iput v1, v0, Ly/f;->e:I

    iget-object v1, p0, Ly/f;->f:Ljava/lang/String;

    iput-object v1, v0, Ly/f;->f:Ljava/lang/String;

    iget v1, p0, Ly/f;->g:F

    iput v1, v0, Ly/f;->g:F

    iget v1, p0, Ly/f;->h:F

    iput v1, v0, Ly/f;->h:F

    iget v1, p0, Ly/f;->i:F

    iput v1, v0, Ly/f;->i:F

    iget v1, p0, Ly/f;->j:F

    iput v1, v0, Ly/f;->j:F

    iget v1, p0, Ly/f;->k:I

    iput v1, v0, Ly/f;->k:I

    iget v1, p0, Ly/f;->l:F

    iput v1, v0, Ly/f;->l:F

    iget v1, p0, Ly/f;->m:F

    iput v1, v0, Ly/f;->m:F

    iget v1, p0, Ly/f;->n:F

    iput v1, v0, Ly/f;->n:F

    iget v1, p0, Ly/f;->o:F

    iput v1, v0, Ly/f;->o:F

    iget v1, p0, Ly/f;->p:F

    iput v1, v0, Ly/f;->p:F

    iget v1, p0, Ly/f;->q:F

    iput v1, v0, Ly/f;->q:F

    iget v1, p0, Ly/f;->r:F

    iput v1, v0, Ly/f;->r:F

    iget v1, p0, Ly/f;->s:F

    iput v1, v0, Ly/f;->s:F

    iget v1, p0, Ly/f;->t:F

    iput v1, v0, Ly/f;->t:F

    iget v1, p0, Ly/f;->u:F

    iput v1, v0, Ly/f;->u:F

    iget v1, p0, Ly/f;->v:F

    iput v1, v0, Ly/f;->v:F

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ly/f;->b()Ly/d;

    move-result-object v0

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

    iget v0, p0, Ly/f;->l:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v0, p0, Ly/f;->m:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1a
    iget v0, p0, Ly/f;->n:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_27
    iget v0, p0, Ly/f;->p:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_34
    iget v0, p0, Ly/f;->q:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_41
    iget v0, p0, Ly/f;->r:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4e
    iget v0, p0, Ly/f;->s:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5b
    iget v0, p0, Ly/f;->o:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_68
    iget v0, p0, Ly/f;->t:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_75
    iget v0, p0, Ly/f;->u:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_82
    iget v0, p0, Ly/f;->v:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8f

    const-string v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8f
    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_c2

    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    :cond_c2
    return-void
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    sget-object v0, Lz/d;->KeyCycle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget-object p2, Ly/f$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p2, :cond_141

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget-object v2, Ly/f$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x3

    packed-switch v2, :pswitch_data_142

    const-string v2, "unused attribute 0x"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ly/f$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyCycle"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13d

    :pswitch_43  #0x15
    iget v2, p0, Ly/f;->i:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/high16 v2, 0x43b40000  # 360.0f

    div-float/2addr v1, v2

    iput v1, p0, Ly/f;->i:F

    goto/16 :goto_13d

    :pswitch_50  #0x14
    iget v2, p0, Ly/f;->j:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/f;->j:F

    goto/16 :goto_13d

    :pswitch_5a  #0x13
    iget v2, p0, Ly/f;->v:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Ly/f;->v:F

    goto/16 :goto_13d

    :pswitch_64  #0x12
    iget v2, p0, Ly/f;->u:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Ly/f;->u:F

    goto/16 :goto_13d

    :pswitch_6e  #0x11
    iget v2, p0, Ly/f;->t:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Ly/f;->t:F

    goto/16 :goto_13d

    :pswitch_78  #0x10
    iget v2, p0, Ly/f;->s:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/f;->s:F

    goto/16 :goto_13d

    :pswitch_82  #0xf
    iget v2, p0, Ly/f;->r:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/f;->r:F

    goto/16 :goto_13d

    :pswitch_8c  #0xe
    iget v2, p0, Ly/f;->o:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/f;->o:F

    goto/16 :goto_13d

    :pswitch_96  #0xd
    iget v2, p0, Ly/f;->q:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/f;->q:F

    goto/16 :goto_13d

    :pswitch_a0  #0xc
    iget v2, p0, Ly/f;->p:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/f;->p:F

    goto/16 :goto_13d

    :pswitch_aa  #0xb
    iget v2, p0, Ly/f;->n:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/f;->n:F

    goto/16 :goto_13d

    :pswitch_b4  #0xa
    iget v2, p0, Ly/f;->m:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Ly/f;->m:F

    goto/16 :goto_13d

    :pswitch_be  #0x9
    iget v2, p0, Ly/f;->l:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/f;->l:F

    goto/16 :goto_13d

    :pswitch_c8  #0x8
    iget v2, p0, Ly/f;->k:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ly/f;->k:I

    goto/16 :goto_13d

    :pswitch_d2  #0x7
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_e4

    iget v2, p0, Ly/f;->h:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Ly/f;->h:F

    goto :goto_13d

    :cond_e4
    iget v2, p0, Ly/f;->h:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/f;->h:F

    goto :goto_13d

    :pswitch_ed  #0x6
    iget v2, p0, Ly/f;->g:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/f;->g:F

    goto :goto_13d

    :pswitch_f6  #0x5
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v3, :cond_108

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ly/f;->f:Ljava/lang/String;

    const/4 v1, 0x7

    iput v1, p0, Ly/f;->e:I

    goto :goto_13d

    :cond_108
    iget v2, p0, Ly/f;->e:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ly/f;->e:I

    goto :goto_13d

    :pswitch_111  #0x4
    iget v2, p0, Ly/f;->d:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Ly/f;->d:I

    goto :goto_13d

    :pswitch_11a  #0x3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto :goto_13d

    :pswitch_11e  #0x2
    iget v2, p0, Ly/d;->a:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ly/d;->a:I

    goto :goto_13d

    :pswitch_127  #0x1
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v3, :cond_135

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto :goto_13d

    :cond_135
    iget v2, p0, Ly/d;->b:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ly/d;->b:I

    :goto_13d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    :cond_141
    return-void

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_127  #00000001
        :pswitch_11e  #00000002
        :pswitch_11a  #00000003
        :pswitch_111  #00000004
        :pswitch_f6  #00000005
        :pswitch_ed  #00000006
        :pswitch_d2  #00000007
        :pswitch_c8  #00000008
        :pswitch_be  #00000009
        :pswitch_b4  #0000000a
        :pswitch_aa  #0000000b
        :pswitch_a0  #0000000c
        :pswitch_96  #0000000d
        :pswitch_8c  #0000000e
        :pswitch_82  #0000000f
        :pswitch_78  #00000010
        :pswitch_6e  #00000011
        :pswitch_64  #00000012
        :pswitch_5a  #00000013
        :pswitch_50  #00000014
        :pswitch_43  #00000015
    .end packed-switch
.end method
