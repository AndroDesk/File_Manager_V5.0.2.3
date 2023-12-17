.class public final Landroidx/appcompat/widget/b1$a;
.super La/b;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/b1;->t(IJ)Lm0/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public l:Z

.field public final synthetic m:I

.field public final synthetic n:Landroidx/appcompat/widget/b1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/b1;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/b1$a;->n:Landroidx/appcompat/widget/b1;

    .line 3
    iput p2, p0, Landroidx/appcompat/widget/b1$a;->m:I

    .line 5
    invoke-direct {p0}, La/b;-><init>()V

    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Landroidx/appcompat/widget/b1$a;->l:Z

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/b1$a;->l:Z

    .line 4
    return-void
.end method

.method public final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1$a;->n:Landroidx/appcompat/widget/b1;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    return-void
.end method

.method public final onAnimationEnd()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/b1$a;->l:Z

    .line 3
    if-nez v0, :cond_d

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/b1$a;->n:Landroidx/appcompat/widget/b1;

    .line 7
    iget-object v0, v0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 9
    iget v1, p0, Landroidx/appcompat/widget/b1$a;->m:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_d
    return-void
.end method
