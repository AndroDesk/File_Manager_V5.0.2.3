.class Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter$1;
.super Ljava/lang/Object;
.source "SingleTypeAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter$1;->this$0:Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter$1;->this$0:Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter;

    .line 3
    iget v0, v0, Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter;->mLayoutId:I

    .line 5
    return v0
.end method

.method public isForViewType(Ljava/lang/Object;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ViewHolder;",
            "TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter$1;->this$0:Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/base/SingleTypeAdapter;->onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Ljava/lang/Object;I)V

    .line 6
    return-void
.end method
