.class Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$2;
.super Ljava/lang/Object;
.source "MirrorFavoriteFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 1

    return-void
.end method

.method public onLoadMore()V
    .registers 1

    return-void
.end method

.method public onRefresh()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;)V

    return-void
.end method
