.class Lcom/android/fileexplorer/service/DocSnapShotLoader$1;
.super Lmiuix/core/util/Pools$Manager;
.source "DocSnapShotLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/DocSnapShotLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/core/util/Pools$Manager<",
        "Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/DocSnapShotLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$1;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    invoke-direct {p0}, Lmiuix/core/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance()Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;

    invoke-direct {v0}, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader$1;->createInstance()Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;

    move-result-object v0

    return-object v0
.end method

.method public onRelease(Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;)V
    .registers 2

    invoke-virtual {p1}, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->release()V

    return-void
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/service/DocSnapShotLoader$1;->onRelease(Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;)V

    return-void
.end method
