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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;Landroid/content/res/Resources;)V
    .registers 8

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;

    const/4 p2, 0x0

    if-eqz p3, :cond_16

    move-object v2, p3

    goto :goto_1c

    :cond_16
    if-eqz p1, :cond_1b

    iget-object v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    goto :goto_1c

    :cond_1b
    move-object v2, p2

    :goto_1c
    iput-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    if-eqz p1, :cond_23

    iget v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    goto :goto_24

    :cond_23
    move v2, v0

    :goto_24
    sget v3, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->m:I

    if-nez p3, :cond_29

    goto :goto_2f

    :cond_29
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget v2, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_2f
    if-nez v2, :cond_33

    const/16 v2, 0xa0

    :cond_33
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    if-eqz p1, :cond_f4

    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->v:Z

    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->w:Z

    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->y:I

    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->y:I

    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->B:Z

    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->B:Z

    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->C:Landroid/graphics/ColorFilter;

    iput-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->C:Landroid/graphics/ColorFilter;

    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->D:Z

    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->D:Z

    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->E:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->E:Landroid/content/res/ColorStateList;

    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->F:Landroid/graphics/PorterDuff$Mode;

    iput-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->F:Landroid/graphics/PorterDuff$Mode;

    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->G:Z

    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->G:Z

    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->H:Z

    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->H:Z

    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    if-ne p3, v2, :cond_a4

    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    if-eqz p3, :cond_8e

    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    if-eqz p3, :cond_8a

    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_8a
    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    :cond_8e
    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    if-eqz p2, :cond_a4

    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    :cond_a4
    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->r:Z

    if-eqz p2, :cond_ae

    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->s:I

    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->s:I

    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->r:Z

    :cond_ae
    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->t:Z

    if-eqz p2, :cond_b8

    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->u:Z

    iput-boolean p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->u:Z

    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->t:Z

    :cond_b8
    iget-object p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    array-length p3, p2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    iget-object p1, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    if-eqz p1, :cond_ce

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    goto :goto_d7

    :cond_ce
    new-instance p1, Landroid/util/SparseArray;

    iget p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    :goto_d7
    iget p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    :goto_d9
    if-ge v0, p1, :cond_fc

    aget-object p3, p2, v0

    if-eqz p3, :cond_f1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    if-eqz p3, :cond_eb

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_f1

    :cond_eb
    iget-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    aget-object v1, p2, v0

    aput-object v1, p3, v0

    :cond_f1
    :goto_f1
    add-int/lit8 v0, v0, 0x1

    goto :goto_d9

    :cond_f4
    const/16 p1, 0xa

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    :cond_fc
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b()V

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    const/4 v2, 0x0

    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    :goto_14
    if-ge v2, v0, :cond_43

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    if-le v4, v5, :cond_22

    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    :cond_22
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    if-le v4, v5, :cond_2c

    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    :cond_2c
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    if-le v4, v5, :cond_36

    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    :cond_36
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    iget v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    if-le v3, v4, :cond_40

    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_43
    return-void
.end method

.method public final b()V
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_34

    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->y:I

    invoke-static {v3, v5}, Lg0/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_34
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    :cond_37
    return-void
.end method

.method public final c(I)Landroid/graphics/drawable/Drawable;
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_42

    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->y:I

    invoke-static {v2, v3}, Lg0/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, p1

    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_41

    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    :cond_41
    return-object v2

    :cond_42
    return-object v1
.end method

.method public final canApplyTheme()Z
    .registers 7

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_28

    aget-object v4, v1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_14

    invoke-static {v4}, Lg0/a$b;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_25

    return v5

    :cond_14
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v4, :cond_25

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_25

    return v5

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_28
    return v2
.end method

.method public abstract d()V
.end method

.method public final getChangingConfigurations()I
    .registers 3

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    or-int/2addr v0, v1

    return v0
.end method
