.class public final Landroidx/appcompat/widget/k0$d;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/k0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/k0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/k0$d;->a:Landroidx/appcompat/widget/k0;

    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0$d;->a:Landroidx/appcompat/widget/k0;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->isShowing()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/k0$d;->a:Landroidx/appcompat/widget/k0;

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->show()V

    .line 14
    :cond_d
    return-void
.end method

.method public final onInvalidated()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0$d;->a:Landroidx/appcompat/widget/k0;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->dismiss()V

    .line 6
    return-void
.end method
