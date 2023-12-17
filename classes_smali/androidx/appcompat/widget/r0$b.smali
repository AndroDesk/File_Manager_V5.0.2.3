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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/r0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/r0$b;->a:Landroidx/appcompat/widget/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/r0$c;

    iget-object v0, v0, Landroidx/appcompat/widget/r0$c;->a:Landroidx/appcompat/app/a$d;

    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->select()V

    iget-object v0, p0, Landroidx/appcompat/widget/r0$b;->a:Landroidx/appcompat/widget/r0;

    iget-object v0, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_27

    iget-object v3, p0, Landroidx/appcompat/widget/r0$b;->a:Landroidx/appcompat/widget/r0;

    iget-object v3, v3, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    move v4, v1

    :goto_21
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_27
    return-void
.end method
