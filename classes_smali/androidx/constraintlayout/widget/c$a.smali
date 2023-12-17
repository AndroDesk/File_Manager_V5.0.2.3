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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/constraintlayout/widget/c$d;

    .line 6
    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$d;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    .line 11
    new-instance v0, Landroidx/constraintlayout/widget/c$c;

    .line 13
    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$c;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    .line 18
    new-instance v0, Landroidx/constraintlayout/widget/c$b;

    .line 20
    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$b;-><init>()V

    .line 23
    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 25
    new-instance v0, Landroidx/constraintlayout/widget/c$e;

    .line 27
    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$e;-><init>()V

    .line 30
    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/widget/ConstraintLayout$b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 3
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->i:I

    .line 5
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    .line 7
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->j:I

    .line 9
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    .line 11
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->k:I

    .line 13
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 15
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->l:I

    .line 17
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:I

    .line 19
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->m:I

    .line 21
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 23
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->n:I

    .line 25
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    .line 27
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->o:I

    .line 29
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    .line 31
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->p:I

    .line 33
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 35
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->q:I

    .line 37
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m:I

    .line 39
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->r:I

    .line 41
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n:I

    .line 43
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->s:I

    .line 45
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o:I

    .line 47
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->t:I

    .line 49
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    .line 51
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->u:I

    .line 53
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 55
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->v:I

    .line 57
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    .line 59
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->w:I

    .line 61
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 63
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->G:I

    .line 65
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 67
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->H:I

    .line 69
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 71
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->I:I

    .line 73
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 75
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->J:I

    .line 77
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 79
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->S:I

    .line 81
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->A:I

    .line 83
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->R:I

    .line 85
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->B:I

    .line 87
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->O:I

    .line 89
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->x:I

    .line 91
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->Q:I

    .line 93
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->z:I

    .line 95
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->x:F

    .line 97
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->E:F

    .line 99
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->y:F

    .line 101
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->F:F

    .line 103
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->A:I

    .line 105
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p:I

    .line 107
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->B:I

    .line 109
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q:I

    .line 111
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->C:F

    .line 113
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r:F

    .line 115
    iget-object v1, v0, Landroidx/constraintlayout/widget/c$b;->z:Ljava/lang/String;

    .line 117
    iput-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:Ljava/lang/String;

    .line 119
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->D:I

    .line 121
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:I

    .line 123
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->E:I

    .line 125
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    .line 127
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->U:F

    .line 129
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:F

    .line 131
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->V:F

    .line 133
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    .line 135
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->X:I

    .line 137
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->K:I

    .line 139
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->W:I

    .line 141
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->J:I

    .line 143
    iget-boolean v1, v0, Landroidx/constraintlayout/widget/c$b;->m0:Z

    .line 145
    iput-boolean v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->W:Z

    .line 147
    iget-boolean v1, v0, Landroidx/constraintlayout/widget/c$b;->n0:Z

    .line 149
    iput-boolean v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:Z

    .line 151
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->Y:I

    .line 153
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->L:I

    .line 155
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->Z:I

    .line 157
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->M:I

    .line 159
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->a0:I

    .line 161
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    .line 163
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->b0:I

    .line 165
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    .line 167
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->c0:I

    .line 169
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->N:I

    .line 171
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->d0:I

    .line 173
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->O:I

    .line 175
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->e0:F

    .line 177
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:F

    .line 179
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->f0:F

    .line 181
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->S:F

    .line 183
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->F:I

    .line 185
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->V:I

    .line 187
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->g:F

    .line 189
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F

    .line 191
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->e:I

    .line 193
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I

    .line 195
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->f:I

    .line 197
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    .line 199
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->c:I

    .line 201
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 203
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->d:I

    .line 205
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 207
    iget-object v1, v0, Landroidx/constraintlayout/widget/c$b;->l0:Ljava/lang/String;

    .line 209
    if-eqz v1, :cond_d4

    .line 211
    iput-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:Ljava/lang/String;

    .line 213
    :cond_d4
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->p0:I

    .line 215
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:I

    .line 217
    iget v0, v0, Landroidx/constraintlayout/widget/c$b;->L:I

    .line 219
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 222
    iget-object v0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 224
    iget v0, v0, Landroidx/constraintlayout/widget/c$b;->K:I

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 229
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a()V

    .line 232
    return-void
