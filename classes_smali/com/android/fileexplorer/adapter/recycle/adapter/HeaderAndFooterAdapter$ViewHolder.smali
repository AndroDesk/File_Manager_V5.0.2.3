.class Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$ViewHolder;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;
.source "HeaderAndFooterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$ViewHolder;->this$0:Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 6
    return-void
.end method
