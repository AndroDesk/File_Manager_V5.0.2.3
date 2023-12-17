.class public interface abstract Lcom/android/fileexplorer/fragment/file/task/SortTask$Callback;
.super Ljava/lang/Object;
.source "SortTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/file/task/SortTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;",
            ">;)V"
        }
    .end annotation
.end method
