.class public final Landroidx/appcompat/widget/r0$b;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/r0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/r0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/r0$b;->a:Landroidx/appcompat/widget/r0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/appcompat/widget/r0$c;

    .line 4
    iget-object v0, v0, Landroidx/appcompat/widget/r0$c;->a:Landroidx/appcompat/app/a$d;

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->select()V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/r0$b;->a:Landroidx/appcompat/widget/r0;

    .line 11
    iget-object v0, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_12
    if-ge v2, v0, :cond_27

    .line 21
    iget-object v3, p0, Landroidx/appcompat/widget/r0$b;->a:Landroidx/appcompat/widget/r0;

    .line 23
    iget-object v3, v3, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 25
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v3

    .line 29
    if-ne v3, p1, :cond_20

    .line 31
    const/4 v4, 0x1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v4, v1

    .line 34
    :goto_21
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_12

    .line 40
    :cond_27
    return-void
.end method
