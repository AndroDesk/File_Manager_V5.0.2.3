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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lq0/b$a;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput-object p1, p0, Lq0/b;->a:Lq0/b$a;

    return-void
.end method


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lq0/b;->a:Lq0/b$a;

    check-cast p1, Landroid/database/Cursor;

    check-cast v0, Landroidx/appcompat/widget/s0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/s0;->d(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 5

    iget-object v0, p0, Lq0/b;->a:Lq0/b$a;

    check-cast v0, Landroidx/appcompat/widget/s0;

    if-nez p1, :cond_9

    const-string p1, ""

    goto :goto_10

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_10
    iget-object v1, v0, Landroidx/appcompat/widget/s0;->k:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_36

    iget-object v1, v0, Landroidx/appcompat/widget/s0;->k:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_36

    :cond_22
    :try_start_22
    iget-object v1, v0, Landroidx/appcompat/widget/s0;->l:Landroid/app/SearchableInfo;

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/s0;->h(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_36

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_2d} :catch_2e

    goto :goto_37

    :catch_2e
    move-exception p1

    const-string v0, "SuggestionsAdapter"

    const-string v1, "Search suggestions query threw an exception."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    :goto_36
    move-object p1, v2

    :goto_37
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_47

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_4c

    :cond_47
    const/4 p1, 0x0

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_4c
    return-object v0
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 4

    iget-object p1, p0, Lq0/b;->a:Lq0/b$a;

    move-object v0, p1

    check-cast v0, Lq0/a;

    iget-object v0, v0, Lq0/a;->c:Landroid/database/Cursor;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p2, :cond_14

    if-eq p2, v0, :cond_14

    check-cast p2, Landroid/database/Cursor;

    check-cast p1, Landroidx/appcompat/widget/s0;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/s0;->c(Landroid/database/Cursor;)V

    :cond_14
    return-void
.end method