.end method

.method public final b()Landroidx/constraintlayout/widget/c$a;
    .registers 5

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/c$a;

    .line 3
    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$a;-><init>()V

    .line 6
    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 8
    iget-object v2, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 10
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/c$b;->a(Landroidx/constraintlayout/widget/c$b;)V

    .line 13
    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    .line 15
    iget-object v2, p0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    .line 17
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/c$c;->a(Landroidx/constraintlayout/widget/c$c;)V

    .line 20
    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    .line 22
    iget-object v2, p0, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/c$d;->a:Z

    .line 29
    iput-boolean v3, v1, Landroidx/constraintlayout/widget/c$d;->a:Z

    .line 31
    iget v3, v2, Landroidx/constraintlayout/widget/c$d;->b:I

    .line 33
    iput v3, v1, Landroidx/constraintlayout/widget/c$d;->b:I

    .line 35
    iget v3, v2, Landroidx/constraintlayout/widget/c$d;->d:F

    .line 37
    iput v3, v1, Landroidx/constraintlayout/widget/c$d;->d:F

    .line 39
    iget v3, v2, Landroidx/constraintlayout/widget/c$d;->e:F

    .line 41
    iput v3, v1, Landroidx/constraintlayout/widget/c$d;->e:F

    .line 43
    iget v2, v2, Landroidx/constraintlayout/widget/c$d;->c:I

    .line 45
    iput v2, v1, Landroidx/constraintlayout/widget/c$d;->c:I

    .line 47
    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 49
    iget-object v2, p0, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 51
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/c$e;->a(Landroidx/constraintlayout/widget/c$e;)V

    .line 54
    iget v1, p0, Landroidx/constraintlayout/widget/c$a;->a:I

    .line 56
    iput v1, v0, Landroidx/constraintlayout/widget/c$a;->a:I

    .line 58
    iget-object v1, p0, Landroidx/constraintlayout/widget/c$a;->h:Landroidx/constraintlayout/widget/c$a$a;

    .line 60
    iput-object v1, v0, Landroidx/constraintlayout/widget/c$a;->h:Landroidx/constraintlayout/widget/c$a$a;

    .line 62
    return-object v0
.end method

