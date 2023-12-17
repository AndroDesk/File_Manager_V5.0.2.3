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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lq0/a;->b:Z

    .line 7
    const/4 p1, 0x0

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    .line 11
    iput-boolean p1, p0, Lq0/a;->a:Z

    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lq0/a;->d:I

    .line 16
    new-instance p1, Lq0/a$a;

    .line 18
    invoke-direct {p1, p0}, Lq0/a$a;-><init>(Lq0/a;)V

    .line 21
    iput-object p1, p0, Lq0/a;->e:Lq0/a$a;

    .line 23
    new-instance p1, Lq0/a$b;

    .line 25
    invoke-direct {p1, p0}, Lq0/a$b;-><init>(Lq0/a;)V

    .line 28
    iput-object p1, p0, Lq0/a;->f:Lq0/a$b;

    .line 30
    return-void
.end method


# virtual methods
.method public abstract b(Landroid/view/View;Landroid/database/Cursor;)V
.end method

.method public c(Landroid/database/Cursor;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    .line 3
    if-ne p1, v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_40

    .line 7
    :cond_6
    if-eqz v0, :cond_16

    .line 9
    iget-object v1, p0, Lq0/a;->e:Lq0/a$a;

    .line 11
    if-eqz v1, :cond_f

    .line 13
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 16
    :cond_f
    iget-object v1, p0, Lq0/a;->f:Lq0/a$b;

    .line 18
    if-eqz v1, :cond_16

    .line 20
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 23
    :cond_16
    iput-object p1, p0, Lq0/a;->c:Landroid/database/Cursor;

    .line 25
    if-eqz p1, :cond_37

    .line 27
    iget-object v1, p0, Lq0/a;->e:Lq0/a$a;

    .line 29
    if-eqz v1, :cond_21

    .line 31
    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 34
    :cond_21
    iget-object v1, p0, Lq0/a;->f:Lq0/a$b;

    .line 36
    if-eqz v1, :cond_28

    .line 38
    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 41
    :cond_28
    const-string v1, "_id"

    .line 43
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lq0/a;->d:I

    .line 49
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lq0/a;->a:Z

    .line 52
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 55
    goto :goto_40

    .line 56
    :cond_37
    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lq0/a;->d:I

    .line 59
    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lq0/a;->a:Z

    .line 62
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 65
    :goto_40
    if-eqz v0, :cond_45

    .line 67
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_45
    return-void
.end method

.method public abstract d(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method public abstract e(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final getCount()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lq0/a;->a:Z

    .line 3
    if-eqz v0, :cond_d

    .line 5
    iget-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    iget-boolean v0, p0, Lq0/a;->a:Z

    .line 3
    if-eqz v0, :cond_1d

    .line 5
    iget-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    .line 7
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 10
    if-nez p2, :cond_17

    .line 12
    move-object p1, p0

    .line 13
    check-cast p1, Lq0/c;

    .line 15
    iget-object p2, p1, Lq0/c;->j:Landroid/view/LayoutInflater;

    .line 17
    iget p1, p1, Lq0/c;->i:I

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p2, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object p2

    .line 24
    :cond_17
    iget-object p1, p0, Lq0/a;->c:Landroid/database/Cursor;

    .line 26
    invoke-virtual {p0, p2, p1}, Lq0/a;->b(Landroid/view/View;Landroid/database/Cursor;)V

    .line 29
    return-object p2

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public final getFilter()Landroid/widget/Filter;
    .registers 2

    .line 1
    iget-object v0, p0, Lq0/a;->g:Lq0/b;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lq0/b;

    .line 7
    invoke-direct {v0, p0}, Lq0/b;-><init>(Lq0/b$a;)V

    .line 10
    iput-object v0, p0, Lq0/a;->g:Lq0/b;

    .line 12
    :cond_b
    iget-object v0, p0, Lq0/a;->g:Lq0/b;

    .line 14
    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lq0/a;->a:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    .line 7
    if-eqz v0, :cond_e

    .line 9
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 12
    iget-object p1, p0, Lq0/a;->c:Landroid/database/Cursor;

    .line 14
    return-object p1

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method

.method public final getItemId(I)J
    .registers 5

    .line 1
    iget-boolean v0, p0, Lq0/a;->a:Z

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    if-eqz v0, :cond_19

    .line 7
    iget-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    .line 9
    if-eqz v0, :cond_19

    .line 11
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_19

    .line 17
    iget-object p1, p0, Lq0/a;->c:Landroid/database/Cursor;

    .line 19
    iget v0, p0, Lq0/a;->d:I

    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 24
    move-result-wide v0

    .line 25
    return-wide v0

    .line 26
    :cond_19
    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    iget-boolean v0, p0, Lq0/a;->a:Z

    .line 3
    if-eqz v0, :cond_24

    .line 5
    iget-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    .line 7
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_18

    .line 13
    if-nez p2, :cond_12

    .line 15
    invoke-virtual {p0, p3}, Lq0/a;->e(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    :cond_12
    iget-object p1, p0, Lq0/a;->c:Landroid/database/Cursor;

    .line 21
    invoke-virtual {p0, p2, p1}, Lq0/a;->b(Landroid/view/View;Landroid/database/Cursor;)V

    .line 24
    return-object p2

    .line 25
    :cond_18
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 27
    const-string p3, "couldn\'t move cursor to position "

    .line 29
    invoke-static {p3, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p2

    .line 37
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    const-string p2, "this should only be called when the cursor is valid"

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1
.end method
