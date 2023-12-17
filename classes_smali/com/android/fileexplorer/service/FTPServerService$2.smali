.class Lcom/android/fileexplorer/service/FTPServerService$2;
.super Ljava/lang/Object;
.source "FTPServerService.java"

# interfaces
.implements Lcom/android/fileexplorer/listener/permission/PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/service/FTPServerService;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/FTPServerService;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/service/FTPServerService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/FTPServerService$2;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPermissionGranted()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService$2;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/service/FTPServerService;->access$000(Lcom/android/fileexplorer/service/FTPServerService;)V

    .line 6
    return-void
.end method

.method public onPermissionReject(Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "onPermissionReject: "

    .line 3
    const-string v1, "FTPServerService"

    .line 5
    invoke-static {v0, p1, v1}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public shouldShowRational(Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "shouldShowRational: "

    .line 3
    const-string v1, "FTPServerService"

    .line 5
    invoke-static {v0, p1, v1}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method
