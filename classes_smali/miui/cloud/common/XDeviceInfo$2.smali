.class Lmiui/cloud/common/XDeviceInfo$2;
.super Ljava/lang/Object;
.source "XDeviceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/common/XDeviceInfo;->asyncGet(Landroid/content/Context;ZLmiui/cloud/common/XCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$callback:Lmiui/cloud/common/XCallback;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$reloadDeviceId:Z


# direct methods
.method public constructor <init>(Lmiui/cloud/common/XCallback;Landroid/content/Context;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo$2;->val$callback:Lmiui/cloud/common/XCallback;

    .line 3
    iput-object p2, p0, Lmiui/cloud/common/XDeviceInfo$2;->val$context:Landroid/content/Context;

    .line 5
    iput-boolean p3, p0, Lmiui/cloud/common/XDeviceInfo$2;->val$reloadDeviceId:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiui/cloud/common/XDeviceInfo$2;->val$callback:Lmiui/cloud/common/XCallback;

    .line 3
    invoke-virtual {v0}, Lmiui/cloud/common/XCallback;->asInterface()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiui/cloud/common/XDeviceInfo$DeviceInfoReayListener;

    .line 9
    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo$2;->val$context:Landroid/content/Context;

    .line 11
    iget-boolean v2, p0, Lmiui/cloud/common/XDeviceInfo$2;->val$reloadDeviceId:Z

    .line 13
    invoke-static {v1, v2}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;Z)Lmiui/cloud/common/XDeviceInfo;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Lmiui/cloud/common/XDeviceInfo$DeviceInfoReayListener;->onDeviceInfoReay(Lmiui/cloud/common/XDeviceInfo;)V

    .line 20
    return-void
.end method
