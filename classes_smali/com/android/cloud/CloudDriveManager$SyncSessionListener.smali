.class public Lcom/android/cloud/CloudDriveManager$SyncSessionListener;
.super Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListenerAdapter;
.source "CloudDriveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/CloudDriveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncSessionListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/CloudDriveManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/CloudDriveManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/CloudDriveManager$SyncSessionListener;->this$0:Lcom/android/cloud/CloudDriveManager;

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionChanged()V
    .registers 4

    const-string v0, "MiDrive_LOG"

    const-string v1, "notifySyncCompleteIfNeeded"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getSyncSession()Lcom/micloud/midrive/session/SyncSession;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cloud/CloudDriveManager$SyncSessionListener;->this$0:Lcom/android/cloud/CloudDriveManager;

    invoke-static {v1}, Lcom/android/cloud/CloudDriveManager;->access$000(Lcom/android/cloud/CloudDriveManager;)Lcom/micloud/midrive/session/SyncSession;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/cloud/CloudDriveManager;->access$100(Lcom/android/cloud/CloudDriveManager;Lcom/micloud/midrive/session/SyncSession;)V

    iget-object v1, p0, Lcom/android/cloud/CloudDriveManager$SyncSessionListener;->this$0:Lcom/android/cloud/CloudDriveManager;

    invoke-static {v1, v0}, Lcom/android/cloud/CloudDriveManager;->access$002(Lcom/android/cloud/CloudDriveManager;Lcom/micloud/midrive/session/SyncSession;)Lcom/micloud/midrive/session/SyncSession;

    return-void
.end method
