.class public abstract Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter;
.super Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;
.source "SingleTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;-><init>(Ljava/util/List;)V

    .line 4
    iput p2, p0, Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter;->mLayoutId:I

    .line 6
    new-instance p1, Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter$1;

    .line 8
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter$1;-><init>(Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->addItemViewDelegate(Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;

    .line 14
    return-void
.end method


# virtual methods
.method public abstract onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method
