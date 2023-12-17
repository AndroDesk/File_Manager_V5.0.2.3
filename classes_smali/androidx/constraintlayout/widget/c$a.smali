.class public final Landroidx/constraintlayout/widget/c$a;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/c$a$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public final c:Landroidx/constraintlayout/widget/c$d;

.field public final d:Landroidx/constraintlayout/widget/c$c;

.field public final e:Landroidx/constraintlayout/widget/c$b;

.field public final f:Landroidx/constraintlayout/widget/c$e;

.field public g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroidx/constraintlayout/widget/c$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/widget/c$d;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$d;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    new-instance v0, Landroidx/constraintlayout/widget/c$c;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$c;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    new-instance v0, Landroidx/constraintlayout/widget/c$b;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$b;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    new-instance v0, Landroidx/constraintlayout/widget/c$e;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$e;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/widget/ConstraintLayout$b;)V
    .registers 4

    iget-object v0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->i:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->j:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->k:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->l:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->m:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->n:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->o:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->p:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->q:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->r:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->s:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->t:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->u:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->v:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->w:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->G:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->H:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->I:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->J:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->S:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->A:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->R:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->B:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->O:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->x:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->Q:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->z:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->x:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->E:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->y:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->F:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->A:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->B:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->C:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r:F

    iget-object v1, v0, Landroidx/constraintlayout/widget/c$b;->z:Ljava/lang/String;

    iput-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:Ljava/lang/String;

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->D:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->E:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->U:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->V:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->X:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->K:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->W:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->J:I

    iget-boolean v1, v0, Landroidx/constraintlayout/widget/c$b;->m0:Z

    iput-boolean v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->W:Z

    iget-boolean v1, v0, Landroidx/constraintlayout/widget/c$b;->n0:Z

    iput-boolean v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:Z

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->Y:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->L:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->Z:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->M:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->a0:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->b0:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->c0:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->N:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->d0:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->O:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->e0:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->f0:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->S:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->F:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->V:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->g:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->e:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->f:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->c:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->d:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, v0, Landroidx/constraintlayout/widget/c$b;->l0:Ljava/lang/String;

    if-eqz v1, :cond_d4

    iput-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:Ljava/lang/String;

    :cond_d4
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->p0:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:I

    iget v0, v0, Landroidx/constraintlayout/widget/c$b;->L:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iget v0, v0, Landroidx/constraintlayout/widget/c$b;->K:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a()V

    return-void
.end method

.method public final b()Landroidx/constraintlayout/widget/c$a;
    .registers 5

    new-instance v0, Landroidx/constraintlayout/widget/c$a;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$a;-><init>()V

    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iget-object v2, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/c$b;->a(Landroidx/constraintlayout/widget/c$b;)V

    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    iget-object v2, p0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/c$c;->a(Landroidx/constraintlayout/widget/c$c;)V

    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    iget-object v2, p0, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v2, Landroidx/constraintlayout/widget/c$d;->a:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/c$d;->a:Z

    iget v3, v2, Landroidx/constraintlayout/widget/c$d;->b:I

    iput v3, v1, Landroidx/constraintlayout/widget/c$d;->b:I

    iget v3, v2, Landroidx/constraintlayout/widget/c$d;->d:F

    iput v3, v1, Landroidx/constraintlayout/widget/c$d;->d:F

    iget v3, v2, Landroidx/constraintlayout/widget/c$d;->e:F

    iput v3, v1, Landroidx/constraintlayout/widget/c$d;->e:F

    iget v2, v2, Landroidx/constraintlayout/widget/c$d;->c:I

    iput v2, v1, Landroidx/constraintlayout/widget/c$d;->c:I

    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    iget-object v2, p0, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/c$e;->a(Landroidx/constraintlayout/widget/c$e;)V

    iget v1, p0, Landroidx/constraintlayout/widget/c$a;->a:I

    iput v1, v0, Landroidx/constraintlayout/widget/c$a;->a:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/c$a;->h:Landroidx/constraintlayout/widget/c$a$a;

    iput-object v1, v0, Landroidx/constraintlayout/widget/c$a;->h:Landroidx/constraintlayout/widget/c$a$a;

    return-object v0
.end method

.method public final c(Landroidx/constraintlayout/widget/ConstraintLayout$b;I)V
    .registers 4

    iput p2, p0, Landroidx/constraintlayout/widget/c$a;->a:I

    iget-object p2, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->i:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->j:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->k:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->l:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->m:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->n:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->o:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->p:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->q:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->r:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->s:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->t:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->u:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->v:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->w:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->E:F

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->x:F

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->F:F

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->y:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:Ljava/lang/String;

    iput-object v0, p2, Landroidx/constraintlayout/widget/c$b;->z:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->A:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->B:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r:F

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->C:F

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->D:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->E:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->V:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->F:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->g:F

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->e:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->f:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->c:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->d:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->G:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->H:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->I:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->J:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->D:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->M:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:F

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->U:F

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->V:F

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->K:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->X:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->J:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->W:I

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->W:Z

    iput-boolean v0, p2, Landroidx/constraintlayout/widget/c$b;->m0:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:Z

    iput-boolean v0, p2, Landroidx/constraintlayout/widget/c$b;->n0:Z

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->L:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->Y:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->M:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->Z:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->a0:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->b0:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->N:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->c0:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->O:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->d0:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:F

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->e0:F

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->S:F

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->f0:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:Ljava/lang/String;

    iput-object v0, p2, Landroidx/constraintlayout/widget/c$b;->l0:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->x:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->O:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->z:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->Q:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->N:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->y:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->P:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->A:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->S:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->B:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->R:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->C:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->T:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:I

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->p0:I

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->K:I

    iget-object p2, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    iput p1, p2, Landroidx/constraintlayout/widget/c$b;->L:I

    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c$a;->b()Landroidx/constraintlayout/widget/c$a;

    move-result-object v0

    return-object v0
.end method

.method public final d(ILandroidx/constraintlayout/widget/d$a;)V
    .registers 4

    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/c$a;->c(Landroidx/constraintlayout/widget/ConstraintLayout$b;I)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->r0:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$d;->d:F

    iget-object p1, p0, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->u0:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->b:F

    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->v0:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->c:F

    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->w0:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->d:F

    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->x0:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->e:F

    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->y0:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->f:F

    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->z0:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->g:F

    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->A0:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->h:F

    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->B0:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->j:F

    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->C0:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->k:F

    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->D0:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->l:F

    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->t0:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->n:F

    iget-boolean p2, p2, Landroidx/constraintlayout/widget/d$a;->s0:Z

    iput-boolean p2, p1, Landroidx/constraintlayout/widget/c$e;->m:Z

    return-void
.end method
