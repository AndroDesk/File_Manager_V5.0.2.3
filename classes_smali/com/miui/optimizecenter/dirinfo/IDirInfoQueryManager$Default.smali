.class public Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager$Default;
.super Ljava/lang/Object;
.source "IDirInfoQueryManager.java"

# interfaces
.implements Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryDirInfo(Ljava/util/List;Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryCallBack;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryCallBack;",
            ")V"
        }
    .end annotation

    return-void
.end method
