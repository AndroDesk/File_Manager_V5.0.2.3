.class public Lcom/android/fileexplorer/service/RecentFileObserverManager;
.super Ljava/lang/Object;
.source "RecentFileObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;
    }
.end annotation


# static fields
.field private static final MASK:I

.field private static final TAG:Ljava/lang/String; = "RecentFileObserverManager"


# instance fields
.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92e16

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/service/RecentFileObserverManager;->MASK:I

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/service/RecentFileObserverManager;->observers:Ljava/util/List;

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalSDPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/service/RecentFileObserverManager;->observers:Ljava/util/List;

    new-instance v2, Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;

    const-string v3, "/tencent/MicroMsg/Download"

    invoke-static {v0, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x380

    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/fileexplorer/service/RecentFileObserverManager;->observers:Ljava/util/List;

    new-instance v2, Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;

    const-string v3, "/tencent/QQfile_recv"

    invoke-static {v0, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/fileexplorer/service/RecentFileObserverManager;->observers:Ljava/util/List;

    new-instance v2, Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;

    const-string v3, "/Download/WeiXin"

    invoke-static {v0, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/fileexplorer/service/RecentFileObserverManager;->observers:Ljava/util/List;

    new-instance v2, Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;

    const-string v3, "/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv"

    invoke-static {v0, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/fileexplorer/service/RecentFileObserverManager;->observers:Ljava/util/List;

    new-instance v2, Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;

    const-string v3, "/Android/data/com.tencent.mm/MicroMsg/Download"

    invoke-static {v0, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/service/RecentFileObserverManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public startWatching()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentFileObserverManager;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public stopWatching()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentFileObserverManager;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentFileObserverManager;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
