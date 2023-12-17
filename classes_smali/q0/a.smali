.class public abstract Lq0/a;
.super Landroid/widget/BaseAdapter;
.source "CursorAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lq0/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/a$b;,
        Lq0/a$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/database/Cursor;

.field public d:I

.field public e:Lq0/a$a;

.field public f:Lq0/a$b;

.field public g:Lq0/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq0/a;->b:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    iput-boolean p1, p0, Lq0/a;->a:Z

    const/4 p1, -0x1

    iput p1, p0, Lq0/a;->d:I

    new-instance p1, Lq0/a$a;

    invoke-direct {p1, p0}, Lq0/a$a;-><init>(Lq0/a;)V

    iput-object p1, p0, Lq0/a;->e:Lq0/a$a;

    new-instance p1, Lq0/a$b;

    invoke-direct {p1, p0}, Lq0/a$b;-><init>(Lq0/a;)V

    iput-object p1, p0, Lq0/a;->f:Lq0/a$b;

    return-void
.end method


# virtual methods
.method public abstract b(Landroid/view/View;Landroid/database/Cursor;)V
.end method

.method public c(Landroid/database/Cursor;)V
    .registers 4

    iget-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_40

    :cond_6
    if-eqz v0, :cond_16

    iget-object v1, p0, Lq0/a;->e:Lq0/a$a;

    if-eqz v1, :cond_f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_f
    iget-object v1, p0, Lq0/a;->f:Lq0/a$b;

    if-eqz v1, :cond_16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_16
    iput-object p1, p0, Lq0/a;->c:Landroid/database/Cursor;

    if-eqz p1, :cond_37

    iget-object v1, p0, Lq0/a;->e:Lq0/a$a;

    if-eqz v1, :cond_21

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_21
    iget-object v1, p0, Lq0/a;->f:Lq0/a$b;

    if-eqz v1, :cond_28

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_28
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lq0/a;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq0/a;->a:Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_40

    :cond_37
    const/4 p1, -0x1

    iput p1, p0, Lq0/a;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq0/a;->a:Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    :goto_40
    if-eqz v0, :cond_45

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_45
    return-void
.end method

.method public abstract d(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method public abstract e(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final getCount()I
    .registers 2

    iget-boolean v0, p0, Lq0/a;->a:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-boolean v0, p0, Lq0/a;->a:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    if-nez p2, :cond_17

    move-object p1, p0

    check-cast p1, Lq0/c;

    iget-object p2, p1, Lq0/c;->j:Landroid/view/LayoutInflater;

    iget p1, p1, Lq0/c;->i:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_17
    iget-object p1, p0, Lq0/a;->c:Landroid/database/Cursor;

    invoke-virtual {p0, p2, p1}, Lq0/a;->b(Landroid/view/View;Landroid/database/Cursor;)V

    return-object p2

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getFilter()Landroid/widget/Filter;
    .registers 2

    iget-object v0, p0, Lq0/a;->g:Lq0/b;

    if-nez v0, :cond_b

    new-instance v0, Lq0/b;

    invoke-direct {v0, p0}, Lq0/b;-><init>(Lq0/b$a;)V

    iput-object v0, p0, Lq0/a;->g:Lq0/b;

    :cond_b
    iget-object v0, p0, Lq0/a;->g:Lq0/b;

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Lq0/a;->a:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object p1, p0, Lq0/a;->c:Landroid/database/Cursor;

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItemId(I)J
    .registers 5

    iget-boolean v0, p0, Lq0/a;->a:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lq0/a;->c:Landroid/database/Cursor;

    iget v0, p0, Lq0/a;->d:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_19
    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-boolean v0, p0, Lq0/a;->a:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez p2, :cond_12

    invoke-virtual {p0, p3}, Lq0/a;->e(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_12
    iget-object p1, p0, Lq0/a;->c:Landroid/database/Cursor;

    invoke-virtual {p0, p2, p1}, Lq0/a;->b(Landroid/view/View;Landroid/database/Cursor;)V

    return-object p2

    :cond_18
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "couldn\'t move cursor to position "

    invoke-static {p3, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "this should only be called when the cursor is valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
