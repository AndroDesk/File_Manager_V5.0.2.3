.class public final Ly/e;
.super Ly/d;
.source "KeyAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/e$a;
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

.field public q:F

.field public r:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ly/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ly/e;->d:I

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Ly/e;->e:F

    iput v0, p0, Ly/e;->f:F

    iput v0, p0, Ly/e;->g:F

    iput v0, p0, Ly/e;->h:F

    iput v0, p0, Ly/e;->i:F

    iput v0, p0, Ly/e;->j:F

    iput v0, p0, Ly/e;->k:F

    iput v0, p0, Ly/e;->l:F

    iput v0, p0, Ly/e;->m:F

    iput v0, p0, Ly/e;->n:F

    iput v0, p0, Ly/e;->o:F

    iput v0, p0, Ly/e;->p:F

    iput v0, p0, Ly/e;->q:F

    iput v0, p0, Ly/e;->r:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx/c;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/j;

    if-nez v2, :cond_1d

    goto :goto_8

    :cond_1d
    const-string v3, "CUSTOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x7

    if-eqz v3, :cond_3e

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ly/d;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v1, :cond_8

    check-cast v2, Lx/c$b;

    iget v3, p0, Ly/d;->a:I

    iget-object v2, v2, Lx/c$b;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_8

    :cond_3e
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1e4

    :goto_46
    move v4, v3

    goto/16 :goto_ef

    :sswitch_49
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    goto :goto_46

    :cond_52
    const/16 v4, 0xd

    goto/16 :goto_ef

    :sswitch_56
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    goto :goto_46

    :cond_5f
    const/16 v4, 0xc

    goto/16 :goto_ef

    :sswitch_63
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    goto :goto_46

    :cond_6c
    const/16 v4, 0xb

    goto/16 :goto_ef

    :sswitch_70
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    goto :goto_46

    :cond_79
    const/16 v4, 0xa

    goto/16 :goto_ef

    :sswitch_7d
    const-string v4, "transformPivotY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    goto :goto_46

    :cond_86
    const/16 v4, 0x9

    goto/16 :goto_ef

    :sswitch_8a
    const-string v4, "transformPivotX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_93

    goto :goto_46

    :cond_93
    const/16 v4, 0x8

    goto :goto_ef

    :sswitch_96
    const-string v5, "scaleY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ef

    goto :goto_46

    :sswitch_9f
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a8

    goto :goto_46

    :cond_a8
    const/4 v4, 0x6

    goto :goto_ef

    :sswitch_aa
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    goto :goto_46

    :cond_b3
    const/4 v4, 0x5

    goto :goto_ef

    :sswitch_b5
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_be

    goto :goto_46

    :cond_be
    const/4 v4, 0x4

    goto :goto_ef

    :sswitch_c0
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ca

    goto/16 :goto_46

    :cond_ca
    const/4 v4, 0x3

    goto :goto_ef

    :sswitch_cc
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d6

    goto/16 :goto_46

    :cond_d6
    const/4 v4, 0x2

    goto :goto_ef

    :sswitch_d8
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e2

    goto/16 :goto_46

    :cond_e2
    const/4 v4, 0x1

    goto :goto_ef

    :sswitch_e4
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ee

    goto/16 :goto_46

    :cond_ee
    const/4 v4, 0x0

    :cond_ef
    :goto_ef
    packed-switch v4, :pswitch_data_21e

    goto/16 :goto_8

    :pswitch_f4  #0xd
    iget v1, p0, Ly/e;->e:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/e;->e:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_105  #0xc
    iget v1, p0, Ly/e;->l:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/e;->l:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_116  #0xb
    iget v1, p0, Ly/e;->f:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/e;->f:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_127  #0xa
    iget v1, p0, Ly/e;->g:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/e;->g:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_138  #0x9
    iget v1, p0, Ly/e;->i:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/e;->k:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_149  #0x8
    iget v1, p0, Ly/e;->h:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/e;->j:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_15a  #0x7
    iget v1, p0, Ly/e;->n:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/e;->n:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_16b  #0x6
    iget v1, p0, Ly/e;->m:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/e;->m:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_17c  #0x5
    iget v1, p0, Ly/e;->r:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/e;->r:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_18d  #0x4
    iget v1, p0, Ly/e;->q:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/e;->q:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_19e  #0x3
    iget v1, p0, Ly/e;->p:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/e;->p:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_1af  #0x2
    iget v1, p0, Ly/e;->o:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/e;->o:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_1c0  #0x1
    iget v1, p0, Ly/e;->i:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/e;->i:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :pswitch_1d1  #0x0
    iget v1, p0, Ly/e;->h:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Ly/d;->a:I

    iget v3, p0, Ly/e;->h:F

    invoke-virtual {v2, v3, v1}, Lu/j;->b(FI)V

    goto/16 :goto_8

    :cond_1e2
    return-void

    nop

    :sswitch_data_1e4
    .sparse-switch
        -0x4a771f66 -> :sswitch_e4
        -0x4a771f65 -> :sswitch_d8
        -0x490b9c39 -> :sswitch_cc
        -0x490b9c38 -> :sswitch_c0
        -0x490b9c37 -> :sswitch_b5
        -0x3bab3dd3 -> :sswitch_aa
        -0x3621dfb2 -> :sswitch_9f
        -0x3621dfb1 -> :sswitch_96
        -0x2d5a2d1e -> :sswitch_8a
        -0x2d5a2d1d -> :sswitch_7d
        -0x266f082 -> :sswitch_70
        -0x42d1a3 -> :sswitch_63
        0x2382115 -> :sswitch_56
        0x589b15e -> :sswitch_49
    .end sparse-switch

    :pswitch_data_21e
    .packed-switch 0x0
        :pswitch_1d1  #00000000
        :pswitch_1c0  #00000001
        :pswitch_1af  #00000002
        :pswitch_19e  #00000003
        :pswitch_18d  #00000004
        :pswitch_17c  #00000005
        :pswitch_16b  #00000006
        :pswitch_15a  #00000007
        :pswitch_149  #00000008
        :pswitch_138  #00000009
        :pswitch_127  #0000000a
        :pswitch_116  #0000000b
        :pswitch_105  #0000000c
        :pswitch_f4  #0000000d
    .end packed-switch
