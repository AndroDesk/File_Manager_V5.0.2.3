.class public interface abstract Lcom/android/fileexplorer/fragment/callback/IActionListener;
.super Ljava/lang/Object;
.source "IActionListener.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onDirectoryDisplayChanged(Z)V
.end method

.method public abstract onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
.end method

.method public abstract onSortOrderChanged(Z)V
.end method

.method public abstract onViewModeChanged(I)V
.end method
