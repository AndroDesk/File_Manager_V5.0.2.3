.class public interface abstract Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$OnItemClickListener;
.super Ljava/lang/Object;
.source "MultiTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemClickListener"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onItemClick(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end method

.method public abstract onItemLongClick(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$b0;I)Z
.end method
