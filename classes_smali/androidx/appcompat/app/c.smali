.class public final Landroidx/appcompat/app/c;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public final synthetic d:Landroidx/appcompat/app/AlertController;

.field public final synthetic e:Landroidx/appcompat/app/AlertController$b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AlertController$b;Landroid/content/Context;Landroid/database/Cursor;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V
    .registers 6

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/c;->e:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iput-object p4, p0, Landroidx/appcompat/app/c;->c:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 5
    iput-object p5, p0, Landroidx/appcompat/app/c;->d:Landroidx/appcompat/app/AlertController;

    .line 7
    const/4 p4, 0x0

    .line 8
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    .line 14
    move-result-object p2

    .line 15
    iget-object p3, p1, Landroidx/appcompat/app/AlertController$b;->K:Ljava/lang/String;

    .line 17
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 20
    move-result p3

    .line 21
    iput p3, p0, Landroidx/appcompat/app/c;->a:I

    .line 23
    iget-object p1, p1, Landroidx/appcompat/app/AlertController$b;->L:Ljava/lang/String;

    .line 25
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 28
    move-result p1

    .line 29
    iput p1, p0, Landroidx/appcompat/app/c;->b:I

    .line 31
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5

    .line 1
    const p2, 0x1020014

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/widget/CheckedTextView;

    .line 10
    iget p2, p0, Landroidx/appcompat/app/c;->a:I

    .line 12
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Landroidx/appcompat/app/c;->c:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 21
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    .line 24
    move-result p2

    .line 25
    iget v0, p0, Landroidx/appcompat/app/c;->b:I

    .line 27
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 30
    move-result p3

    .line 31
    const/4 v0, 0x1

    .line 32
    if-ne p3, v0, :cond_22

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 v0, 0x0

    .line 36
    :goto_23
    invoke-virtual {p1, p2, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 39
    return-void
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/c;->e:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iget-object p1, p1, Landroidx/appcompat/app/AlertController$b;->b:Landroid/view/LayoutInflater;

    .line 5
    iget-object p2, p0, Landroidx/appcompat/app/c;->d:Landroidx/appcompat/app/AlertController;

    .line 7
    iget p2, p2, Landroidx/appcompat/app/AlertController;->M:I

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
