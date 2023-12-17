.class public interface abstract Lmiuix/navigator/adapter/CategoryAdapter$EditListener;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/adapter/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditListener"
.end annotation


# virtual methods
.method public onEditAction(Lmiuix/navigator/adapter/CategoryAdapter;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "*>;I)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onFinishEdit(Lmiuix/navigator/adapter/CategoryAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onStartEdit(Lmiuix/navigator/adapter/CategoryAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
