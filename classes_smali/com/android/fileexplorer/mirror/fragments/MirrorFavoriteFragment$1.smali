.class Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$1;
.super Ljava/lang/Object;
.source "MirrorFavoriteFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->onFavChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;)V

    .line 6
    return-void
.end method
