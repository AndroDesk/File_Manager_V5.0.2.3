.class Lcom/android/fileexplorer/service/CleanMasterSDK$1;
.super Ljava/lang/Object;
.source "CleanMasterSDK.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/CleanMasterSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/CleanMasterSDK;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/CleanMasterSDK;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/service/CleanMasterSDK$1;->this$0:Lcom/android/fileexplorer/service/CleanMasterSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/service/CleanMasterSDK$1;->this$0:Lcom/android/fileexplorer/service/CleanMasterSDK;

    invoke-static {p1}, Lcom/android/fileexplorer/service/CleanMasterSDK;->access$000(Lcom/android/fileexplorer/service/CleanMasterSDK;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "service connected"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/service/CleanMasterSDK$1;->this$0:Lcom/android/fileexplorer/service/CleanMasterSDK;

    invoke-static {p2}, Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/service/CleanMasterSDK;->access$102(Lcom/android/fileexplorer/service/CleanMasterSDK;Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;)Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/service/CleanMasterSDK$1;->this$0:Lcom/android/fileexplorer/service/CleanMasterSDK;

    invoke-static {p1}, Lcom/android/fileexplorer/service/CleanMasterSDK;->access$000(Lcom/android/fileexplorer/service/CleanMasterSDK;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "service disconnected"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/service/CleanMasterSDK$1;->this$0:Lcom/android/fileexplorer/service/CleanMasterSDK;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/service/CleanMasterSDK;->access$102(Lcom/android/fileexplorer/service/CleanMasterSDK;Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;)Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryManager;

    return-void
.end method
