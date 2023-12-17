.class public final Landroidx/appcompat/app/a0$e;
.super Landroidx/appcompat/app/a$d;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/app/a$e;

.field public b:Ljava/lang/Object;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:I

.field public g:Landroid/view/View;

.field public final synthetic h:Landroidx/appcompat/app/a0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/a0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/a0$e;->h:Landroidx/appcompat/app/a0;

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/a$d;-><init>()V

    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroidx/appcompat/app/a0$e;->f:I

    .line 9
    return-void
.end method


# virtual methods
.method public final getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$e;->e:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public final getCustomView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$e;->g:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$e;->c:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public final getPosition()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/app/a0$e;->f:I

    .line 3
    return v0
.end method

.method public final getTag()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$e;->b:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$e;->d:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public final select()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$e;->h:Landroidx/appcompat/app/a0;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/a0;->selectTab(Landroidx/appcompat/app/a$d;)V

    .line 6
    return-void
.end method

.method public final setContentDescription(I)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$e;->h:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0$e;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$d;

    return-object p0
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 2
    iput-object p1, p0, Landroidx/appcompat/app/a0$e;->e:Ljava/lang/CharSequence;

    .line 3
    iget p1, p0, Landroidx/appcompat/app/a0$e;->f:I

    if-ltz p1, :cond_d

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/a0$e;->h:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/r0;->c(I)V

    :cond_d
    return-object p0
.end method

.method public final setCustomView(I)Landroidx/appcompat/app/a$d;
    .registers 4

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/a0$e;->h:Landroidx/appcompat/app/a0;

    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0$e;->setCustomView(Landroid/view/View;)Landroidx/appcompat/app/a$d;

    return-object p0
.end method

.method public final setCustomView(Landroid/view/View;)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/a0$e;->g:Landroid/view/View;

    .line 2
    iget p1, p0, Landroidx/appcompat/app/a0$e;->f:I

    if-ltz p1, :cond_d

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/a0$e;->h:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/r0;->c(I)V

    :cond_d
    return-object p0
.end method

.method public final setIcon(I)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/a0$e;->h:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0$e;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/a$d;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/a0$e;->c:Landroid/graphics/drawable/Drawable;

    .line 2
    iget p1, p0, Landroidx/appcompat/app/a0$e;->f:I

    if-ltz p1, :cond_d

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/a0$e;->h:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/r0;->c(I)V

    :cond_d
    return-object p0
.end method

.method public final setTabListener(Landroidx/appcompat/app/a$e;)Landroidx/appcompat/app/a$d;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/a0$e;->a:Landroidx/appcompat/app/a$e;

    .line 3
    return-object p0
.end method

.method public final setTag(Ljava/lang/Object;)Landroidx/appcompat/app/a$d;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/a0$e;->b:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public final setText(I)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/a0$e;->h:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0$e;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$d;

    return-object p0
.end method

.method public final setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/a0$e;->d:Ljava/lang/CharSequence;

    .line 2
    iget p1, p0, Landroidx/appcompat/app/a0$e;->f:I

    if-ltz p1, :cond_d

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/a0$e;->h:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/r0;->c(I)V

    :cond_d
    return-object p0
.end method
