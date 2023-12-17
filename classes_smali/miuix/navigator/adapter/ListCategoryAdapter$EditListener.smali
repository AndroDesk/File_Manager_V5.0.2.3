.class public interface abstract Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;
.super Ljava/lang/Object;
.source "ListCategoryAdapter.java"

# interfaces
.implements Lmiuix/navigator/adapter/CategoryAdapter$EditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/adapter/ListCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditListener"
.end annotation


# virtual methods
.method public onEditAction(Lmiuix/navigator/adapter/CategoryAdapter;I[I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "*>;I[I)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1, p2}, Lmiuix/navigator/adapter/CategoryAdapter$EditListener;->onEditAction(Lmiuix/navigator/adapter/CategoryAdapter;I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onSelectionChanged(Lmiuix/navigator/adapter/CategoryAdapter;[ILandroid/view/Menu;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "*>;[I",
            "Landroid/view/Menu;",
            ")V"
        }
    .end annotation

    .line 1
    array-length p1, p2

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v1, :cond_7

    .line 6
    move p1, v1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    move p1, v0

    .line 9
    :goto_8
    invoke-interface {p3, v1, p1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 12
    const/4 p1, 0x2

    .line 13
    array-length p2, p2

    .line 14
    if-eqz p2, :cond_10

    .line 16
    move v0, v1

    .line 17
    :cond_10
    invoke-interface {p3, p1, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 20
    return-void
.end method
