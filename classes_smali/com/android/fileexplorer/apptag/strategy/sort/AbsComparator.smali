.class public abstract Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;
.super Ljava/lang/Object;
.source "AbsComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;",
        ">;"
    }
.end annotation


# instance fields
.field private mReverse:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;)I
    .registers 7

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    const/4 v0, -0x1

    if-nez p1, :cond_a

    return v0

    :cond_a
    const/4 v1, 0x1

    if-nez p2, :cond_e

    return v1

    :cond_e
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->isDir()Z

    move-result v2

    invoke-interface {p2}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->isDir()Z

    move-result v3

    if-ne v2, v3, :cond_1d

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->doCompare(Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;)I

    move-result p1

    return p1

    :cond_1d
    invoke-interface {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;->isDir()Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;

    check-cast p2, Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->compare(Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;)I

    move-result p1

    return p1
.end method

.method public abstract doCompare(Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;)I
.end method

.method public isReverse()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->mReverse:Z

    return v0
.end method

.method public setReverse(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->mReverse:Z

    return-void
.end method
