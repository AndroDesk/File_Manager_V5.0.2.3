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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/r0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/r0$a;->a:Landroidx/appcompat/widget/r0;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/r0$a;->a:Landroidx/appcompat/widget/r0;

    iget-object v0, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/r0$a;->a:Landroidx/appcompat/widget/r0;

    iget-object v0, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/r0$c;

    iget-object p1, p1, Landroidx/appcompat/widget/r0$c;->a:Landroidx/appcompat/app/a$d;

    return-object p1
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    if-nez p2, :cond_10

    iget-object p2, p0, Landroidx/appcompat/widget/r0$a;->a:Landroidx/appcompat/widget/r0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/r0$a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/a$d;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/r0;->a(Landroidx/appcompat/app/a$d;Z)Landroidx/appcompat/widget/r0$c;

    move-result-object p2

    goto :goto_1e

    :cond_10
    move-object p3, p2

    check-cast p3, Landroidx/appcompat/widget/r0$c;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/r0$a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/a$d;

    iput-object p1, p3, Landroidx/appcompat/widget/r0$c;->a:Landroidx/appcompat/app/a$d;

    invoke-virtual {p3}, Landroidx/appcompat/widget/r0$c;->a()V

    :goto_1e
    return-object p2
.end method
