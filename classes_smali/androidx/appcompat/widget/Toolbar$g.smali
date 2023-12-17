.class public final Landroidx/appcompat/widget/Toolbar$g;
.super Landroidx/appcompat/app/a$a;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x2

    .line 3
    invoke-direct {p0, v0, v0}, Landroidx/appcompat/app/a$a;-><init>(II)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$g;->b:I

    const v0, 0x800013

    .line 5
    iput v0, p0, Landroidx/appcompat/app/a$a;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    const/4 p1, -0x2

    .line 6
    invoke-direct {p0, p1, p1}, Landroidx/appcompat/app/a$a;-><init>(II)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$g;->b:I

    const p1, 0x800013

    .line 8
    iput p1, p0, Landroidx/appcompat/app/a$a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$g;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$g;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$g;->b:I

    .line 16
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 18
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 19
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/a$a;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroidx/appcompat/app/a$a;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$g;->b:I

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar$g;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroidx/appcompat/app/a$a;)V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$g;->b:I

    .line 11
    iget p1, p1, Landroidx/appcompat/widget/Toolbar$g;->b:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar$g;->b:I

    return-void
.end method
