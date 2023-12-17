.class public final Landroidx/appcompat/widget/r0$a;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/r0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/r0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/r0$a;->a:Landroidx/appcompat/widget/r0;

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/r0$a;->a:Landroidx/appcompat/widget/r0;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/r0$a;->a:Landroidx/appcompat/widget/r0;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/appcompat/widget/r0$c;

    .line 11
    iget-object p1, p1, Landroidx/appcompat/widget/r0$c;->a:Landroidx/appcompat/app/a$d;

    .line 13
    return-object p1
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 1
    if-nez p2, :cond_10

    .line 3
    iget-object p2, p0, Landroidx/appcompat/widget/r0$a;->a:Landroidx/appcompat/widget/r0;

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/r0$a;->getItem(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/appcompat/app/a$d;

    .line 11
    const/4 p3, 0x1

    .line 12
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/r0;->a(Landroidx/appcompat/app/a$d;Z)Landroidx/appcompat/widget/r0$c;

    .line 15
    move-result-object p2

    .line 16
    goto :goto_1e

    .line 17
    :cond_10
    move-object p3, p2

    .line 18
    check-cast p3, Landroidx/appcompat/widget/r0$c;

    .line 20
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/r0$a;->getItem(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroidx/appcompat/app/a$d;

    .line 26
    iput-object p1, p3, Landroidx/appcompat/widget/r0$c;->a:Landroidx/appcompat/app/a$d;

    .line 28
    invoke-virtual {p3}, Landroidx/appcompat/widget/r0$c;->a()V

    .line 31
    :goto_1e
    return-object p2
.end method
