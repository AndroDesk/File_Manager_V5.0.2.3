.class public final Lq0/b;
.super Landroid/widget/Filter;
.source "CursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/b$a;
    }
.end annotation


# instance fields
.field public a:Lq0/b$a;


# direct methods
.method public constructor <init>(Lq0/b$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 4
    iput-object p1, p0, Lq0/b;->a:Lq0/b$a;

    .line 6
    return-void
.end method


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    .line 1
    iget-object v0, p0, Lq0/b;->a:Lq0/b$a;

    .line 3
    check-cast p1, Landroid/database/Cursor;

    .line 5
    check-cast v0, Landroidx/appcompat/widget/s0;

    .line 7
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/s0;->d(Landroid/database/Cursor;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 5

    .line 1
    iget-object v0, p0, Lq0/b;->a:Lq0/b$a;

    .line 3
    check-cast v0, Landroidx/appcompat/widget/s0;

    .line 5
    if-nez p1, :cond_9

    .line 7
    const-string p1, ""

    .line 9
    goto :goto_10

    .line 10
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    :goto_10
    iget-object v1, v0, Landroidx/appcompat/widget/s0;->k:Landroidx/appcompat/widget/SearchView;

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v1, :cond_36

    .line 26
    iget-object v1, v0, Landroidx/appcompat/widget/s0;->k:Landroidx/appcompat/widget/SearchView;

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_22

    .line 34
    goto :goto_36

    .line 35
    :cond_22
    :try_start_22
    iget-object v1, v0, Landroidx/appcompat/widget/s0;->l:Landroid/app/SearchableInfo;

    .line 37
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/s0;->h(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;

    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_36

    .line 43
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_2d} :catch_2e

    .line 46
    goto :goto_37

    .line 47
    :catch_2e
    move-exception p1

    .line 48
    const-string v0, "SuggestionsAdapter"

    .line 50
    const-string v1, "Search suggestions query threw an exception."

    .line 52
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :cond_36
    :goto_36
    move-object p1, v2

    .line 56
    :goto_37
    new-instance v0, Landroid/widget/Filter$FilterResults;

    .line 58
    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 61
    if-eqz p1, :cond_47

    .line 63
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 66
    move-result v1

    .line 67
    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 69
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 71
    goto :goto_4c

    .line 72
    :cond_47
    const/4 p1, 0x0

    .line 73
    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 75
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 77
    :goto_4c
    return-object v0
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lq0/b;->a:Lq0/b$a;

    .line 3
    move-object v0, p1

    .line 4
    check-cast v0, Lq0/a;

    .line 6
    iget-object v0, v0, Lq0/a;->c:Landroid/database/Cursor;

    .line 8
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 10
    if-eqz p2, :cond_14

    .line 12
    if-eq p2, v0, :cond_14

    .line 14
    check-cast p2, Landroid/database/Cursor;

    .line 16
    check-cast p1, Landroidx/appcompat/widget/s0;

    .line 18
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/s0;->c(Landroid/database/Cursor;)V

    .line 21
    :cond_14
    return-void
.end method
