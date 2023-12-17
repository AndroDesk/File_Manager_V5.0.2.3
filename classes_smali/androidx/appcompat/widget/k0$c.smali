.class public final Landroidx/appcompat/widget/k0$c;
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
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/k0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/k0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/k0$c;->a:Landroidx/appcompat/widget/k0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0$c;->a:Landroidx/appcompat/widget/k0;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 5
    if-eqz v0, :cond_d

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/f0;->setListSelectionHidden(Z)V

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 14
    :cond_d
    return-void
.end method