.end method

.method public final b()Ly/d;
    .registers 3

    new-instance v0, Ly/e;

    invoke-direct {v0}, Ly/e;-><init>()V

    invoke-super {v0, p0}, Ly/d;->c(Ly/d;)Ly/d;

    iget v1, p0, Ly/e;->d:I

    iput v1, v0, Ly/e;->d:I

    iget v1, p0, Ly/e;->e:F

    iput v1, v0, Ly/e;->e:F

    iget v1, p0, Ly/e;->f:F

    iput v1, v0, Ly/e;->f:F

    iget v1, p0, Ly/e;->g:F

    iput v1, v0, Ly/e;->g:F

    iget v1, p0, Ly/e;->h:F

    iput v1, v0, Ly/e;->h:F

    iget v1, p0, Ly/e;->i:F

    iput v1, v0, Ly/e;->i:F

    iget v1, p0, Ly/e;->j:F

    iput v1, v0, Ly/e;->j:F

    iget v1, p0, Ly/e;->k:F

    iput v1, v0, Ly/e;->k:F

    iget v1, p0, Ly/e;->l:F

    iput v1, v0, Ly/e;->l:F

    iget v1, p0, Ly/e;->m:F

    iput v1, v0, Ly/e;->m:F

    iget v1, p0, Ly/e;->n:F

    iput v1, v0, Ly/e;->n:F

    iget v1, p0, Ly/e;->o:F

    iput v1, v0, Ly/e;->o:F

    iget v1, p0, Ly/e;->p:F

    iput v1, v0, Ly/e;->p:F

    iget v1, p0, Ly/e;->q:F

    iput v1, v0, Ly/e;->q:F

    iget v1, p0, Ly/e;->r:F

    iput v1, v0, Ly/e;->r:F

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ly/e;->b()Ly/d;

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

    iget v0, p0, Ly/e;->e:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v0, p0, Ly/e;->f:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1a
    iget v0, p0, Ly/e;->g:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_27
    iget v0, p0, Ly/e;->h:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_34
    iget v0, p0, Ly/e;->i:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_41
    iget v0, p0, Ly/e;->j:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "transformPivotX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4e
    iget v0, p0, Ly/e;->k:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "transformPivotY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5b
    iget v0, p0, Ly/e;->o:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_68
    iget v0, p0, Ly/e;->p:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_75
    iget v0, p0, Ly/e;->q:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_82
    iget v0, p0, Ly/e;->l:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8f

    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8f
    iget v0, p0, Ly/e;->m:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9c

    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9c
    iget v0, p0, Ly/e;->n:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a9

    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a9
    iget v0, p0, Ly/e;->r:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b6
    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_e9

    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e9

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

    goto :goto_c8

    :cond_e9
    return-void
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    sget-object v0, Lz/d;->KeyAttribute:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget-object p2, Ly/e$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p2, :cond_f8

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget-object v2, Ly/e$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    packed-switch v2, :pswitch_data_fa

    :pswitch_1c  #0x3, 0xb
    const-string v2, "unused attribute 0x"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ly/e$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyAttribute"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f4

    :pswitch_42  #0x14
    iget v2, p0, Ly/e;->k:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Ly/e;->k:F

    goto/16 :goto_f4

    :pswitch_4c  #0x13
    iget v2, p0, Ly/e;->j:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Ly/e;->j:F

    goto/16 :goto_f4

    :pswitch_56  #0x12
    iget v2, p0, Ly/e;->r:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/e;->r:F

    goto/16 :goto_f4

    :pswitch_60  #0x11
    iget v2, p0, Ly/e;->q:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Ly/e;->q:F

    goto/16 :goto_f4

    :pswitch_6a  #0x10
    iget v2, p0, Ly/e;->p:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Ly/e;->p:F

    goto/16 :goto_f4

    :pswitch_74  #0xf
    iget v2, p0, Ly/e;->o:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Ly/e;->o:F

    goto/16 :goto_f4

    :pswitch_7e  #0xe
    iget v2, p0, Ly/e;->n:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/e;->n:F

    goto/16 :goto_f4

    :pswitch_88  #0xd
    iget v2, p0, Ly/e;->d:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Ly/e;->d:I

    goto :goto_f4

    :pswitch_91  #0xc
    iget v2, p0, Ly/d;->a:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ly/d;->a:I

    goto :goto_f4

    :pswitch_9a  #0xa
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a9

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto :goto_f4

    :cond_a9
    iget v2, p0, Ly/d;->b:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ly/d;->b:I

    goto :goto_f4

    :pswitch_b2  #0x9
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto :goto_f4

    :pswitch_b6  #0x8
    iget v2, p0, Ly/e;->l:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/e;->l:F

    goto :goto_f4

    :pswitch_bf  #0x7
    iget v2, p0, Ly/e;->m:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/e;->m:F

    goto :goto_f4

    :pswitch_c8  #0x6
    iget v2, p0, Ly/e;->i:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/e;->i:F

    goto :goto_f4

    :pswitch_d1  #0x5
    iget v2, p0, Ly/e;->h:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/e;->h:F

    goto :goto_f4

    :pswitch_da  #0x4
    iget v2, p0, Ly/e;->g:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/e;->g:F

    goto :goto_f4

    :pswitch_e3  #0x2
    iget v2, p0, Ly/e;->f:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Ly/e;->f:F

    goto :goto_f4

    :pswitch_ec  #0x1
    iget v2, p0, Ly/e;->e:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ly/e;->e:F

    :goto_f4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    :cond_f8
    return-void

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_ec  #00000001
        :pswitch_e3  #00000002
        :pswitch_1c  #00000003
        :pswitch_da  #00000004
        :pswitch_d1  #00000005
        :pswitch_c8  #00000006
        :pswitch_bf  #00000007
        :pswitch_b6  #00000008
        :pswitch_b2  #00000009
        :pswitch_9a  #0000000a
        :pswitch_1c  #0000000b
        :pswitch_91  #0000000c
        :pswitch_88  #0000000d
        :pswitch_7e  #0000000e
        :pswitch_74  #0000000f
        :pswitch_6a  #00000010
        :pswitch_60  #00000011
        :pswitch_56  #00000012
        :pswitch_4c  #00000013
        :pswitch_42  #00000014
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

    iget v0, p0, Ly/e;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    iget v0, p0, Ly/e;->e:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_19

    iget v0, p0, Ly/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget v0, p0, Ly/e;->f:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2c

    iget v0, p0, Ly/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "elevation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    iget v0, p0, Ly/e;->g:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3f

    iget v0, p0, Ly/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    iget v0, p0, Ly/e;->h:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_52

    iget v0, p0, Ly/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    iget v0, p0, Ly/e;->i:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_65

    iget v0, p0, Ly/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    iget v0, p0, Ly/e;->j:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_78

    iget v0, p0, Ly/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transformPivotX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    iget v0, p0, Ly/e;->k:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8b

    iget v0, p0, Ly/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transformPivotY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8b
    iget v0, p0, Ly/e;->o:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9e

    iget v0, p0, Ly/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9e
    iget v0, p0, Ly/e;->p:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b1

    iget v0, p0, Ly/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b1
    iget v0, p0, Ly/e;->q:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c4

    iget v0, p0, Ly/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationZ"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c4
    iget v0, p0, Ly/e;->l:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d7

    iget v0, p0, Ly/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transitionPathRotate"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d7
    iget v0, p0, Ly/e;->m:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_ea

    iget v0, p0, Ly/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ea
    iget v0, p0, Ly/e;->n:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_fd

    iget v0, p0, Ly/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fd
    iget v0, p0, Ly/e;->r:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_110

    iget v0, p0, Ly/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_110
    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_13e

    iget-object v0, p0, Ly/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_122
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "CUSTOM,"

    invoke-static {v2, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ly/e;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_122

    :cond_13e
    return-void
.end method
