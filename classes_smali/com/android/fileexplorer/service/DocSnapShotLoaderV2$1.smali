.class Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$1;
.super Lmiuix/core/util/Pools$Manager;
.source "DocSnapShotLoaderV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/core/util/Pools$Manager<",
        "Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$1;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;

    invoke-direct {p0}, Lmiuix/core/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance()Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;

    invoke-direct {v0}, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$1;->createInstance()Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;

    move-result-object v0

    return-object v0
.end method

.method public onRelease(Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;)V
    .registers 2

    invoke-virtual {p1}, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;->release()V

    return-void
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$1;->onRelease(Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;)V

    return-void
.end method
