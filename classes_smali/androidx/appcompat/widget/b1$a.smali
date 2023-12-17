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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/b1;I)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/widget/b1$a;->n:Landroidx/appcompat/widget/b1;

    iput p2, p0, Landroidx/appcompat/widget/b1$a;->m:I

    invoke-direct {p0}, La/b;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/b1$a;->l:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/b1$a;->l:Z

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/b1$a;->n:Landroidx/appcompat/widget/b1;

    iget-object v0, v0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationEnd()V
    .registers 3

    iget-boolean v0, p0, Landroidx/appcompat/widget/b1$a;->l:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Landroidx/appcompat/widget/b1$a;->n:Landroidx/appcompat/widget/b1;

    iget-object v0, v0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Landroidx/appcompat/widget/b1$a;->m:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method
