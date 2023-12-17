.class public final Landroidx/fragment/app/Fragment$f;
.super Landroidx/fragment/app/n;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->createFragmentContainer()Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/Fragment$f;->a:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/n;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onFindViewById(I)Landroid/view/View;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment$f;->a:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    const-string v0, "Fragment "

    .line 16
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Landroidx/fragment/app/Fragment$f;->a:Landroidx/fragment/app/Fragment;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, " does not have a view"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1
.end method

.method public final onHasView()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment$f;->a:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method
