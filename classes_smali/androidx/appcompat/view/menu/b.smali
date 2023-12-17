.class public abstract Landroidx/appcompat/view/menu/b;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/n;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/view/menu/h;

.field public d:Landroid/view/LayoutInflater;

.field public e:Landroidx/appcompat/view/menu/n$a;

.field public f:I

.field public g:I

.field public h:Landroidx/appcompat/view/menu/o;

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->a:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->d:Landroid/view/LayoutInflater;

    .line 12
    iput p2, p0, Landroidx/appcompat/view/menu/b;->f:I

    .line 14
    iput p3, p0, Landroidx/appcompat/view/menu/b;->g:I

    .line 16
    return-void
.end method


# virtual methods
.method public final collapseItemActionView(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public final expandItemActionView(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public final getId()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/b;->i:I

    .line 3
    return v0
.end method

.method public final setCallback(Landroidx/appcompat/view/menu/n$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->e:Landroidx/appcompat/view/menu/n$a;

    .line 3
    return-void
.end method
