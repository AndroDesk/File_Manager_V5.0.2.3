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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/k0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/k0$g;->a:Landroidx/appcompat/widget/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/k0$g;->a:Landroidx/appcompat/widget/k0;

    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    if-eqz v0, :cond_39

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroidx/appcompat/widget/k0$g;->a:Landroidx/appcompat/widget/k0;

    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/k0$g;->a:Landroidx/appcompat/widget/k0;

    iget-object v1, v1, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_39

    iget-object v0, p0, Landroidx/appcompat/widget/k0$g;->a:Landroidx/appcompat/widget/k0;

    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/k0$g;->a:Landroidx/appcompat/widget/k0;

    iget v2, v1, Landroidx/appcompat/widget/k0;->m:I

    if-gt v0, v2, :cond_39

    iget-object v0, v1, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/k0$g;->a:Landroidx/appcompat/widget/k0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->show()V

    :cond_39
    return-void
.end method
