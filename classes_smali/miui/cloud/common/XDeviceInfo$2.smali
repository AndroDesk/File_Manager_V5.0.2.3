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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiui/cloud/common/XCallback;Landroid/content/Context;Z)V
    .registers 4

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo$2;->val$callback:Lmiui/cloud/common/XCallback;

    iput-object p2, p0, Lmiui/cloud/common/XDeviceInfo$2;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lmiui/cloud/common/XDeviceInfo$2;->val$reloadDeviceId:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lmiui/cloud/common/XDeviceInfo$2;->val$callback:Lmiui/cloud/common/XCallback;

    invoke-virtual {v0}, Lmiui/cloud/common/XCallback;->asInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/common/XDeviceInfo$DeviceInfoReayListener;

    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo$2;->val$context:Landroid/content/Context;

    iget-boolean v2, p0, Lmiui/cloud/common/XDeviceInfo$2;->val$reloadDeviceId:Z

    invoke-static {v1, v2}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;Z)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/cloud/common/XDeviceInfo$DeviceInfoReayListener;->onDeviceInfoReay(Lmiui/cloud/common/XDeviceInfo;)V

    return-void
.end method
