.class public abstract Landroidx/appcompat/view/menu/c;
.super Ljava/lang/Object;
.source "BaseMenuWrapper.java"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroidx/collection/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/f<",
            "Lh0/b;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/collection/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/f<",
            "Lh0/c;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/appcompat/view/menu/c;->a:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .registers 4

    .line 1
    instance-of v0, p1, Lh0/b;

    .line 3
    if-eqz v0, :cond_28

    .line 5
    check-cast p1, Lh0/b;

    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Landroidx/collection/f;

    .line 9
    if-nez v0, :cond_11

    .line 11
    new-instance v0, Landroidx/collection/f;

    .line 13
    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Landroidx/collection/f;

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Landroidx/collection/f;

    .line 20
    invoke-virtual {v0, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/MenuItem;

    .line 26
    if-nez v0, :cond_27

    .line 28
    new-instance v0, Landroidx/appcompat/view/menu/k;

    .line 30
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->a:Landroid/content/Context;

    .line 32
    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/k;-><init>(Landroid/content/Context;Lh0/b;)V

    .line 35
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Landroidx/collection/f;

    .line 37
    invoke-virtual {v1, p1, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_27
    return-object v0

    .line 41
    :cond_28
    return-object p1
.end method

.method public final b(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .registers 4

    .line 1
    instance-of v0, p1, Lh0/c;

    .line 3
    if-eqz v0, :cond_28

    .line 5
    check-cast p1, Lh0/c;

    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Landroidx/collection/f;

    .line 9
    if-nez v0, :cond_11

    .line 11
    new-instance v0, Landroidx/collection/f;

    .line 13
    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Landroidx/collection/f;

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Landroidx/collection/f;

    .line 20
    invoke-virtual {v0, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/SubMenu;

    .line 26
    if-nez v0, :cond_27

    .line 28
    new-instance v0, Landroidx/appcompat/view/menu/t;

    .line 30
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->a:Landroid/content/Context;

    .line 32
    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/t;-><init>(Landroid/content/Context;Lh0/c;)V

    .line 35
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->c:Landroidx/collection/f;

    .line 37
    invoke-virtual {v1, p1, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_27
    return-object v0

    .line 41
    :cond_28
    return-object p1
.end method
