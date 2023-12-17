.class Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "MirrorRecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 4
    if-nez p2, :cond_d

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileIconHelper;->resume()V

    .line 13
    goto :goto_17

    .line 14
    :cond_d
    const/4 p1, 0x1

    .line 15
    if-ne p1, p2, :cond_17

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileIconHelper;->pause()V

    .line 24
    :cond_17
    :goto_17
    return-void
.end method
