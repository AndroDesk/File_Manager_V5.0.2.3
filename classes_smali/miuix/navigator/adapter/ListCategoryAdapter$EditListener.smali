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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


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

    invoke-interface {p0, p1, p2}, Lmiuix/navigator/adapter/CategoryAdapter$EditListener;->onEditAction(Lmiuix/navigator/adapter/CategoryAdapter;I)Z

    move-result p1

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

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    move p1, v1

    goto :goto_8

    :cond_7
    move p1, v0

    :goto_8
    invoke-interface {p3, v1, p1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    const/4 p1, 0x2

    array-length p2, p2

    if-eqz p2, :cond_10

    move v0, v1

    :cond_10
    invoke-interface {p3, p1, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    return-void
.end method
