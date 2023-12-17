.class public final Landroidx/appcompat/widget/k0$g;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/k0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/k0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/k0$g;->a:Landroidx/appcompat/widget/k0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0$g;->a:Landroidx/appcompat/widget/k0;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 5
    if-eqz v0, :cond_39

    .line 7
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 9
    invoke-static {v0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_39

    .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/k0$g;->a:Landroidx/appcompat/widget/k0;

    .line 17
    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 19
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Landroidx/appcompat/widget/k0$g;->a:Landroidx/appcompat/widget/k0;

    .line 25
    iget-object v1, v1, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 27
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 30
    move-result v1

    .line 31
    if-le v0, v1, :cond_39

    .line 33
    iget-object v0, p0, Landroidx/appcompat/widget/k0$g;->a:Landroidx/appcompat/widget/k0;

    .line 35
    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 37
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 40
    move-result v0

    .line 41
    iget-object v1, p0, Landroidx/appcompat/widget/k0$g;->a:Landroidx/appcompat/widget/k0;

    .line 43
    iget v2, v1, Landroidx/appcompat/widget/k0;->m:I

    .line 45
    if-gt v0, v2, :cond_39

    .line 47
    iget-object v0, v1, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 49
    const/4 v1, 0x2

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 53
    iget-object v0, p0, Landroidx/appcompat/widget/k0$g;->a:Landroidx/appcompat/widget/k0;

    .line 55
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->show()V

    .line 58
    :cond_39
    return-void
.end method
