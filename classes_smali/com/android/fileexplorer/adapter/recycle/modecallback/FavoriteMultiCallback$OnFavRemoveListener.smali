.class public interface abstract Lcom/android/fileexplorer/adapter/recycle/modecallback/FavoriteMultiCallback$OnFavRemoveListener;
.super Ljava/lang/Object;
.source "FavoriteMultiCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/modecallback/FavoriteMultiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFavRemoveListener"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onRemove(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FavoriteItem;",
            ">;)V"
        }
    .end annotation
.end method