.method public final c(Landroidx/constraintlayout/widget/ConstraintLayout$b;I)V
    .registers 4

    .line 1
    iput p2, p0, Landroidx/constraintlayout/widget/c$a;->a:I

    .line 3
    iget-object p2, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 5
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    .line 7
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->i:I

    .line 9
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    .line 11
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->j:I

    .line 13
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 15
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->k:I

    .line 17
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:I

    .line 19
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->l:I

    .line 21
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 23
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->m:I

    .line 25
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    .line 27
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->n:I

    .line 29
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    .line 31
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->o:I

    .line 33
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 35
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->p:I

    .line 37
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m:I

    .line 39
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->q:I

    .line 41
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n:I

    .line 43
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->r:I

    .line 45
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o:I

    .line 47
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->s:I

    .line 49
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    .line 51
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->t:I

    .line 53
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 55
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->u:I

    .line 57
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    .line 59
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->v:I

    .line 61
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 63
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->w:I

    .line 65
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->E:F

    .line 67
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->x:F

    .line 69
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->F:F

    .line 71
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->y:F

    .line 73
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:Ljava/lang/String;

    .line 75
    iput-object v0, p2, Landroidx/constraintlayout/widget/c$b;->z:Ljava/lang/String;

    .line 77
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p:I

    .line 79
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->A:I

    .line 81
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q:I

    .line 83
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->B:I

    .line 85
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r:F

    .line 87
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->C:F

    .line 89
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:I

    .line 91
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->D:I

    .line 93
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    .line 95
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->E:I

    .line 97
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->V:I

    .line 99
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->F:I

    .line 101
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F

    .line 103
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->g:F

    .line 105
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I

    .line 107
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->e:I

    .line 109
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    .line 111
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->f:I

    .line 113
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 115
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->c:I

    .line 117
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 119
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->d:I

    .line 121
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 123
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->G:I

    .line 125
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 127
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->H:I

    .line 129
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 131
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->I:I

    .line 133
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 135
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->J:I

    .line 137
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->D:I

    .line 139
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->M:I

    .line 141
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:F

    .line 143
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->U:F

    .line 145
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    .line 147
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->V:F

    .line 149
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->K:I

    .line 151
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->X:I

    .line 153
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->J:I

    .line 155
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->W:I

    .line 157
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->W:Z

    .line 159
    iput-boolean v0, p2, Landroidx/constraintlayout/widget/c$b;->m0:Z

    .line 161
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:Z

    .line 163
    iput-boolean v0, p2, Landroidx/constraintlayout/widget/c$b;->n0:Z

    .line 165
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->L:I

    .line 167
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->Y:I

    .line 169
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->M:I

    .line 171
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->Z:I

    .line 173
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    .line 175
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->a0:I

    .line 177
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    .line 179
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->b0:I

    .line 181
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->N:I

    .line 183
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->c0:I

    .line 185
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->O:I

    .line 187
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->d0:I

    .line 189
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:F

    .line 191
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->e0:F

    .line 193
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->S:F

    .line 195
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->f0:F

    .line 197
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:Ljava/lang/String;

    .line 199
    iput-object v0, p2, Landroidx/constraintlayout/widget/c$b;->l0:Ljava/lang/String;

    .line 201
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->x:I

    .line 203
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->O:I

    .line 205
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->z:I

    .line 207
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->Q:I

    .line 209
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w:I

    .line 211
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->N:I

    .line 213
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->y:I

    .line 215
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->P:I

    .line 217
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->A:I

    .line 219
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->S:I

    .line 221
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->B:I

    .line 223
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->R:I

    .line 225
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->C:I

    .line 227
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->T:I

    .line 229
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:I

    .line 231
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->p0:I

    .line 233
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 236
    move-result v0

    .line 237
    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->K:I

    .line 239
    iget-object p2, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 241
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 244
    move-result p1

    .line 245
    iput p1, p2, Landroidx/constraintlayout/widget/c$b;->L:I

    .line 247
    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c$a;->b()Landroidx/constraintlayout/widget/c$a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d(ILandroidx/constraintlayout/widget/d$a;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/c$a;->c(Landroidx/constraintlayout/widget/ConstraintLayout$b;I)V

    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    .line 6
    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->r0:F

    .line 8
    iput v0, p1, Landroidx/constraintlayout/widget/c$d;->d:F

    .line 10
    iget-object p1, p0, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 12
    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->u0:F

    .line 14
    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->b:F

    .line 16
    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->v0:F

    .line 18
    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->c:F

    .line 20
    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->w0:F

    .line 22
    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->d:F

    .line 24
    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->x0:F

    .line 26
    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->e:F

    .line 28
    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->y0:F

    .line 30
    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->f:F

    .line 32
    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->z0:F

    .line 34
    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->g:F

    .line 36
    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->A0:F

    .line 38
    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->h:F

    .line 40
    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->B0:F

    .line 42
    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->j:F

    .line 44
    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->C0:F

    .line 46
    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->k:F

    .line 48
    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->D0:F

    .line 50
    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->l:F

    .line 52
    iget v0, p2, Landroidx/constraintlayout/widget/d$a;->t0:F

    .line 54
    iput v0, p1, Landroidx/constraintlayout/widget/c$e;->n:F

    .line 56
    iget-boolean p2, p2, Landroidx/constraintlayout/widget/d$a;->s0:Z

    .line 58
    iput-boolean p2, p1, Landroidx/constraintlayout/widget/c$e;->m:Z

    .line 60
    return-void
.end method
